<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>자금계획 일괄 수정</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
    	html{height:calc(100% - 67px); min-height: unset;}
		#masterGrid{width:100%;height:580px;}
	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
			<div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
					<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
					<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" /> 
					<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" data-vldt="notNull" value="" data-prev-val=""
						class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
                <div class="form_object w283 datepicker">
                    <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_INVOICE_DATE" name="FR_INVOICE_DATE" data-vldt="notNull" onchange="javascript:f_checkDate(this);">

                    <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_INVOICE_DATE" name="TO_INVOICE_DATE" data-vldt="notNull" onchange="javascript:f_checkDate(this);">
                    <label class="label_inp0_v2 blue" for="FR_INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
                </div>
				<div class="form_object w283">
					<input type="hidden" name="COMM_CV_ID" id="COMM_CV_ID">
					<input class="form_pop4_v2 fw50" type="text" data-pop="true" id="COMM_CV_CODE" name="COMM_CV_CODE" >
					<button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="COMM_CV_CODE"></button>
					<input class="form_inp1_v2 fw50" type="text" name="COMM_CV_NAME" id="COMM_CV_NAME" readonly>
					<label class="label_inp0_v2" for="COMM_CV_CODE">${fn:escapeXml(emax:word("거래처"))}</label>
				</div>
				<div class="form_object w283">
					<input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
					<input class="form_pop4_v2" type="text" data-pop="true" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" >
					<button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_PROJECT_NAME"></button>
					<label class="label_inp0_v2" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
				</div>
				<div class="form_object w283 drop_box" name="BALANCE_STATE_DIV" id="BALANCE_STATE_DIV" style="position: relative;">
					<label class="label_inp0_v2 blue" for="BALANCE_STATE_DIV">${fn:escapeXml(emax:word("잔액여부"))}</label>
					<input type="hidden" id="BALANCE_STATE" name="BALANCE_STATE" value="" />
					<input type="text" name="BALANCE_STATE_DIV_TEXT" id="BALANCE_STATE_DIV_TEXT" value="" data-vldt="notNull" data-prev-val=""
						class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283"></div>
				<div class="form_object w283 datepicker">
                    <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_TERM_DATE" name="FR_TERM_DATE" onchange="javascript:f_checkDate(this);">

                    <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_TERM_DATE" name="TO_TERM_DATE" onchange="javascript:f_checkDate(this);">
                    <label class="label_inp0_v2" for="FR_TERM_DATE">${fn:escapeXml(emax:word("예정일자"))}</label>
                </div>
                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO">
                    <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
                </div>
				<div class="form_object w283">
					<input type="hidden" name="FI_BI_COST_CENTER_ID" id="FI_BI_COST_CENTER_ID">
					<input class="form_pop4_v2" type="text" data-pop="true" id="FI_BI_COST_CENTER_NAME" name="FI_BI_COST_CENTER_NAME" >
					<button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_BI_COST_CENTER_NAME"></button>
					<label class="label_inp0_v2" for="FI_BI_COST_CENTER_NAME">${fn:escapeXml(emax:word("cost center"))}</label>
				</div>
			    <div class="form_object w283">
			    	<input type="hidden" id="FI_BI_ACCOUNT_ID" name="FI_BI_ACCOUNT_ID">
			    	<input class="form_pop4_v2 fw50" type="text" data-pop="true" id="FI_BI_ACCOUNT_CODE" name="FI_BI_ACCOUNT_CODE">
			    	<button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="FI_BI_ACCOUNT_CODE"></button>
			    	<input class="form_inp1_v2 fw50" type="text" id="FI_BI_ACCOUNT_NAME" name="FI_BI_ACCOUNT_NAME" readonly>
			    	<label class="label_inp0_v2" for="FI_BI_ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
			    </div>
        </div>
    </div>
    <div class="contents_area">
        <div class="grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
</html>