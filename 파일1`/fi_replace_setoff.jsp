<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>대체상계</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		#masterGrid{width:100%;height:100%;}
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
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CV_NO" name="CV_NO">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="CV_NO"></button>
                <input class="form_inp1_v2 fw50" type="text" id="CV_NAME" name="CV_NAME" readonly>
                <label class="label_inp0_v2" for="CV_NO">${fn:escapeXml(emax:word("거래처"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO">
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DATE" name="FR_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DATE" name="TO_DATE">
                <label class="label_inp0_v2" for="FR_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <%--<div class="form_object w283">
                <input type="hidden" id="FI_BI_COST_CENTER_ID" name="FI_BI_COST_CENTER_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="COST_CENTER_CODE" name="COST_CENTER_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="COST_CENTER_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="COST_CENTER_NAME" name="COST_CENTER_NAME" readonly>
                <label class="label_inp0_v2" for="COST_CENTER_CODE">${fn:escapeXml(emax:word("코스트센터"))}</label>
            </div>--%>
            <div class="form_object w283">
                <input type="hidden" id="FI_PROJECT_ID" name="FI_PROJECT_ID">
                <input class="form_pop1_v2" type="text" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" data-pop="true" data-vldt="notNull">
                <button type="button" class="form_popup_btn_v2" data-pop="true" data-id="FI_PROJECT_NAME"></button>
                <label class="label_inp0_v2 blue" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents">
    	<div class="inner_tab_wrap2 pd10"style="height: 665px;">
    		<div class="form_object w283 datepicker">
                <input class="form_date0_v2 form_datepicker" type="text" id="INVOICE_DATE" name="INVOICE_DATE" data-reset="1">
                <label class="label_inp0_v2 blue" for="INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <%--<div class="form_object w283">
                <input type="hidden" id="SETOFF_INVOICE_HEADER_ID" name="SETOFF_INVOICE_HEADER_ID">
                <input class="form_inp0_v2" type="text" id="SETOFF_INVOICE_NO" name="SETOFF_INVOICE_NO" readonly>
                <label class="label_inp0_v2" for="SETOFF_INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>--%>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_ACCOUNT_ID" name="FI_BI_ACCOUNT_ID">
                <input type="hidden" id="DRCR_CODE" name="DRCR_CODE">
                <input type="hidden" id="ACCOUNT_TYPE" name="ACCOUNT_TYPE">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="ACCOUNT_CODE" name="ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="ACCOUNT_NAME" name="ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="ACCOUNT_CODE">${fn:escapeXml(emax:word("대체계정과목"))}</label>
            </div>
            <button type="button" class="basic mgt20" onClick="f_apply_gridData();" title="${fn:escapeXml(emax:word("적용"))}">${fn:escapeXml(emax:word("적용"))}</button>
        	<div class="inner_panel h565" id="masterGrid" style="width:1904px; margin-top:-20px; margin-left:-35px; height:592px !important;"></div>
    	</div>
    </div>
</div>
</body>
</html>