<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>상계현황</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	html{height:calc(100% - 67px);min-height:unset;}
    	#masterGrid{height:49.5%;}
    	#detailGrid{height:calc(100% - 45px);}
    </style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("상계현황"))}</h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
			<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" />
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 datepicker">
				<input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_INVOICE_DATE" name="FR_INVOICE_DATE">

				<input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_INVOICE_DATE" name="TO_INVOICE_DATE">
				<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("전표일자"))}</label>
			</div>
            <div class="form_object w283 drop_box" id="REC_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="REC_CODE_DIV">${fn:escapeXml(emax:word("상계유형"))}</label>
				<input type="hidden" id="REC_CODE" name="REC_CODE" value="" />
				<input type="text" name="REC_CODE_DIV_TEXT" id="REC_CODE_DIV_TEXT" value="" data-prev-val="" class="form_pop4_v2 hiddenText" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283">
				<input type="hidden" id="FI_BI_ACCOUNT_ID" name="FI_BI_ACCOUNT_ID">
				<input class="form_pop4_v2 fw50" type="text" data-pop="true" id="ACCOUNT_CODE" name="ACCOUNT_CODE">
				<button class="form_popup_btn2_v2" data-pop="true" data-id="ACCOUNT_CODE"></button>
				<input class="form_inp1_v2 fw50" type="text" id="ACCOUNT_NAME" name="ACCOUNT_NAME" readonly>
				<label class="label_inp0_v2" for="ACCOUNT_CODE">${fn:escapeXml(emax:word("계정과목"))}</label>
			</div>
<!--             <div class="form_object w283"></div> -->
<!--             <div class="form_object w283"></div> -->
			<div class="form_object w283">
				<input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
				<input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CV_NO" name="CV_NO">
				<button class="form_popup_btn2_v2" data-pop="true" data-id="CUST_CODE"></button>
				<input class="form_inp1_v2 fw50" type="text" id="CV_NAME" name="CV_NAME" readonly>
				<label class="label_inp0_v2" for="CV_NO">${fn:escapeXml(emax:word("거래처"))}</label>
			</div>
            <div class="form_object w283"></div>
			<div class="form_object w283">
                 <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO">
                 <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>
            <div class="form_object w283 drop_box" id="BALACE_YN_DIV" style="position: relative;">
				 <label class="label_inp0_v2" for="BALACE_YN_DIV">${fn:escapeXml(emax:word("잔액여부"))}</label>
				 <input type="hidden" id="BALACE_YN" name="BALACE_YN" value="" />
				 <input type="text" name="BALACE_YN_DIV_TEXT" id="BALACE_YN_DIV_TEXT" value="" data-prev-val="" class="form_pop4_v2 hiddenText" autocomplete="off" placeholder="" />
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
    <div class="contents_area half_h_contents">
		<div class="w100 grid_inner_wrap1" id="masterGrid" style="height:48.5%;"></div>    	
		<div class="w100 grid_inner_wrap1" style="margin-top:16px;height:48.5%;">
			<p class="ea_bt_form_title">${fn:escapeXml(emax:word("상계내역"))}</p>
			<div id="detailGrid"></div>
		</div>    	
    </div>
</div>
</body>
