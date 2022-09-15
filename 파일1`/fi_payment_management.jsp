<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지급관리</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
		html{height:calc(100% - 67px); min-height: unset;}
		#masterGrid{width:100%;height:580px;}
	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("지급관리"))}</h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
            <div class="form_object w283 drop_box" name="FI_DIVISION_ID_DIV" id="FI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" name="FI_DIVISION_ID" id="FI_DIVISION_ID">
                <input type="text" name="FI_DIVISION_ID_TEXT" id="FI_DIVISION_ID_DIV_TEXT" value="" data-vldt="notNull" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="INVOICE_DATE_FROM" onchange="javascript:f_checkDate(this);">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="INVOICE_DATE_TO" onchange="javascript:f_checkDate(this);">
                <label class="label_inp0_v2" for="INVOICE_DATE_FROM">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="COMM_CV_CODE" name="COMM_CV_CODE">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="COMM_CV_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="COMM_CV_NAME" name="COMM_CV_NAME" readonly>
                <label class="label_inp0_v2" for="COMM_CV_NAME">${fn:escapeXml(emax:word("거래처코드"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
                <input class="form_pop1_v2" type="text" data-pop="true" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" data-vldt="notNull">
                <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_PROJECT_NAME"></button>
                <label class="label_inp0_v2 blue" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_ACCOUNT_ID" name="FI_BI_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="FI_BI_ACCOUNT_CODE" name="FI_BI_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="FI_BI_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="FI_BI_ACCOUNT_NAME" name="FI_BI_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="FI_BI_ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" name="DOC_NO" id="DOC_NO">
                <label class="label_inp0_v2" for="DOC_NO">${fn:escapeXml(emax:word("문서번호"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="STATUS_CODE_DIV" id="STATUS_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("상태"))}</label>
                <input type="hidden" name="STATUS_CODE" id="STATUS_CODE">
                <input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="PAYMENT_DATE_FROM" name="PAYMENT_DATE_FROM" onchange="javascript:f_checkDate(this);">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="PAYMENT_DATE_TO" name="PAYMENT_DATE_TO" onchange="javascript:f_checkDate(this);">
                <label class="label_inp0_v2" for="PAYMENT_DATE_FROM">${fn:escapeXml(emax:word("지급일자"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" name="INVOICE_NO" id="INVOICE_NO">
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" name="PAY_INVOICE_NO" id="PAY_INVOICE_NO">
                <label class="label_inp0_v2" for="PAY_INVOICE_NO">${fn:escapeXml(emax:word("지급전표번호"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" name="INVOICE_NO" id="DESCRIPTION">
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("적요"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="TRANSFER_STATUS_DIV" id="TRANSFER_STATUS_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="TRANSFER_STATUS_DIV">${fn:escapeXml(emax:word("처리결과"))}</label>
                <input type="hidden" name="TRANSFER_STATUS" id="TRANSFER_STATUS">
                <input type="text" name="TRANSFER_STATUS_DIV_TEXT" id="TRANSFER_STATUS_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
        </div>
    </div>
    <div class="contents_area">
        <div class="grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
</html>