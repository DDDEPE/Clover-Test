<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>일일 자금계획 등록</title>
	<%@include file="/WEB-INF/jsp/common.jsp"%>
	<!-- 구글캘린더 연동  -->
	<style>
		#masterGrid{height:660px;}
		#detailGrid{height:660px;}
	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("일일 자금계획 등록"))}</h3>
    </div>
    <div class="contents_header half_header">
        <div class="content_header_inner">
			<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" />
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" class="drop_box_inp">
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283">
                <input class="form_date0_v2 monthpicker" type="text" id="S_MONTH" name=""  data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="S_MONTH">${fn:escapeXml(emax:word("년월"))}</label>
            </div>			
        </div>
    </div>
    <div class="contents_area half_h_contents">
        <div class="grid_inner_wrap0 w24 floatL mgr10 ">
        	<div id="masterGrid" class="w100"></div>
        </div>
        <div class="grid_inner_wrap0 w75 floatR">
        	<div id="detailGrid" class="w100"></div>
        </div>
    </div>
</div>
</body>