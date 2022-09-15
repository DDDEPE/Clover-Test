<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>투자유가증권 원장</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		html{height:calc(100% - 67px);min-height:unset;}
		#masterGrid{height:48.5%;}
		#detailGrid{height:265px;}
		#scheduleGrid{height:265px;}
	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("투자유가증권 원장"))}</h3>
    </div>
	<div class="contents_header">
		<div class="content_header_inner">
			<div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" onChange="f_formCombo('FI_BI_INVOICE_SOURCE_ID')"/>
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" />
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
			<div class="form_object w283 datepicker">
                <input class="form_date0_v2 form_datepicker" type="text" id="STANDARD_DATE" name="STANDARD_DATE" data-vldt="notNull" autocomplete="off">
                <label class="label_inp0_v2 blue" for="STANDARD_DATE">${fn:escapeXml(emax:word("기준일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" id="STATUS_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("계좌상태"))}</label>
                <input type="hidden" id="STATUS_CODE" name="STATUS_CODE">
                <input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283"></div>
            <div class="form_object w283 drop_box" id="INVESTMENT_TYPE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="INVESTMENT_TYPE_CODE_DIV">${fn:escapeXml(emax:word("상품유형"))}</label>
                <input type="hidden" id="INVESTMENT_TYPE_CODE" name="INVESTMENT_TYPE_CODE">
                <input type="text" name="INVESTMENT_TYPE_CODE_DIV_TEXT" id="INVESTMENT_TYPE_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="INVESTMENT_NAME"name="INVESTMENT_NAME">
                <label class="label_inp0_v2" for="INVESTMENT_NAME">${fn:escapeXml(emax:word("상품명"))}</label>
            </div>	             
		</div>
	</div>
		<div class="contents_area">
			<div class="grid_inner_wrap1 w100" id="masterGrid"></div>
			<div class="grid_inner_wrap1_v2 w49_5 floatL mgr10" style="margin-top:4px;height:48.5%;">
				<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("처리내역"))}</p>
				<div id="detailGrid" class="w100"></div>
			</div>
			<div class="grid_inner_wrap1_v2 w49_5 floatR" style="margin-top:4px;height:48.5%;">
				<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("상환스케줄"))}</p>
				<div id="scheduleGrid" class="w100"></div>
			</div>
		</div>
	</div>
</body>
</html>