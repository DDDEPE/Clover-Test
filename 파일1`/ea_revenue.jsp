<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>수입결의서</title>
<%@include file="/WEB-INF/jsp/common.jsp"%>
	<style>
    	#revenueGrid{height:530px;}
    </style>
</head>
<body>
	<div class="contents_wrap">
		<div class="contents_area content_document">
			<div class="content ea_bt_wrap">
				<div class="form_header ea_header">
					<h3 class="form_title"></h3>
				</div>
				
				<%-- 문서마스터 + 결재라인--%>
				<%@include file="ea_common.jsp"%>
				<div class="ea_left_scroll_wrap">
					<div class="">

						<div class="" name="ea_contents">
							<h4 class="ea_bt_form_title">${fn:escapeXml(emax:word("수입결의"))}</h4>
							<div class="pd10">
								<form id="applyForm" name="applyForm">
									<div class="form_object w22 dropdown" name="M_FI_BI_DIVISION_ID_DIV" id="M_FI_BI_DIVISION_ID_DIV" style="position: relative;">
										<label class="label_inp0_v2 blue" for="M_FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
										<input type="hidden" id="M_FI_BI_DIVISION_ID" name="M_FI_BI_DIVISION_ID" value="" data-vldt="notNull"/>
										<input type="text" name="M_FI_BI_DIVISION_ID_DIV_TEXT" id="M_FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
											   class="form_pop4 hiddenText" autocomplete="off" placeholder=""/>
										<button type="button" class="btn_search"></button>
										<ul class="select_drop" style="margin-top: 50px;"></ul>
									</div>
									<div class="form_object w22">
										<input type="hidden" id="M_FI_PROJECT_ID" name="M_FI_PROJECT_ID" data-vldt="notNull">
										<input class="form_pop1_v2" type="text" id="M_FI_PROJECT_NAME" name="M_FI_PROJECT_NAME" data-pop="true">
										<button type="button" class="form_popup_btn_v2" data-pop="true" data-id="M_FI_PROJECT_NAME"></button>
										<label class="label_inp0_v2 blue" for="M_FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
									</div>
									<div class="form_object w22">
										<input type="hidden" id="M_COMM_CV_ID" name="M_COMM_CV_ID" data-vldt="notNull">
										<input class="form_pop1_v2" type="text" id="M_COMM_CV_NAME" name="M_COMM_CV_NAME" data-pop="true">
										<button type="button" class="form_popup_btn_v2R" data-pop="true" data-id="M_COMM_CV_NAME"></button>
										<label class="label_inp0_v2 blue" for="M_COMM_CV_NAME">${fn:escapeXml(emax:word("거래처"))}</label>
									</div>
									<div class="form_object w22">
										<label class="label_inp2_v2 fw50 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
										<div class="select_box1 fw50 dropdown" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV">
											<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" data-vldt="notNull" />
											<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="form_pop4 hiddenText" autocomplete="off" placeholder="" data-vldt="notNull" disabled/>
											<button type="button" class="btn_search" >
											</button>
											<ul class="select_drop" ></ul>
										</div>
										<div class="datepicker">
											<input class="form_date0_v2 form_datepicker fw50 " type="text" id="INVOICE_DATE" name='INVOICE_DATE' data-type='date' data-vldt="notNull">
											<label class="label_inp0_v2 fw50  blue" for="INVOICE_DATE">${fn:escapeXml(emax:word("회계일자"))}</label>
										</div>
									</div>
								</form>
							</div>
						</div>

						<div class="" name="ea_contents">
							<div class="pd10">
								<form id="revenueForm" name="revenueForm">
<%--									<div class="form_object w22">--%>
<%--										<input class="form_inp0_v2" type="text" id="TOT_SUPPLY_AMT" readOnly style="text-align: right;">--%>
<%--										<label class="label_inp0_v2" for="TOT_SUPPLY_AMT">${fn:escapeXml(emax:word("공급가액"))}</label>--%>
<%--									</div>--%>
<%--									<div class="form_object w22">--%>
<%--										<input class="form_inp0_v2" type="text" id="TOT_TAX_AMT" readOnly style="text-align: right;">--%>
<%--										<label class="label_inp0_v2" for="TOT_TAX_AMT">${fn:escapeXml(emax:word("부가세"))}</label>--%>
<%--									</div>--%>
									<div class="form_object w22">
										<input class="form_inp0_v2" type="text" id="TOTAL_AMT" name='TOTAL_AMT' style="text-align: right;" readonly>
										<label class="label_inp0_v2" for="TOTAL_AMT">${fn:escapeXml(emax:word("합계금액"))}</label>
									</div>
								<h4 class="ea_bt_form_title">${fn:escapeXml(emax:word("상세내역"))}</h4>
								</form>
								<div class="w100 grid_inner_wrap0 mgt10 mgb10" id="revenueGrid" style="height:523px;"></div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>