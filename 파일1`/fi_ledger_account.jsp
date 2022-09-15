<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>계정과목 원장</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	#masterGrid{height:582px;}
		#detailGrid{height:582px;}
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
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" data-vldt="notNull"/>
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
					   class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283">
				<input type="hidden" id="FI_BI_ACCOUNT_ID">
				<input class="form_pop4_v2 fw50" type="text" data-pop="true" id="ACCOUNT_CODE" name="ACCOUNT_CODE">
				<button class="form_popup_btn2_v2" data-pop="true" data-id="ACCOUNT_CODE"></button>
				<input class="form_inp1_v2 fw50" type="text" id="ACCOUNT_NAME" name="ACCOUNT_NAME" readonly>
				<label class="label_inp0_v2" for="ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
			</div>
			<div class="form_object w283 datepicker">
				<input class="form_date0_v2 fw50 form_datepicker hasDatepicker" type="text" id="FR_DATE" name="FR_DATE" data-vldt="notNull">

				<input class="form_date1_v2 fw50 form_datepicker hasDatepicker" type="text" id="TO_DATE" name="TO_DATE" data-vldt="notNull">
				<label class="label_inp0_v2 blue" for="FR_DATE">${fn:escapeXml(emax:word("조회기간"))}</label>
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
    	<div class="inner_tab_wrap2" id="inner_tab_wrap">
             <div class="grid_wrap">
                 <ul class="inner_tabs">
                     <li class="inner_tab">
                         <a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("계정원장"))}</a>
                     </li>
                     <li class="inner_tab">
                         <a class="tab_link" href="#inner_tab1" title="" <%--style="pointer-events: none;"--%>>${fn:escapeXml(emax:word("계정세부 원장"))}</a>
                     </li>
                 </ul>
                 <div class="inner_panel h600" id="inner_tab0">
                     <div class="w283" id="masterGrid" style = "width:1855px;margin-left:-25px;"></div>
                 </div>
                 <div class="inner_panel h600" id="inner_tab1">
                     <div class="w283" id="detailGrid" style = "width:1855px;margin-left:-25px;"></div>
                 </div>
             </div>
     	</div>
    </div>
</div>
</body>