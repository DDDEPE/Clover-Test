<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>출처유형별 자동분개 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	#masterGrid{height:48.5%;}
    	#detailGrid{height:57.5%;}
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
				<label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" /> 
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
					class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283">
				<input class="form_inp0_v2" type="text" id="FI_BI_JOURNALIZE_CODE" name="FI_BI_JOURNALIZE_CODE">
				<label class="label_inp0_v2" for="FI_BI_JOURNALIZE_CODE">${fn:escapeXml(emax:word("코드"))}</label>
			</div>
			<div class="form_object w283 drop_box" name="INVOICE_SOURCE_CODE_DIV" id="INVOICE_SOURCE_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="INVOICE_SOURCE_CODE_DIV">${fn:escapeXml(emax:word("출처"))}</label>
				<input type="hidden" id="INVOICE_SOURCE_CODE" name="INVOICE_SOURCE_CODE" value="" />
				<input type="text" name="INVOICE_SOURCE_CODE_DIV_TEXT" id="INVOICE_SOURCE_CODE_DIV_TEXT" value="" data-prev-val=""
					   class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
		</div>
	</div>
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap1" id="masterGrid"></div>
    	<div class="w100 grid_inner_wrap1" id="detailGrid" style="margin-top:16px;"></div>
    </div>
</div>
</body>