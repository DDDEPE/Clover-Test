<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>"전표 API"</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	html{height:calc(100% - 67px);min-height:unset;}
    	#masterGrid{height:275px;}
    	#detailGrid{height:275px;}
    </style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
			<div class="form_object w283 drop_box" name="FI_DIVISION_ID_DIV" id="FI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" name="FI_DIVISION_ID" id="FI_DIVISION_ID" onchange="javascript:f_formCombo(this.id);">
                <input type="text" name="FI_DIVISION_ID_TEXT" id="FI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" name="FI_BI_INVOICE_SOURCE_ID_DIV" id="FI_BI_INVOICE_SOURCE_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="FI_BI_INVOICE_SOURCE_ID_DIV">${fn:escapeXml(emax:word("출처"))}</label>
                <input type="hidden" name="FI_BI_INVOICE_SOURCE_ID" id="FI_BI_INVOICE_SOURCE_ID" onchange="javascript:f_formCombo(this.id);">
				<input type="text" name="FI_BI_INVOICE_SOURCE_ID_DIV_TEXT" id="FI_BI_INVOICE_SOURCE_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="INVOICE_DATE_FROM" onchange="javascript:f_checkDate(this);">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="INVOICE_DATE_TO" onchange="javascript:f_checkDate(this);">
                <label class="label_inp0_v2" for="INVOICE_DATE_FROM">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="STATUS_CODE_DIV" id="STATUS_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("상태"))}</label>
                <input type="hidden" name="STATUS_CODE" id="STATUS_CODE">
                <input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" name="FI_BI_INVOICE_TYPE_ID_DIV" id="FI_BI_INVOICE_TYPE_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_BI_INVOICE_TYPE_ID_DIV">${fn:escapeXml(emax:word("유형"))}</label>
                <input type="hidden" name="FI_BI_INVOICE_TYPE_ID" id="FI_BI_INVOICE_TYPE_ID">
                <input type="text" name="FI_BI_INVOICE_TYPE_ID_DIV_TEXT" id="FI_BI_INVOICE_TYPE_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="CONFIRM_DATE_FROM" name="CONFIRM_DATE_FROM" onchange="javascript:f_checkDate(this);">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="CONFIRM_DATE_TO" name="CONFIRM_DATE_TO" onchange="javascript:f_checkDate(this);">
                <label class="label_inp0_v2" for="CONFIRM_DATE_FROM">${fn:escapeXml(emax:word("확정일자"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" name="RELATION_NO" id="RELATION_NO">
                <label class="label_inp0_v2" for="RELATION_NO">${fn:escapeXml(emax:word("연관번호"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" name="DOCUMENT_NO" id="DOCUMENT_NO">
                <label class="label_inp0_v2" for="DOCUMENT_NO">${fn:escapeXml(emax:word("문서번호"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" name="INVOICE_NO" id="INVOICE_NO">
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" name="COMM_CV_ID" id="COMM_CV_ID">
                <input class="form_pop4_v2 fw50" type="text" id="COMM_CV_CODE" name="COMM_CV_CODE" onchange="javascript:f_removeTranValue(this);">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="COMM_CV_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" name="COMM_CV_NAME" id="COMM_CV_NAME" readonly>
                <label class="label_inp0_v2" for="COMM_CV_CODE">${fn:escapeXml(emax:word("거래처"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
    	<div class="w100 grid_inner_wrap1" id="detailGrid" style="margin-top:4px;"></div>
    </div>
</div>
</body>
</html>