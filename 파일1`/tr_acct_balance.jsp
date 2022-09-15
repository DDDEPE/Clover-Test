<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>예금잔액대조표</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	#masterGrid{height:48.5%;}
    	#cmsGrid{height:300px;}
    	#acctLedgerGrid{height:300px;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
	<div class="contents_header half_header">
		<div class="content_header_inner">
			<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID">
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" class="drop_box_inp">
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 datepicker" >
				<input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DATE" name="FR_DATE" data-type="date" data-vldt="notNull"'>

				<input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DATE" name="TO_DATE" data-type="date" data-vldt="notNull">
				<label class="label_inp0_v2 blue" for="FR_DATE">${fn:escapeXml(emax:word("기준일자"))}</label>
			</div>
<!--              <div class="form_object w283"> -->
<!-- 				<input class="form_check0" type="checkbox" id="STATE_CODE" name="STATE_CODE"> -->
<%-- 				<label class="label_checkbox0_v2" for="STATE_CODE">${fn:escapeXml(emax:word("미승인포함"))}</label> --%>
<!-- 			</div> -->
		</div>
	</div>
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
	  	<div class="grid_inner_wrap1 w49_5 floatL mgr10" style="margin-top:4px;height:48.5%;">
			<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("CMS입출금상세내역"))}</p>
			<div id="cmsGrid" class="w100"></div>
		</div>
		<div class="grid_inner_wrap1 w49_5 floatR" style="margin-top:4px;height:48.5%;">
			<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("계좌별원장상세내역"))}</p>
			<div id="acctLedgerGrid" class="w100"></div>
		</div>
    </div>
</div>
</body>