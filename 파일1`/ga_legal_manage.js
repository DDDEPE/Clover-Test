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

//첨부파일
var fileData       = [];
var fileDeleteData = [];
var formData       = {};

$(document).ready(function () {

    //grid Setting
    f_set_masterGrid();
    f_set_detailGrid();

    //combo Setting
    f_formCombo();


    //첨부파일
    $('#attachedFileBtn').on('click', function () {
        $('#attachedFile').click();
    });
    $("#attachedFile").change(function () {
        fileAttachment();
    })
    //드래그 앤 드랍
    $("#attachedFileArea").on("dragenter", function (e) {
        e.preventDefault();
        e.stopPropagation();
    }).on("dragover", function (e) {
        e.preventDefault();
        e.stopPropagation();
        $(this).css({"background-color": "#FFD8D8"});

    }).on("dragleave", function (e) {
        e.preventDefault();
        e.stopPropagation();
        $(this).css({"background-color": ""});

    }).on("drop", function (e) {
        e.preventDefault();
        e.stopPropagation();
        $(this).css({"background-color": ""});

        e.dataTransfer = e.originalEvent.dataTransfer;
        var files      = e.target.files || e.dataTransfer.files;
        fileAttachment(files);

    });
});

/*****************************************************************************************************************************/
//
/* 												Grid Set																	 */
//
/*****************************************************************************************************************************/
var f_set_masterGrid = function () {
    var grid_opt = {
        grid_id    : 'masterGrid',
        no_disable : true,
        contextMenu: 'view',
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
        f_search_file(index);
        f_search_detailGrid();
    };

    //전표번호 더블클릭 시 전표등록 화면 조회
    masterGrid.onCellDblClicked = function (grid, clickData) {
        parent.gv_ea_info['MENU_LIST'].push({
            EA_DOC_ID       : grid.getValue(clickData.dataRow, 'EA_DOC_ID')
            , DOC_CODE      : 'ea002068'
            , MENU_CODE     : 'ea_legal_commission'
            , BACK_MENU_CODE: 'ga_legal_manage'
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
        , contextMenu: 'save'
    }


    detailGrid   = gf_gridInit(grid_opt);
    detailGridDP = detailGrid.getDataSource();

    detailGrid.setDisplayOptions({fitStyle: "even"});
    detailGrid.displayOptions.minRowHeight = 100;

    detailGridDP.onRowInserting = function (provider, row) {
        if (masterGridSelectedRowId == -1) {
            gf_toast(gf_msg('select_request'));
            return false;
        }
        return true;
    };

    detailGridDP.onRowInserted = function (provider, row) {
        var index = masterGrid.getItemsOfRows([masterGridSelectedRowId])[0];
        provider.setValue(row, 'HR_EMPLOYEE_MASTER_ID', masterGrid.getValue(index, 'HR_EMPLOYEE_MASTER_ID'));
        provider.setValue(row, 'EA_DOC_ID', masterGrid.getValue(index, 'EA_DOC_ID'));
        provider.setValue(row, 'REQUEST_YN', '1');
    };
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

                        var fileDelBtn = $('<span class="close_icon tq" onclick="fileDelete(this,' + file.id + ',\'DB\', \'' + file.RANDOM_KEY + '\');"><img src="/resources/images/sign_step_delete.png"></span>');

                        var fileLi = $('<li></li>').addClass('sign_file')
                            .append(fileHref)
                            .append(fileSizeSpan)
                            .append(fileDelBtn)
                        $('#attachedFileArea').append(fileLi);

                    }, 1);

                }(data[i]));

            }

        }
    });

}
/*****************************************************************************************************************************/
//
/* 												저장																		 */
//
/*****************************************************************************************************************************/
var f_save = function () {
    masterGrid.commit();
    var index = masterGrid.getItemsOfRows([masterGridSelectedRowId])[0];
    for (var i = 0; i < fileData.length; i++) {
        var limit = fileData[i].size;
        if (limit > 209715200) {
            gf_toast(gf_msg("attached_files", {
                param: '200'
            }));
            return false;
        }
    }
    var allFiles    = new FormData();
    var masterParam = {
        gridView       : masterGrid
        , TABLE_NAME   : 'EA_LEGAL_COMMISSION'
        , removeColumns: ['REVIEW_REQUEST_DATE', 'REQUEST_DATE', 'DOC_NO', 'DEPT_NAME', 'EMP_NAME'
            , 'POSITION_NAME', 'REQUEST_CODE', 'MAIN_CONTENTS', 'REQUEST_CONTENTS', 'EA_DOC_ID', 'HR_EMPLOYEE_MASTER_ID']
    };

    var detailParam = {
        gridView       : detailGrid
        , TABLE_NAME   : 'EA_LEGAL_COMMISSION'
        , removeColumns: ['SEQ']
    };

    //첨부파일(저장)
    $.each(fileData, function (idx, item) {
        allFiles.append('attachedFile', item);
    });
    //첨부파일(삭제)
    allFiles.set('fileDelete', JSON.stringify(fileDeleteData));

    var formDataMap = {
        masterGrid         : gf_makeGridData(masterParam)
        , detailGrid       : gf_makeGridData(detailParam)
        , 'allAttachedFile': allFiles
    };

    var saveOrder = [
        {
            'saveName': 'masterGrid'
        },
        {
            'saveName': 'detailGrid'
        }, {
            'saveName': 'allAttachedFile', 'getParam': {
                'MODULE_CODE'    : 'EA'
                , 'CATEGORY_CODE': 'ea_legal_commission'
                , 'GROUP_ID'     : masterGrid.getValue(index, 'EA_DOC_ID')
            }
        }
    ];

    gf_allSave(saveOrder, formDataMap, f_search);
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
            REQUEST_EMP_NO   : {
                searchCondition: object.value
            },
            REQUEST_DEPT_NAME: {
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
/** ************************************************************************************************************************** */
/**
 /* file */
/**
 /** ************************************************************************************************************************** */
var fileAttachment = function (dragDrop) {

    if (masterGridSelectedRowId == -1) {
        gf_toast(gf_msg('grid_select_first'));
        return false;
    }

    var file_names = dragDrop ? dragDrop : $("#attachedFile").prop("files");

    for (var i = 0; i < file_names.length; i++) {

        (function (file) {

            setTimeout(function () {

                //파일확장자
                var fileExt = file.name.substring(file.name.lastIndexOf('.'), file.name.length).toLowerCase();

                //폴더는 업로드불가(확장자가 없음)
                if (file.name.lastIndexOf('.') == -1) {
                    //폴더는 업로드할수 없습니다.
                    gf_toast(gf_msg('file_upload_error'));
                    return false;
                }
                //업로드불가 파일확장자
                else if (fileExt == '') {
                    return false;
                }

                var fileId = new Date().getTime();

                file.id = fileId;

                var fileNameSpan = $('<span></span>').text(file.name);

                var fSize = file.size;
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

                var fileDelBtn = $('<span class="close_icon" onclick="fileDelete(this,' + file.id + ',\'BROWSER\');"><img src="/resources/images/sign_step_delete.png"></span>');

                var fileTr = $('<li></li>').addClass('sign_file')
                    .append(fileNameSpan)
                    .append(fileSizeSpan)
                    .append(fileDelBtn);
                $('#attachedFileArea').append(fileTr);

                fileData.push(file);
            }, 1);

        }(file_names[i]));

    }

}
//파일삭제
var fileDelete     = function (me, id, type, randomKey) {
    $(me).closest('li').remove();
    //DB에 저장된 데이터
    if (type == 'DB') {
        fileDeleteData.push({
            COMM_FILE_ID: id,
            RANDOM_KEY  : randomKey
        });
    }
    //화면에만 있는데이터
    else {
        fileData = fileData.filter((x, idx, array) => {
            return x.id != id
        });
    }
}
