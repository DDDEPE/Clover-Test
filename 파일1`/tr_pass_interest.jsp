<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>자금경과이자계산</title>
<%@include file="/WEB-INF/jsp/common.jsp"%>
<style>
#masterGrid {
	width: 100%;
	height: 592px !important;
}
#detailGrid {
	height : 788px;
}
</style>
</head>
<body>
	<div class="contents_wrap">
		<div class="form_header">
			<h3 class="form_title"></h3>
		</div>
		<div class="contents_area" style="margin-top:-1px;">
			<div class="w19 floatL grid_inner_wrap0">
				<form id="masterForm">
					<div class="content_header_inner">
						<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
							<label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
							<input type="hidden" id="FI_BI_DIVISION_ID"	name="FI_BI_DIVISION_ID">
							<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" class="drop_box_inp">
							<button type="button" class="drop_box_btn"></button>
							<ul class="drop_box_list"></ul>
						</div>
						<div class="form_object w283" id="YEAR_DIV">
							<input class="form_date0_v2 fw100 yearpicker mtz-yearpicker-widgetcontainer" type="text" name="YEAR_DIV" id="YEAR">
							<label class="label_inp0_v2" for="YEAR_DIV">${fn:escapeXml(emax:word("조회기간"))}</label>
						</div>
					</div>
				</form>
				<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_CALC" 			onclick="f_calculate()" disabled='disabled' style="margin-top: -13px;">${fn:escapeXml(emax:word("경과이자계산"))}</button>
				<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_CALC_CANCEL" 	onclick="f_calculate_cancel()" disabled='disabled' style="margin-top: -13px;">${fn:escapeXml(emax:word("계산취소"))}</button>
				<button class="primary mgb10 pdr20 pdl20 disabled" id="BTN_INVOICE_CREATE"  onclick="f_create_invoice()" disabled='disabled' style="margin-top: -13px;">${fn:escapeXml(emax:word("전표생성"))}</button>
				<div class="grid_inner_wrap0" id="masterGrid"></div>
			</div>
			<div class="w80 floatR grid_inner_wrap0" id="detailGrid"></div>
		</div>
	</div>
</body>
</html>