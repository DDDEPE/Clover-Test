<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>채권상계</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		html{height:calc(100% - 67px);min-height:unset;}
   		#masterGrid{height:calc(100% - 45px);}
   		#detailGrid{height:calc(100% - 45px);}
   	</style>
</head>
<body>
<div class="contents_wrap" style="height: auto;">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
            <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" name="FI_BI_DIVISION_ID" id="FI_BI_DIVISION_ID">
                <input type="text" name="FI_BI_DIVISION_ID_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value=""
                       data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="INVOICE_DATE_FROM">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="INVOICE_DATE_TO">
                <label class="label_inp0_v2" for="INVOICE_DATE_FROM">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="CUST_ID" name="CUST_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CUST_CODE" name="CUST_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="CUST_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="CUST_NAME" name="CUST_NAME" readonly>
                <label class="label_inp0_v2" for="CUST_CODE">${fn:escapeXml(emax:word("거래처"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="FI_PROJECT_ID" name="FI_PROJECT_ID">
                <input class="form_pop1_v2" type="text" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" data-pop="true">
                <button type="button" class="form_popup_btn_v2" data-pop="true" data-id="FI_PROJECT_NAME"></button>
                <label class="label_inp0_v2" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="MASTER_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="MASTER_ACCOUNT_CODE" name="MASTER_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="MASTER_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="MASTER_ACCOUNT_NAME" name="MASTER_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="MASTER_ACCOUNT_CODE">${fn:escapeXml(emax:word("입금계정"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="DETAIL_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="DETAIL_ACCOUNT_CODE" name="DETAIL_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="DETAIL_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="DETAIL_ACCOUNT_NAME" name="DETAIL_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="DETAIL_ACCOUNT_CODE">${fn:escapeXml(emax:word("채권계정"))}</label>
            </div>
            <div class="content_header_inner" id="CALCULATE_DIV">
            <div class="form_object w10 datepicker">
                 <input class="form_date0_v2 form_datepicker" type="text" id="INVOICE_DATE" name="INVOICE_DATE" data-reset="1">
                 <label class="label_inp0_v2 blue" for="INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <%--<div class="form_object w10">
                <input type="hidden" name="FI_INVOICE_HEADER_ID" id="FI_INVOICE_HEADER_ID">
                <input class="form_inp0_v2" type="text" name="INVOICE_NO" id="INVOICE_NO" readonly>
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>--%>
            <div class="form_object w10">
                <input class="form_inp0_v2" type="text" id="DR_AMT" name="DR_AMT" readonly data-reset="1">
                <label class="label_inp0_v2" for="DR_AMT">${fn:escapeXml(emax:word("차변"))}</label>
            </div>
            <div class="form_object w10">
                <input class="form_inp0_v2" type="text" id="TEMP_AMT" name="TEMP_AMT" readonly data-reset="1">
                <label class="label_inp0_v2" for="TEMP_AMT">${fn:escapeXml(emax:word("가수금"))}</label>
            </div>
            <div class="form_object w10">
                <input class="form_inp0_v2 " type="text" id="CR_AMT" name="CR_AMT" readonly data-reset="1">
                <label class="label_inp0_v2" for="CR_AMT">${fn:escapeXml(emax:word("대변"))}</label>
            </div>
            <div class="form_object w10">
                <input class="form_inp0_v2" type="text" id="BOND" name="BOND" readonly data-reset="1">
                <label class="label_inp0_v2" for="BOND">${fn:escapeXml(emax:word("채권"))}</label>
            </div>
            <div class="form_object w10">
                <input class="form_inp1_v2 " type="text" id="DIFF_AMT" name="DIFF_AMT" readonly data-reset="1">
                <label class="label_inp0_v2" for="DIFF_AMT">${fn:escapeXml(emax:word("차이금액"))}</label>
            </div>
        </div>
        </div>
    </div>
<!--     <div class="contents_header half_header" style="margin-top:10px;"> -->
<!--         <div class="content_header_inner" id="CALCULATE_DIV"> -->
<!--             <div class="form_object w10 datepicker"> -->
<!--                  <input class="form_date0_v2 form_datepicker" type="text" id="INVOICE_DATE" name="INVOICE_DATE" data-reset="1"> -->
<%--                  <label class="label_inp0_v2 blue" for="INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label> --%>
<!--             </div> -->
<!--             <div class="form_object w10"> -->
<!--                 <input type="hidden" name="FI_INVOICE_HEADER_ID" id="FI_INVOICE_HEADER_ID"> -->
<!--                 <input class="form_inp0_v2" type="text" name="INVOICE_NO" id="INVOICE_NO" readonly> -->
<%--                 <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label> --%>
<!--             </div> -->
<!--             <div class="form_object w10"> -->
<!--                 <input class="form_inp0_v2" type="text" id="DR_AMT" name="DR_AMT" readonly data-reset="1"> -->
<%--                 <label class="label_inp0_v2" for="DR_AMT">${fn:escapeXml(emax:word("차변"))}</label> --%>
<!--             </div> -->
<!--             <div class="form_object w10"> -->
<!--                 <input class="form_inp0_v2" type="text" id="TEMP_AMT" name="TEMP_AMT" readonly data-reset="1"> -->
<%--                 <label class="label_inp0_v2" for="TEMP_AMT">${fn:escapeXml(emax:word("가수금"))}</label> --%>
<!--             </div> -->
<!--             <div class="form_object w10"> -->
<!--                 <input class="form_inp0_v2 " type="text" id="CR_AMT" name="CR_AMT" readonly data-reset="1"> -->
<%--                 <label class="label_inp0_v2" for="CR_AMT">${fn:escapeXml(emax:word("대변"))}</label> --%>
<!--             </div> -->
<!--             <div class="form_object w10"> -->
<!--                 <input class="form_inp0_v2" type="text" id="BOND" name="BOND" readonly data-reset="1"> -->
<%--                 <label class="label_inp0_v2" for="BOND">${fn:escapeXml(emax:word("채권"))}</label> --%>
<!--             </div> -->
<!--             <div class="form_object w10"> -->
<!--                 <input class="form_inp1_v2 " type="text" id="DIFF_AMT" name="DIFF_AMT" readonly data-reset="1"> -->
<%--                 <label class="label_inp0_v2" for="DIFF_AMT">${fn:escapeXml(emax:word("차이금액"))}</label> --%>
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0" id="DEPOSIT_DIV" style="height:300px;">
    		<p class="ea_bt_form_title">${fn:escapeXml(emax:word("입금"))}</p>
    		<div id="masterGrid"></div>
    	</div>
    	<div class="w100 grid_inner_wrap0" id="BOND_DIV" style="height:300px;">
    		<p class="ea_bt_form_title">${fn:escapeXml(emax:word("채권"))}</p>
    		<div id="detailGrid"></div>
    	</div>
    </div>
</div>
</body>
</html>