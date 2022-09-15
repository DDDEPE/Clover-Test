var masterGrid;
var masterGridDP;
var detailGrid;
var detailGridDP;

//Popup - form 변수
var popup;					// column name

//Popup - grid 변수
var validationList;			// 붙여넣기 시 validation clear list 담는 변수

//Popup 공통 변수
var popup_code;				// 팝업 띄울 팝업 및 콤보관리의 코드명 변수

var masterGridSelectedRowId = -1;


$(document).ready(function () {

    $("#REQUEST_DEPT_CODE").val(gv_emp_info.DEPT_CODE);
    $("#REQUEST_DEPT_NAME").val(gv_emp_info.DEPT_NAME);
    $("#REQUEST_HR_EMPLOYEE_MASTER_ID").val(gv_emp_info.HR_EMPLOYEE_MASTER_ID);
    $("#REQUEST_EMP_NO").val(gv_emp_info.EMP_NO);
    $("#REQUEST_EMP_NAME").val(gv_emp_info.EMP_NAME);
    //grid Setting
    f_set_masterGrid();
    f_set_detailGrid();

    //combo Setting
    f_formCombo();

    if (gv_emp_info.GA_LEGAL_SEARCH == '1') {
        $('button[name=BUTTON_EMP_NO]').show();
    } else {
        $('#REQUEST_EMP_NO').attr('readonly', 'readonly');
        $('button[name=BUTTON_EMP_NO]').hide();
    }
});

/*****************************************************************************************************************************/
//
/* 												Grid Set																	 */
//
/*****************************************************************************************************************************/
var f_set_masterGrid = function () {
    var grid_opt = {
        grid_id      : 'masterGrid'
        , no_disable : true
        , contextMenu: 'view'
    }


    masterGrid   = gf_gridInit(grid_opt);
    masterGridDP = masterGrid.getDataSource();

    masterGrid.setDisplayOptions({fitStyle: "even"});

    masterGrid.displayOptions.minRowHeight = 125;

    masterGrid.onCurrentRowChanged = function (grid, oldRow, newRow) {
        var index = grid.getCurrent().dataRow;
        if (index == -1) {
            masterGridSelectedRowId = -1;
            return false;
        }
        masterGridSelectedRowId = index;
        detailGridDP.clearRows();
        f_search_detailGrid();
        f_search_file(index);

    };

    //전표번호 더블클릭 시 전표등록 화면 조회
    masterGrid.onCellDblClicked = function (grid, clickData) {
        parent.gv_ea_info['MENU_LIST'].push({
            EA_DOC_ID       : grid.getValue(clickData.dataRow, 'EA_DOC_ID')
            , DOC_CODE      : 'ea002068'
            , MENU_CODE     : 'ea_legal_commission'
            , BACK_MENU_CODE: 'ga_legal_list'
            , ORDER         : '1'
        });
        parent.gf_addPageIframe('ea_legal_commission', null, 'ea002068', {
            EA_DOC_ID: grid.getValue(clickData.dataRow, 'EA_DOC_ID')
        });

    }

}

var f_set_detailGrid = function () {
    var grid_opt = {
        grid_id      : 'detailGrid'
        , no_disable : true
        , contextMenu: 'view'
    }


    detailGrid   = gf_gridInit(grid_opt);
    detailGridDP = detailGrid.getDataSource();

    detailGrid.setDisplayOptions({fitStyle: "even"});
    detailGrid.displayOptions.minRowHeight = 100;

}
/*****************************************************************************************************************************/
//
/* 												Combo Set																	 */
//
/*****************************************************************************************************************************/
var f_formCombo = function () {
    gf_formCombo({
        popup_code: 'comm_mu_code'
        , tag_id  : 'REQUEST_CODE_DIV'
        , param   : {
            code_master: 'ga600'
        }
        , empty   : true
    });
}
/*****************************************************************************************************************************/
//
/* 												팝업																			 */
//
/*****************************************************************************************************************************/
var FormColumn = [{
    colId     : 'S_DEPT_CODE',
    popup_code: 'pop_dept',
    v_title   : gf_word('부서')
}, {
    colId     : 'S_EMP_NO',
    popup_code: 'pop_employee',
    v_title   : gf_word('사원')
}];


/* 폼 팝업 이벤트에서 param 변수를 설정하는 함수 */
function paramReturn(object) {
    var param;

    if (object.dataset.pop == 'true') {
        param = {
            REQUEST_EMP_NO: {
                searchCondition: object.value
            }
        }
    }
    return param;
}

//팝업 선택후 콜백함수
var f_popup_callback = function (data, index) {
    if (popup == 'F_S_DEPT_CODE') {
        $('#S_DEPT_CODE').val(data.DEPT_CODE);
        $('#S_DEPT_NAME').val(data.DEPT_NAME);
        f_search_masterGrid();
    } else if (popup == 'F_S_EMP_NO') {
        $('#HR_EMPLOYEE_MASTER_ID').val(data.HR_EMPLOYEE_MASTER_ID);
        $('#S_EMP_NO').val(data.EMP_NO);
        $('#EMP_TITLE').val(data.EMP_TITLE);
        f_search_masterGrid();
    }
};
/*****************************************************************************************************************************/
//
/* 												조회																			 */
//
/*****************************************************************************************************************************/
var f_search = function () {
    f_search_masterGrid();
}

var f_search_masterGrid = function () {
    gf_gridSearch({
        gridView: masterGrid,
        param   : {
            queryId         : 'ga.S_GA_LEGAL_COMMISSION'
            , FROM_DATE     : $('#S_START_FROM').val().replaceAll('-', '')
            , TO_DATE       : $('#S_START_TO').val().replaceAll('-', '')
            , DEPT_NAME     : $('#REQUEST_DEPT_NAME').val()
            , EMP_NAME      : $('#REQUEST_EMP_NAME').val()
            , REQUEST_CODE  : $('#REQUEST_CODE').val()
            , REQUEST_STATUS: $("#REQUEST_STATUS").val()
        },
        callback: function () {
        }
    });
}

var f_search_detailGrid = function () {
    var index = masterGrid.getItemsOfRows([masterGridSelectedRowId])[0];
    gf_gridSearch({
        gridView: detailGrid,
        param   : {
            queryId                : 'ga.S_EA_LEGAL_COMMISSION_REQUEST'
            , HR_EMPLOYEE_MASTER_ID: masterGrid.getValue(index, 'HR_EMPLOYEE_MASTER_ID')
            , EA_DOC_ID            : masterGrid.getValue(index, 'EA_DOC_ID')
        },
        callback: function () {
        }
    });
}

var f_search_file = function (id) {
    id = masterGrid.getItemsOfRows([masterGridSelectedRowId])[0];
    gf_getData({
        data    : {
            queryId      : 'com.S_COMM_FILE',
            MODULE_CODE  : 'EA',
            CATEGORY_CODE: 'ea_legal_commission',
            GROUP_ID     : masterGrid.getValue(id, 'EA_DOC_ID')
        },
        callback: function (data) {

            //첨부파일영역 초기화
            $('#attachedFileArea li').remove();
            fileData       = [];
            fileDeleteData = [];

            for (var i = 0; i < data.length; i++) {

                (function (file) {

                    setTimeout(function () {

                        file.id = file.COMM_FILE_ID;

                        var downLink = '/fileDownload?COMM_FILE_ID=' + file.COMM_FILE_ID + '&RANDOM_KEY=' + file.RANDOM_KEY;
                        var fileHref = $('<a href="' + downLink + '"></a>').text(file.FILE_NAME);

                        var fSize = file.FILE_SIZE;
                        if ((fSize / 1024) < 1) {
                            fSize = fSize + 'byte';
                        } else if ((fSize / 1024 / 1024) < 1) {
                            fSize = (fSize / 1024).toFixed(1) + 'KB';
                        } else if ((fSize / 1024 / 1024 / 1024) < 1) {
                            fSize = (fSize / 1024 / 1024).toFixed(1) + 'MB';
                        } else if ((fSize / 1024 / 1024 / 1024 / 1024) < 1) {
                            fSize = (fSize / 1024 / 1024 / 1024).toFixed(1) + 'GB';
                        }
                        var fileSizeSpan = $('<span></span>').addClass('sign_file_volume').text('(' + fSize + ')');

                        var fileLi = $('<li></li>').addClass('sign_file')
                            .append(fileHref)
                            .append(fileSizeSpan)
                        $('#attachedFileArea').append(fileLi);

                    }, 1);

                }(data[i]));

            }

        }
    });

}