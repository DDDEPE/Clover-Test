<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>분개장</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	html{height:calc(100% - 67px);min-height:unset;}
    	#masterGrid{height:580px;}
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
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value=""/>
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
               <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_INVOICE_DATE" name="FR_INVOICE_DATE">

               <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_INVOICE_DATE" name="TO_INVOICE_DATE">
               <label class="label_inp0_v2 blue" for="">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="INVOICE_STATE_CODE_DIV" id="INVOICE_STATE_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="INVOICE_STATE_CODE_DIV">${fn:escapeXml(emax:word("전표상태"))}</label>
				<input type="hidden" id="INVOICE_STATE_CODE" name="INVOICE_STATE_CODE" value="" /> 
				<input type="text" name="INVOICE_STATE_CODE_DIV_TEXT" id="INVOICE_STATE_CODE_DIV_TEXT" value="" data-prev-val=""
					class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_INVOICE_TYPE_ID" name="FI_BI_INVOICE_TYPE_ID">
                <input class="form_pop1_v2" type="text" id="INVOICE_TYPE_NAME" name="INVOICE_TYPE_NAME" data-pop="true">
                <button type="button" class="form_popup_btn_v2" data-pop="true" data-id="INVOICE_TYPE_NAME"></button>
                <label class="label_inp0_v2" for="INVOICE_TYPE_NAME">${fn:escapeXml(emax:word("유형"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CV_NO" name="CV_NO">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="CV_NO"></button>
                <input class="form_inp1_v2 fw50" type="text" id="CV_NAME" name="CV_NAME" readonly>
                <label class="label_inp0_v2" for="CV_NO">${fn:escapeXml(emax:word("거래처"))}</label>
            </div>
			<div class="form_object w283"></div>
            <div class="form_object w283 form_object_from">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="FR_ACCOUNT_CODE" name="FR_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="FR_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="FR_ACCOUNT_NAME" name="FR_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="FR_ACCOUNT_CODE">${fn:escapeXml(emax:word("계정구간"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="TO_ACCOUNT_CODE" name="TO_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="TO_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="TO_ACCOUNT_NAME" name="TO_ACCOUNT_NAME" readonly>
            </div>
            <div class="form_object w283">
                <input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
                <input class="form_pop4_v2" type="text" data-pop="true" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" >
                <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_PROJECT_NAME"></button>
                <label class="label_inp0_v2" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" name="FI_BI_COST_CENTER_ID" id="FI_BI_COST_CENTER_ID">
                <input class="form_pop4_v2" type="text" data-pop="true" id="FI_BI_COST_CENTER_NAME" name="FI_BI_COST_CENTER_NAME" >
                <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_BI_COST_CENTER_NAME"></button>
                <label class="label_inp0_v2" for="FI_BI_COST_CENTER_NAME">${fn:escapeXml(emax:word("코스트센터"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area">
		<div class="w100 grid_inner_wrap0" id="masterGrid"></div>    	
    </div>
</div>
</body>
