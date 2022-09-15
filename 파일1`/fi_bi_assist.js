var masterGrid;
var masterGridDP;

var masterGridSelectedRowId = -1;

$(document).ready(function () {
    //grid Setting
    f_set_masterGrid();
    //combo Setting
});

/*****************************************************************************************************************************/
//
/* 												Grid Set																	 */
//
/*****************************************************************************************************************************/
var f_set_masterGrid = function () {
    var grid_opt                                 = {
        grid_id        : 'masterGrid',
//        grid_height    : $(".content_area_expend").height() - 136,
        add_contextMenu: {}
    }
    // 다국어 처리를 위해 개별처리한다
    grid_opt.add_contextMenu[gf_word('팝업 미리보기')] = f_popup_review;

    masterGrid   = gf_gridInit(grid_opt);
    masterGridDP = masterGrid.getDataSource();
    
    masterGrid.setDisplayOptions({
		fitStyle : 'even'
	});
    
    masterGridDP.onRowInserted = function (provider, row) {
        provider.setValue(row, 'COMM_CORPORATION_ID', gv_login_corporation_id);
        provider.setValue(row, 'USE_YN', '1');
    };

    masterGrid.onCellButtonClicked = function (grid, index, column) {
        if (grid.isItemEditing()) { //onEditRowChanged 이벤트와 겹치는 경우 막기
            grid.commit();
            return;
        }
        ;

        var param = paramReturn({grid: grid, index: index.itemIndex});

        for (var i = 0; i < masterColumn.length; i++) {
            masterColumn[i].param = param[masterColumn[i].colId];
            if (column.fieldName === masterColumn[i].colId) {
                gf_cellButtonClicked(grid, index.itemIndex, masterColumn[i], masterColumn[i].param.searchCondition);	// 복사&붙여넣기 event 발생 시 popup을 띄워주는 함수
            }
            ;
        }
        ;
    };
    
    
    // 그리드 셀에 붙여넣기 했음을 알리는 콜백
    masterGrid.onEditRowPasted = function (grid, itemIndex) {
        masterGrid.commit();
        var param = paramReturn({grid: grid, index: itemIndex});

        for (var i = 0; i < masterColumn.length; i++) {
            masterColumn[i].param = param[masterColumn[i].colId];
            gf_pastePopup(grid, itemIndex, masterColumn[i]); // 복사&붙여넣기 event 발생 시 popup을 띄워주는 함수
        }
        ;
    };

    // 사용자 입력으로 변경된 값이 행에 반영되었음을 알리는 콜백
    masterGrid.onEditRowChanged = function (grid, itemIndex, dataRow, field, oldValue, newValue) {
        masterGrid.commit();
        var FName = masterGridDP.getFieldName(field);

        var param = paramReturn({grid: grid, index: itemIndex});

        for (var i = 0; i < masterColumn.length; i++) {
            if (FName == masterColumn[i].colId) {
                masterColumn[i].param = param[masterColumn[i].colId];
                gf_editCellPopup(grid, itemIndex, field, masterColumn[i], oldValue, newValue); // 복사&붙여넣기 event 발생 시 popup을 띄워주는 함수
            }
        }
        ;
    };
    

}

/*****************************************************************************************************************************/
//
/* 												저장																			 */
//
/*****************************************************************************************************************************/
var f_save = function () {
    masterGrid.commit();

    var validation_list = []; //필수값 체크할 행 설정
    var rows            = masterGridDP.getAllStateRows();

    if (rows.updated.length > 0) {
        for (var i = 0; i < rows.updated.length; i++) {
            validation_list.push(rows.updated[i]);
        }
    }

    if (rows.created.length > 0) {
        for (var i = 0; i < rows.created.length; i++) {
            validation_list.push(rows.created[i]);
        }
    }

    var param = {
        gridView             : masterGrid,
        TABLE_NAME           : 'FI_BI_ASSIST',
        callback             : function () {
            f_search();
        },
        removeColumns        : ['ACCOUNT_CODE', 'ACCOUNT_NAME'],
        f_validation         : f_validation,
        validation_list      : validation_list,
        validation_clear_list: ['ACCOUNT_CODE', 'DRCR_CODE', 'TABLE_NAME', 'FORM_CODE'],
    };

    gf_gridSave(param);
}

var f_validation = function () {
    //1. 계정과목
    var validations    = [{
        criteria: "value['ACCOUNT_CODE'] is not empty",
        message : gf_msg('grid_validation_check'),
        mode    : "always",
        level   : "error"

    }];
    var column         = masterGrid.columnByName("ACCOUNT_CODE");
    column.validations = validations;
    masterGrid.setColumn(column);

    //2. 차대구분코드
    validations        = [{
        criteria: "value['DRCR_CODE'] is not empty",
        message : gf_msg('grid_validation_check'),
        mode    : "always",
        level   : "error"

    }];
    var column         = masterGrid.columnByName("DRCR_CODE");
    column.validations = validations;
    masterGrid.setColumn(column);

    //3. 테이블
    validations        = [{
        criteria: "value['TABLE_NAME'] is not empty",
        message : gf_msg('grid_validation_check'),
        mode    : "always",
        level   : "error"

    }];
    var column         = masterGrid.columnByName("TABLE_NAME");
    column.validations = validations;
    masterGrid.setColumn(column);

    //4. 폼
    validations        = [{
        criteria: "value['FORM_CODE'] is not empty",
        message : gf_msg('grid_validation_check'),
        mode    : "always",
        level   : "error"

    }];
    var column         = masterGrid.columnByName("FORM_CODE");
    column.validations = validations;
    masterGrid.setColumn(column);
}

/*****************************************************************************************************************************/
//
/* 												조회																			 */
//
/*****************************************************************************************************************************/
var f_search = function () {
// 		masterGrid.cancel();

    gf_gridSearch({
        gridView: masterGrid,
        param   : {
            queryId: 'fi.S_FI_BI_ASSIST'
        }
    });
}

/*****************************************************************************************************************************/
//
/* 												팝업																			 */
//
/*****************************************************************************************************************************/


var masterColumn = [{
    colId         : 'ACCOUNT_CODE'
    , popup_code  : 'popup_fi_bi_account'
    , v_title     : gf_word("계정 코드")
    , param       : {searchCondition: ''}
    , removeColumn: ['ACCOUNT_NAME', 'ACCOUNT_ID']
}];

var paramReturn = function (object) {
    var param;
    if (object.grid === masterGrid) {
        param = {
            ACCOUNT_CODE: {
                searchCondition: masterGrid.getValue(object.index, 'ACCOUNT_CODE'),
            }
        }
    }

    return param;
};


//공통팝업
var f_comm_popup = function (p_column, p_popup_code, p_popup_param) {
    popup      = p_column; //컬렴명
    popup_code = p_popup_code;

    var popup_param = {
        popup_code        : p_popup_code,
        param             : p_popup_param.v_param,
        popup_before_close: f_popup_before_close,
        popup_cancel_close: p_popup_param.v_popup_cancel_close,
        title             : p_popup_param.v_title
    }

    gf_comm_popup(popup_param);

    $('#popup_' + popup_code + '_iframe').load(function () {
        $(this).contents().find('#searchField').val(p_popup_param.v_value);
        $(this)[0].contentWindow.f_search();
    });
}

//팝업모달 확인버튼 클릭시
var f_popup_before_close = function () {
    // 팝업호출
    var grid = $('#popup_' + popup_code + '_iframe')[0].contentWindow.masterGrid;
    $('#popup_' + popup_code + '_iframe')[0].contentWindow.f_setRowData(grid, 0);
}

//팝업 선택 후 콜백함수
var f_popup_callback = function (data, index) {
    if (popup == 'ACCOUNT_CODE') {
        masterGrid.commit();

        masterGridDP.setValue(index, 'FI_BI_ACCOUNT_ID', data.FI_BI_ACCOUNT_ID);
        masterGridDP.setValue(index, 'ACCOUNT_CODE', data.ACCOUNT_CODE);
        masterGridDP.setValue(index, 'ACCOUNT_NAME', data.ACCOUNT_NAME);
    }

    //정렬적용시 데이터 입력과 함께 재정렬되므로 바뀐위치로 focus.
    var current     = {};
    current.dataRow = masterGridSelectedRowId;
    masterGrid.setCurrent(current);
}

var v_data = gf_getComboData({
    popup_code: 'comm_mu_code',
    param     : {code_master: 'fi010'}
});

var f_popup_review = function () {
    var v_data = gf_getComboData({
        popup_code: 'comm_mu_code',
        param     : {
            code_master: 'fi010'
        }
    });

    var v_form_code_attr = gf_getComboValues(v_data, masterGrid.getValue(masterGrid.getCurrent().itemIndex, 'FORM_CODE'));
    var popup_code       = v_form_code_attr.ATTRIBUTE1;

    var popup_param = {
        popup_code: popup_code,
        param     : {
            comm_corporation_id: gv_login_corporation_id
        },
        title     : v_form_code_attr.CODE_NAME
    }
    gf_modal_popup(popup_param);

    $('#popup_' + popup_code).dialog('option', 'buttons', [{
        text   : gf_word('닫기'),
        icon   : "ui-icon-heart",
        click  : function () {
            $(this).dialog("destroy").remove();
            $('.popup_mask').remove();
        },
        'class': 'modal_footer_btn0',
    }]);
}