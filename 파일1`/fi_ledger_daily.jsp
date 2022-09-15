<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>일계표</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
		#masterGrid{height:662px;}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header half_header">
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
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DATE" name="FR_DATE" data-vldt="notNull">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DATE" name="TO_DATE" data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="FR_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="AMT_UNIT_DIV" id="AMT_UNIT_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="AMT_UNIT_DIV">${fn:escapeXml(emax:word("금액단위"))}</label>
                <input type="hidden" id="AMT_UNIT" name="AMT_UNIT" value=""/>
                <input type="text" name="AMT_UNIT_DIV_TEXT" id="AMT_UNIT_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
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
        </div>
    </div>
    <div class="contents_area">
		<div class="w283 grid_inner_wrap0" id="masterGrid"></div>    	
    </div>
</div>
</body>
