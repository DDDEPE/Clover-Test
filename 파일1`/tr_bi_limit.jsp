<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>포괄한도 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <!-- 구글캘린더 연동  -->
    <style>
    	#masterGrid{height:48.5%;}
    	#detailGrid{width:100%;height:300px;}
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
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" />
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 drop_box" id="LOAN_CATEGORY_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="LOAN_CATEGORY_CODE_DIV">${fn:escapeXml(emax:word("여신종류"))}</label>
				<input type="hidden" id="LOAN_CATEGORY_CODE" name="LOAN_CATEGORY_CODE" value="" /> 
				<input type="text" name="LOAN_CATEGORY_CODE_DIV_TEXT" id="LOAN_CATEGORY_CODE_DIV_TEXT"
					value="" data-prev-val="" class="drop_box_inp"
					autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>                
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_GUARANTEE_ID">
                <input class="form_pop4_v2 fw50" type="text" id="CV_GUARANTEE_CODE" name="CV_GUARANTEE_CODE" data-pop="true" data-id="CV_GUARANTEE_CODE">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="CV_GUARANTEE_CODE" ></button>
                <input class="form_inp1_v2 fw50" type="text" id="CV_GUARANTEE_NAME" name="CV_GUARANTEE_NAME" readonly>
                <label class="label_inp0_v2" for="CV_GUARANTEE_CODE">${fn:escapeXml(emax:word("보증기관"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_START_DATE" name="FR_START_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_START_DATE" name="TO_START_DATE">
                <label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("시작일자"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_END_DATE" name="FR_END_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_END_DATE" name="TO_END_DATE">
                <label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("종료일자"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents">
        <div class="w283 grid_inner_wrap1" id="masterGrid"></div>
        <div class="w283 grid_inner_wrap1" style="margin-top:16px;">
        	<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("지급보증"))}</p>
        	<div id="detailGrid"></div>
        </div>
    </div>
</div>
</body>