<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>감가상각 실행</title>
	<%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		#masterGrid {
			width: 100%;
			height: 580px !important;
		}
		#detailGrid {
			height : 789px !important;
		}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="form_header">
		<h3 class="form_title"></h3>
	</div>
	<div class="contents_area half_h_contents" style="height:820px; margin-top:0;">
		<div class="w19 floatL grid_inner_wrap0">
			<div class="content_header_inner">
				<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV">
					<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
					<input type="hidden" id="FI_BI_DIVISION_ID"	name="FI_BI_DIVISION_ID">
					<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" class="drop_box_inp">
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283" id="YEAR_DIV">
					<input class="form_date0_v2 fw100 yearpicker mtz-yearpicker-widgetcontainer" type="text" name="YEAR_DIV" id="YEAR">
					<label class="label_inp0_v2 blue" for="YEAR_DIV">${fn:escapeXml(emax:word("조회기간"))}</label>
				</div>
			</div>
			<%-- 				<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_CALC" 			onclick="f_depreciation()"			>${fn:escapeXml(emax:word("상각"))}</button> --%>
			<%-- 				<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_CALC_CANCEL" 	onclick="f_deprecitaion_cancel()"	>${fn:escapeXml(emax:word("상각취소"))}</button> --%>
			<%-- 				<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_INVOICE_CREATE"  onclick="f_create_invoice()"	    >${fn:escapeXml(emax:word("전표생성"))}</button> --%>
			<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_CALC" 			onclick="f_depreciation()"			disabled='disabled'>${fn:escapeXml(emax:word("상각"))}</button>
			<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_CALC_CANCEL" 	onclick="f_deprecitaion_cancel()"	disabled='disabled'>${fn:escapeXml(emax:word("상각취소"))}</button>
			<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_INVOICE_CREATE"  onclick="f_create_invoice()"	    disabled='disabled'>${fn:escapeXml(emax:word("전표생성"))}</button>
			<div class="grid_inner_wrap0" id="masterGrid"></div>
		</div>
		<div class="w80 floatR grid_inner_wrap0" id="detailGrid" style="height:822px"></div>
	</div>
</div>
</body>