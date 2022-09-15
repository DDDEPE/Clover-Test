<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>자금실적 요약 조회</title>
	<%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		html{height:calc(100% - 67px); min-height: unset;}
		#masterGrid{width:100%;height:660px;}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
		<h3 class="list_title">${fn:escapeXml(emax:word("자금실적 요약 조회"))}</h3>
	</div>
	<div class="contents_header half_header">
		<div class="content_header_inner">
			<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value=""/>
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 datepicker">
				<input class="form_date0_v2 fw50 form_datepicker hasDatepicker" type="text" id="STANDARD_DATE_FROM" name="STANDARD_DATE_FROM" data-vldt="notNull">

				<input class="form_date1_v2 fw50 form_datepicker hasDatepicker" type="text" id="STANDARD_DATE_TO" name="STANDARD_DATE_TO" data-vldt="notNull">
				<label class="label_inp0_v2 blue" for="STANDARD_DATE_FROM">${fn:escapeXml(emax:word("기준일자"))}</label>
			</div>
		</div>
	</div>
	<div class="contents_area half_h_contents">
		<div class="w100 grid_inner_wrap1" id="masterGrid"></div>
	</div>
</div>
</body>