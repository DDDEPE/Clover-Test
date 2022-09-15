<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>자금 조달운용 관리</title>
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
			<%-- <button class="btn_default registration_btn" type="button" onclick="f_search();">${fn:escapeXml(emax:word("명세서출력"))}</button> --%>
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
				<div class="form_object w283">
					<input type="hidden" id="ISSUE_ACCOUNT_ID" name="ISSUE_ACCOUNT_ID">
					<input class="form_pop4_v2 fw50" type="text" id="ISSUE_ACCOUNT_CODE" name="ISSUE_ACCOUNT_CODE" data-pop="true">
					<button class="form_popup_btn2_v2" data-id="ISSUE_ACCOUNT_CODE" name="ISSUE_ACCOUNT_CODE" data-pop="true"></button>
					<input class="form_inp1_v2 fw50" type="text" id="ISSUE_ACCOUNT_NAME" name="ISSUE_ACCOUNT_NAME" readonly>
					<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("계정과목"))}</label>
				</div>
				<div class="form_object w283 datepicker">
					<input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_CONTRACT_DATE" name="FR_CONTRACT_DATE">

					<input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_CONTRACT_DATE" name="TO_CONTRACT_DATE">
					<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("계약일자"))}</label>
				</div>
				<div class="form_object w283 datepicker">
					<input class="form_date0_v2 form_datepicker" type="text" id="INITIAL_DATE" name="INITIAL_DATE">
					<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("기산일자"))}</label>
				</div>
				<div class="form_object w283 drop_box" id="ISSUE_STATE_CODE_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="ISSUE_STATE_CODE_DIV">${fn:escapeXml(emax:word("상태"))}</label>
					<input type="hidden" id="ISSUE_STATE_CODE" name="ISSUE_STATE_CODE" value="" />
					<input type="text" name="ISSUE_STATE_CODE_DIV_TEXT" id="ISSUE_STATE_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283"></div>
				<div class="form_object w283">
					<input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
					<input class="form_pop4_v2 fw50" type="text" id="COMM_CV_NO" name="COMM_CV_NO" data-pop="true">
					<button class="form_popup_btn2_v2" data-id="COMM_CV_NO" name="COMM_CV_NO" data-pop="true"></button>
					<input class="form_inp1_v2 fw50" type="text" id="COMM_CV_NAME" name="COMM_CV_NAME" readonly>
					<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("여신기관"))}</label>
				</div>
				<div class="form_object w283 datepicker">
					<input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_EXPIRE_DATE" name="FR_EXPIRE_DATE">

					<input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_EXPIRE_DATE" name="TO_EXPIRE_DATE">
					<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("만기일자"))}</label>
				</div>
				
			</div>
		</div>
		<div class="contents_area">
			<div class="grid_inner_wrap0" id="masterGrid"></div>
			<%-- <div class="w24 grid_inner_wrap0 floatR pd10" style="height: 652px">
				<h4 class="term_calc_title">처리내역</h4>
				<table class="depreciation_table" id="masterTable">
					<caption>자금 조달운용 관리 테이블</caption>
					<thead>
						<tr>
							<th>${fn:escapeXml(emax:word("연월"))}</th>
							<th>${fn:escapeXml(emax:word("상태"))}</th>
							<th>${fn:escapeXml(emax:word("전표번호"))}</th>
							<th>${fn:escapeXml(emax:word("역전표번호"))}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><span>2020-01</span></th>
							<td>가입</td>
							<td>
								<span>F200131-878</span>
							</td>
							<td>
								<span>F200131-879</span>
							</td>
						</tr>
						<tr>
							<th><span>2020-02</span></th>
							<td>유동성대체</td>
							<td>
								<span>F200228-693</span>
							</td>
							<td>
								<span>F200228-694</span>
							</td>
						</tr>
					</tbody>
				</table>
			</div> --%>
		</div>
	</div>
</body>