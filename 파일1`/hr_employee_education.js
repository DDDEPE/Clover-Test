var masterGrid;
var masterGridDP;

$(document).ready(function () {
    //Grid Setting
    f_set_masterGrid();

    f_formCombo({
        work_state_code: 'hr009010'
    });     
});

/** ************************************************************************************************************************** */

/**  GRID SETTING **/

/** ************************************************************************************************************************** */
var f_set_masterGrid = function () {
    var grid_opt = {
        grid_id: 'masterGrid'
    }
    masterGrid   = gf_gridInit(grid_opt);
    masterGridDP = masterGrid.getDataSource();

    masterGrid.onCellButtonClicked = function (grid, index, column) {
        if (grid.isItemEditing()) { //onEditRowChanged 이벤트와 겹치는 경우 막기
            grid.commit();
            return;
        };

        var param = paramReturn({grid: grid, index: index.itemIndex});

        for (var i = 0; i < masterColumn.length; i++) {
            masterColumn[i].param = param[masterColumn[i].colId];
            if (column.fieldName === masterColumn[i].colId) {
                gf_cellButtonClicked(grid, index.itemIndex, masterColumn[i], masterColumn[i].param.searchCondition);	// 복사&붙여넣기 event 발생 시 popup을 띄워주는 함수
            };
        };
    };

    // 붙여넣기 시작 위치를 지정한다. 행으로 붙여넣기 시 맨 처음셀로 포커스 맞춰줌.
    masterGrid.setPasteOptions({selectionBase:true})

    // 그리드 셀에 붙여넣기 했음을 알리는 콜백
    masterGrid.onEditRowPasted = function (grid, itemIndex) {
        masterGrid.commit();
        var param = paramReturn({grid: grid, index: itemIndex});

        for (var i = 0; i < masterColumn.length; i++) {
            masterColumn[i].param = param[masterColumn[i].colId];
            gf_pastePopup(grid, itemIndex, masterColumn[i]); // 복사&붙여넣기 event 발생 시 popup을 띄워주는 함수
        };
    };

    // 사용자 입력으로 변경된 값이 행에 반영되었음을 알리는 콜백
    masterGrid.onEditRowChanged    = function (grid, itemIndex, dataRow, field, oldValue, newValue) {
        masterGrid.commit();
        var FName = masterGridDP.getFieldName(field);

        if (masterGrid.getValue(itemIndex, 'EMP_NO') === '') {
            masterGrid.setValue(itemIndex, 'EMP_NAME', '');
            masterGrid.setValue(itemIndex, 'DEPT_NAME', '');
            masterGrid.setValue(itemIndex, 'HR_EMPLOYEE_MASTER_ID', '');
        };
        var param = paramReturn({grid: grid, index: itemIndex});

        for (var i = 0; i < masterColumn.length; i++) {
            if(FName == masterColumn[i].colId){
                masterColumn[i].param = param[masterColumn[i].colId];
                gf_editCellPopup(grid, itemIndex, field, masterColumn[i], oldValue, newValue); // 복사&붙여넣기 event 발생 시 popup을 띄워주는 함수
            }
        };
    };
    masterGridDP.onRowInserted = function (provider, row) {
        provider.setValue(row, 'FIX_DATE', gf_getDate('today'));
        provider.setValue(row, 'FIX_CODE', 'my002100');
        provider.setValue(row, 'CREATE_TYPE_CODE', 'my001100');
        provider.setValue(row, 'SELECT_YN', '1');
    };
    
    masterGrid.columnByName("EMP_NO").mergeRule = {criteria: "value"};
    masterGrid.columnByName("EMP_NAME").mergeRule = {criteria: "value"};

    
};


/** ************************************************************************************************************************** */

/** SEARCH **/

/** ************************************************************************************************************************** */
var f_search = function () {
    f_search_masterGrid();
};

var f_search_masterGrid = function () {
    masterGrid.commit();

    gf_gridSearch({
        gridView: masterGrid,
        param   : {
            queryId      		: 'hr.S_HR_EMPLOYEE_EDU',
            v_dept_cd    		: $('#v_dept_cd').val(),
            v_emp_no     		: $('#HR_EMPLOYEE_MASTER_ID').val(),
            v_business_id		: $('#v_BUSINESS_ID').val(),
            v_work_state_code	: $("#S_WORK_STATE_CODE").val(), 
            v_nickname          : $('#S_NICKNAME').val(),   
        }
    });
};


/** ************************************************************************************************************************** */

/** SAVE **/

/** ************************************************************************************************************************** */
var f_save = function () {
    masterGrid.commit();
    var param = {
        gridView     : masterGrid,
        TABLE_NAME   : 'HR_EMPLOYEE_EDUCATION',
        callback     : f_search,
        removeColumns: ['EMP_NO', 'EMP_NAME', 'DEPT_NAME','NICKNAME','EMP_TITLE'],
    };
    gf_gridSave(param);
};


/** ************************************************************************************************************************** */

/** COMBO * */

/** ************************************************************************************************************************** */
var f_formCombo = function (param) {

    gf_formCombo({// 근무상태
        popup_code: 'comm_mu_code',
        tag_id    : 'S_WORK_STATE_CODE_DIV',
        default   : [param.work_state_code],
        param     : {code_master: 'hr009'},
        empty     : true
    });
}


/** ************************************************************************************************************************** */

/** POPUP **/

/** ************************************************************************************************************************** */
var FormColumn = [{
    colId     : 'v_dept_cd',
    popup_code: 'pop_dept',
    v_title   : gf_word('부서')
},{
    colId     : 'v_emp_no',
    popup_code: 'pop_employee',
    v_title   : gf_word('사원')
}];

var masterColumn = [{
    colId       : 'EMP_NO', removeColumn: ['EMP_NAME', 'DEPT_NAME', 'HR_EMPLOYEE_MASTER_ID']
    , popup_code: 'pop_employee'
    , EMP_NO    : 'EMP_NO'
    , EMP_NAME  : 'EMP_NAME'
    , DEPT_NAME : 'DEPT_NAME'
    , HR_EMPLOYEE_MASTER_ID : 'HR_EMPLOYEE_MASTER_ID'
    , v_title   : gf_word('pop_comm_user')
}];

var paramReturn = function (object) {
    var param;
    if (object.grid === masterGrid) {
        param = {
            EMP_NO: {
                searchCondition: masterGrid.getValue(object.index, 'EMP_NO')
            }
        }
    }else if(object.dataset.pop == 'true') {
        if(object.dataset.id =='v_dept_cd' ){
            param = {
                v_dept_cd: {
                    searchCondition : object.value,
                }
            }
        }else if(object.dataset.id =='v_emp_no'){
            param = {
                v_emp_no: {
                    searchCondition : object.value,
                }
            }
        }
    }
    return param;
};

var f_popup_callback = function (data,index) {
    if (popup == 'EMP_NO') {
        masterGrid.setValue(index, 'EMP_NO', data.EMP_NO);
        masterGrid.setValue(index, 'EMP_TITLE', data.EMP_TITLE);
        masterGrid.setValue(index, 'DEPT_NAME', data.DEPT_NAME);
        masterGrid.setValue(index, 'HR_EMPLOYEE_MASTER_ID', data.HR_EMPLOYEE_MASTER_ID);
    }else if(popup == 'F_v_dept_cd'){
        $('#v_dept_cd').val(data.DEPT_CODE);
        $('#v_dept_nm').val(data.DEPT_NAME);
    }else if(popup == 'F_v_emp_no'){
        $('#HR_EMPLOYEE_MASTER_ID').val(data.HR_EMPLOYEE_MASTER_ID);
        $('#v_emp_no').val(data.EMP_NO);
        $('#EMP_TITLE').val(data.EMP_TITLE);
    }
};