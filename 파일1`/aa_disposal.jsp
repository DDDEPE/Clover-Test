<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>자산처분 처리</title>
	<%@include file="/WEB-INF/jsp/common.jsp"%>
	<style>
		#masterGrid{height:48.5%;}
		#detailGrid{height:48.5%;}
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
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" /> 
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
					class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 datepicker">
				<input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DATE" name="FR_DATE">
				<span class="input_from">~</span>
				<input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DATE" name="TO_DATE">
				<label class="label_inp0_v2" for="FR_DATE">${fn:escapeXml(emax:word("처분일자"))}</label>
			</div>
			<div class="form_object w283 drop_box" name="DISPOSAL_TYPE_CODE_DIV" id="DISPOSAL_TYPE_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="DISPOSAL_TYPE_CODE_DIV">${fn:escapeXml(emax:word("처분유형"))}</label>
				<input type="hidden" id="DISPOSAL_TYPE_CODE" name="DISPOSAL_TYPE_CODE" value="" /> 
				<input type="text" name="DISPOSAL_TYPE_CODE_DIV_TEXT" id="DISPOSAL_TYPE_CODE_DIV_TEXT" value="" data-prev-val=""
					class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283">
                <input class="form_pop4" type="text" data-id="CV_NAME" id="CV_NAME" name="CV_NAME" data-pop="true">
                <button class="form_popup_btn_v2" type="button" data-id="CV_NAME" data-pop="true"></button>
                <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                <label class="label_inp0_v2" for="CV_NAME">${fn:escapeXml(emax:word("거래처"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents ">
    	<div class="w100 grid_inner_wrap1" id="masterGrid"></div>
		<div class="w100 grid_inner_wrap1" id="detailGrid" style="margin-top:16px;"></div>
    </div>
</div>
</body>
</html>