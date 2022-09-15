<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>투자유가증권 처분</title>
<%@include file="/WEB-INF/jsp/common.jsp"%>
<style>
html {
	height: calc(100% - 67px);
	min-height: unset;
}

#masterGrid {
	width: 100%;
	height: 580px;
}
</style>
</head>
<body>
	<div class="contents_wrap">
		<div class="contents_header_top">
			<h3 class="list_title"></h3>
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
				<div class="form_object w283 drop_box" id="INVESTMENT_TYPE_CODE_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="INVESTMENT_TYPE_CODE_DIV">${fn:escapeXml(emax:word("상품유형"))}</label>
					<input type="hidden" id="INVESTMENT_TYPE_CODE" name="INVESTMENT_TYPE_CODE" value="" />
					<input type="text" name="INVESTMENT_TYPE_CODE_DIV_TEXT" id="INVESTMENT_TYPE_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283">
					<input type="hidden" name="TR_FINANCIAL_INSTRUMENT_B_ID" id="TR_FINANCIAL_INSTRUMENT_B_ID">
					<input class="form_pop4_v2 fw50" type="text" id="FI_NO" name="FI_NO" data-pop="true">
					<button class="form_popup_btn2_v2" data-id="FI_NO" name="FI_NO" data-pop="true"></button>
					<input class="form_inp1_v2 fw50" type="text" id="INVESTMENT_NAME" name="INVESTMENT_NAME" readonly>
					<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("자금번호"))}</label>
				</div>
				<div class="form_object w283 datepicker">
					<input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_TRANSACTION_DATE" name="FR_TRANSACTION_DATE">

					<input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_TRANSACTION_DATE" name="TO_TRANSACTION_DATE">
					<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("처분일자"))}</label>
				</div>
				<div class="form_object w283"></div>
				<div class="form_object w283"></div>
				<div class="form_object w283 drop_box" id="CONFIRM_FLAG_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="CONFIRM_FLAG_DIV">${fn:escapeXml(emax:word("확정여부"))}</label>
					<input type="hidden" id="CONFIRM_FLAG" name="CONFIRM_FLAG" value="" />
					<input type="text" name="CONFIRM_FLAG_DIV_TEXT" id="CONFIRM_FLAG_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283 drop_box" id="STATUS_CODE_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("계좌상태"))}</label>
					<input type="hidden" id="STATUS_CODE" name="STATUS_CODE" value="" />
					<input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283">
					<input type="hidden" name="COMM_CV_ID" id="COMM_CV_ID">
					<input class="form_pop4_v2 fw50" type="text" id="CV_NO" name="CV_NO" data-pop="true">
					<button class="form_popup_btn2_v2" type="button" data-id="CV_NO" data-pop="true"></button>
					<input class="form_inp1_v2 fw50" type="text" name="CV_NAME" id="CV_NAME" readonly>
					<label class="label_inp0_v2" for="CV_NO">${fn:escapeXml(emax:word("거래처"))}</label>
				</div>
				<div class="form_object w283 drop_box" id="INVOICE_CREATE_YN_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="INVOICE_CREATE_YN_DIV">${fn:escapeXml(emax:word("전표생성여부"))}</label>
					<input type="hidden" id="INVOICE_CREATE_YN" name="INVOICE_CREATE_YN" value="" />
					<input type="text" name="INVOICE_CREATE_YN_DIV_TEXT" id="INVOICE_CREATE_YN_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object">
					<p class="form_object_txt">* 계좌번호, 자금코드를 입력 후 확정가능합니다.</p>
				</div>
			</div>
		</div>
		<div class="contents_area">
			<div class="grid_inner_wrap0" id="masterGrid"></div>
		</div>
	</div>
</body>