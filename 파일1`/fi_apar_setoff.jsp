<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>채권채무상계</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
   		html{height:calc(100% - 67px);min-height:unset;}
   		#arGrid{height:calc(100% - 45px);}
   		#apGrid{height:calc(100% - 45px);}
   	</style>
</head>
<body>
<div class="contents_wrap" style="height: auto;">
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
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DATE" name="FR_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DATE" name="TO_DATE">
                <label class="label_inp0_v2" for="FR_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CV_NO" name="CV_NO">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="CV_NO"></button>
                <input class="form_inp1_v2 fw50" type="text" id="CV_NAME" name="CV_NAME" readonly>
                <label class="label_inp0_v2" for="CV_NO">${fn:escapeXml(emax:word("거래처"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="FI_PROJECT_ID" name="FI_PROJECT_ID">
                <input class="form_pop1_v2" type="text" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" data-pop="true" data-vldt="notNull">
                <button type="button" class="form_popup_btn_v2" data-pop="true" data-id="FI_PROJECT_NAME"></button>
                <label class="label_inp0_v2 blue" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="AR_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="AR_ACCOUNT_CODE" name="AR_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="AR_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="AR_ACCOUNT_NAME" name="AR_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="AR_ACCOUNT_CODE">${fn:escapeXml(emax:word("채권계정"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="AP_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="AP_ACCOUNT_CODE" name="AP_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="AP_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="AP_ACCOUNT_NAME" name="AP_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="AP_ACCOUNT_CODE">${fn:escapeXml(emax:word("채무계정"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_header half_header" style="margin-top:10px;">
        <div class="content_header_inner" id="CALCULATE_DIV">
			<div class="form_object w10 datepicker">
                <input class="form_date0_v2 form_datepicker" type="text" id="INVOICE_DATE" name="INVOICE_DATE" data-reset="1">
                <label class="label_inp0_v2 blue" for="INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <%--<div class="form_object w10">
                <input type="hidden" id="FI_INVOICE_HEADER_ID" name="FI_INVOICE_HEADER_ID">
                <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO" readonly>
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>--%>
            <div class="form_object w10">
                 <input class="form_inp0_v2" type="text" id="DR_AMT" name="DR_AMT" readonly data-reset="1">
                 <label class="label_inp0_v2" for="DR_AMT">${fn:escapeXml(emax:word("차변"))}</label>
            </div>
            <div class="form_object w10">
                 <input class="form_inp0_v2" type="text" id="AP_AMT" name="AP_AMT" readonly data-reset="1">
                 <label class="label_inp0_v2" for="AP_AMT">${fn:escapeXml(emax:word("채무"))}</label>
            </div>
            <div class="form_object w10">
                <input class="form_inp0_v2" type="text" id="CR_AMT" name="CR_AMT" readonly data-reset="1">
                <label class="label_inp0_v2" for="CR_AMT">${fn:escapeXml(emax:word("대변"))}</label>
            </div>
            <div class="form_object w10">
                 <input class="form_inp0_v2" type="text" id="AR_AMT" name="AR_AMT" readonly data-reset="1">
                 <label class="label_inp0_v2" for="AR_AMT">${fn:escapeXml(emax:word("채권"))}</label>
            </div>
            <div class="form_object w10">
                <input class="form_inp1_v2 " type="text" id="DIFF_AMT" name="DIFF_AMT" readonly data-reset="1">
                <label class="label_inp0_v2" for="DIFF_AMT">${fn:escapeXml(emax:word("차이금액"))}</label>
            </div>        
        </div>
    </div>    
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0" style="height:300px;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("채권"))}</p>
    		<div id="arGrid"></div>
    	</div>
    	<div class="w100 grid_inner_wrap0" style="height:300px;margin-top:4px;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("채무"))}</p>
    		<div id="apGrid"></div>
    	</div>
    </div>
</div>
</body>
</html>