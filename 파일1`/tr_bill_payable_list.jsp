<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지급어음 발행대상 조회</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		#masterGrid{height:98%;}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("지급어음발행대상조회"))}</h3>
    </div>
    <div class="contents_header half_header">
 <div class="content_header_inner">
            <div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" />
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
    		<div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="FROM_ISSUE_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="TO_ISSUE_DATE">
                <label class="label_inp0_v2" for="INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="TERM_DATE_FROM" name="FROM_DUE_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TERM_DATE_TO" name="TO_DUE_DATE">
                <label class="label_inp0_v2" for="TERM_DATE">${fn:escapeXml(emax:word("예정일자"))}</label>
            </div>

    		<div class="form_object w283">
                <input type="hidden" id="COMM_CV_BANK_ID" name="COMM_CV_BANK_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="COMM_CV_BANK_CODE" data-id="COMM_CV_BANK_CODE" name="COMM_CV_BANK_CODE" autocomplete="off">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="FI_BI_COST_CENTER_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="FI_BI_COST_CENTER_NAME" name="FI_BI_COST_CENTER_NAME" autocomplete="off" readonly="readonly">
                <label class="label_inp0_v2" for="FI_BI_COST_CENTER_CODE">${fn:escapeXml(emax:word("코스트센터"))}</label>
            </div>
    		<div class="form_object w283">
                 <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO">
                 <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("원전표번호"))}</label>
            </div>
            <div class="form_object w283 drop_box" id="PAYABLE_STATE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="PAYABLE_STATE_DIV">${fn:escapeXml(emax:word("발행여부"))}</label>
                <input type="hidden" name="PAYABLE_STATE" id="PAYABLE_STATE">
                <input type="text" name="PAYABLE_STATE_DIV_TEXT" id="PAYABLE_STATE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>  
           
        </div>
        </div>
    <div class="contents_area half_h_contents">
		<div class="w100 mgt10 grid_inner_wrap1" id="masterGrid"></div>    	
    </div>
</div>
</body>
</html>