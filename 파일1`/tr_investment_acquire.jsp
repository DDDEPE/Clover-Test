<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>투자유가증권 취득</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	html{height:calc(100% - 67px);min-height:unset;}
    	#masterGrid{height:580px;}
    </style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("투자유가증권 취득"))}</h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
            <div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID">
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" id="INVESTMENT_DIVISION_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="INVESTMENT_DIVISION_CODE_DIV">${fn:escapeXml(emax:word("투자유가증권분류"))}</label>
                <input type="hidden" id="INVESTMENT_DIVISION_CODE" name="INVESTMENT_DIVISION_CODE">
                <input type="text" name="INVESTMENT_DIVISION_CODE_DIV_TEXT" id="INVESTMENT_DIVISION_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>

            <div class="form_object w283">
                <input type="hidden" id="ACCOUNT_ID" name="ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" id="ACCOUNT_CODE" name="ACCOUNT_CODE" data-pop="true">
                <button class="form_popup_btn2_v2" data-id="ACCOUNT_CODE" name="ACCOUNT_CODE" data-pop="true"></button>
                <input class="form_inp1_v2 fw50" type="text" id="ACCOUNT_NAME" name="ISSUE_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="ACCOUNT_NAME">${fn:escapeXml(emax:word("계정과목"))}</label>
            </div>

            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="INVESTMENT_NAME"name="INVESTMENT_NAME">
                <label class="label_inp0_v2" for="INVESTMENT_NAME">${fn:escapeXml(emax:word("상품명"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INIT_DATE_FROM" name="INIT_DATE_FROM">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INIT_DATE_TO" name="INIT_DATE_TO">
                <label class="label_inp0_v2" for="INIT_DATE_FROM">${fn:escapeXml(emax:word("기산(전표)일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" id="COMM_YN_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="COMM_YN_DIV">${fn:escapeXml(emax:word("원장등록여부"))}</label>
                <input type="hidden" id="COMM_YN" name="COMM_YN">
                <input type="text" name="COMM_YN_DIV_TEXT" id="COMM_YN_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>

            <div class="form_object w283 drop_box" id="STATUS_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("계좌상태"))}</label>
                <input type="hidden" id="STATUS_CODE" name="STATUS_CODE">
                <input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>

            <div class="form_object w283 drop_box" id="INVESTMENT_TYPE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="INVESTMENT_TYPE_CODE_DIV">${fn:escapeXml(emax:word("상품유형"))}</label>
                <input type="hidden" id="INVESTMENT_TYPE_CODE" name="INVESTMENT_TYPE_CODE">
                <input type="text" name="INVESTMENT_TYPE_CODE_DIV_TEXT" id="INVESTMENT_TYPE_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                <input class="form_pop4_v2 fw50" type="text" id="COMM_CV_NO" name="COMM_CV_NO" data-pop="true">
                <button class="form_popup_btn2_v2" data-id="COMM_CV_NO" name="COMM_CV_NO" data-pop="true"></button>
                <input class="form_inp1_v2 fw50" type="text" id="COMM_CV_NAME" name="COMM_CV_NAME" readonly>
                <label class="label_inp0_v2" for="COMM_CV_NAME">${fn:escapeXml(emax:word("여신기관"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="DUE_DATE_FROM" name="DUE_DATE_FROM">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="DUE_DATE_TO" name="DUE_DATE_TO">
                <label class="label_inp0_v2" for="DUE_DATE_FROM">${fn:escapeXml(emax:word("만기일자"))}</label>
            </div>

        </div>
    </div>
    <div class="contents_area">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
</html>