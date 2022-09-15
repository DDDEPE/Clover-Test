<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>고정자산 관리</title>
<%@include file="/WEB-INF/jsp/common.jsp"%>
<style>
#masterGrid {
	height: 100%;
}

</style>
<script>
	 	$(document).ready(function () {
			$('#content_fold_btn').click(function(){
				$('#content_inner_hidden').slideToggle();
				$(this).text('접어두기');
			})    		
	});
</script>
</head>
<body>
	<div class="contents_wrap">
		<div class="contents_header_top">
			<h3 class="list_title">${fn:escapeXml(emax:word("고정자산 관리"))}</h3>
		</div>
		<div class="contents_header half_header">
			<div class="content_header_inner">
				<div class="form_object w283 drop_box" id="F_FI_BI_DIVISION_ID_DIV">
					<label class="label_inp0_v2" for="F_FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
					<input type="hidden" id="F_FI_BI_DIVISION_ID" name="F_FI_BI_DIVISION_ID">
					<input type="text" name="F_FI_BI_DIVISION_ID_DIV_TEXT" id="F_FI_BI_DIVISION_ID_DIV_TEXT" class="drop_box_inp">
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283">
					<input class="form_inp0_v2" type="text" id="F_ASSET_NO" name="F_ASSET_NO">
					<label class="label_inp0_v2" for="F_ASSET_NO">${fn:escapeXml(emax:word("자산번호"))}</label>
				</div>
				<div class="form_object w283">
					<input class="form_inp0_v2" type="text" id="F_ASSET_NAME" name="F_ASSET_NAME">
					<label class="label_inp0_v2" for="F_ASSET_NAME">${fn:escapeXml(emax:word("자산명"))}</label>
				</div>
				<div class="form_object w283">
	                <input class="form_pop4" type="text" data-id="F_ASSET_CATEGORY_NAME" id="F_ASSET_CATEGORY_NAME" name="F_ASSET_CATEGORY_NAME" value="" data-pop="true">
	                <button class="form_popup_btn_v2" type="button" data-id="F_ASSET_CATEGORY_NAME" data-pop="true"></button>
	                <input type="hidden" id="F_ASSET_CATEGORY_ID" name="F_ASSET_CATEGORY_ID" value="">
	                <label class="label_inp0_v2" for="F_ASSET_CATEGORY_NAME">${fn:escapeXml(emax:word("자산분류"))}</label>
	            </div>
				<div class="form_object w283 datepicker" >
					<input class="form_date0_v2 fw50 form_datepicker" type="text" id="F_FR_DATE" name="F_FR_DATE" data-type="date">
					<span class="input_from">~</span>
					<input class="form_date1_v2 fw50 form_datepicker" type="text" id="F_TO_DATE" name="F_TO_DATE" data-type="date">
					<label class="label_inp0_v2" for="F_FR_DATE">${fn:escapeXml(emax:word("취득일자"))}</label>
				</div>
				<div class="form_object w283 drop_box" id="F_ASSET_STATE_CODE_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="F_ASSET_STATE_CODE_DIV">${fn:escapeXml(emax:word("자산상태"))}</label>
					<input type="hidden" id="F_ASSET_STATE_CODE" name="F_ASSET_STATE_CODE" value="" /> 
					<input type="text" name="F_ASSET_STATE_CODE_DIV_TEXT" id="F_ASSET_STATE_CODE_DIV_TEXT" class="drop_box_inp" >
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
			</div>
		</div>
		<div class="contents_area half_h_contents">
			<div class="content">
				<div class="w24 floatL grid_inner_wrap0" id="masterGrid"></div>
				<div class="w75 floatR">
					<form id='masterForm'>
						<div class="content_inner_v2">
							<input class="form_inp0_v2" type="text" id="AA_ASSET_ID" name="AA_ASSET_ID" readonly hidden>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" readonly>
								<label class="label_inp0_v2" for="FI_BI_DIVISION_ID">${fn:escapeXml(emax:word("회계단위"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="AA_ASSET_NO" name="AA_ASSET_NO" readonly>
								<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("자산번호"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="ASSET_NAME" name="ASSET_NAME" readonly>
								<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("자산명"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="ASSET_MANAGER" name="ASSET_MANAGER" readonly>
								<label class="label_inp0_v2" for="ASSET_MANAGER">${fn:escapeXml(emax:word("관리자"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="ASSET_STATE_CODE" name="ASSET_STATE_CODE" readonly>
								<label class="label_inp0_v2" for="ASSET_STATE_CODE">${fn:escapeXml(emax:word("자산상태"))}</label>					

<!-- 								<input class="form_inp0 fw50" type="text" id="TAX_SERVICE_LIFE" name="TAX_SERVICE_LIFE" readonly> -->
<%-- 								<label class="label_inp0_v2" for="TAX_SERVICE_LIFE">${fn:escapeXml(emax:word("내용연수(월)"))}</label> --%>
<!-- 								<input class="form_inp1 fw50" type="text" id="TAX_REPAYMENT_RATE" name="TAX_REPAYMENT_RATE" readonly> -->
<%-- 								<label class="label_inp2_v2" for="TAX_REPAYMENT_RATE">${fn:escapeXml(emax:word("상각율-세무"))}</label> --%>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="TOTAL_QTY" name="TOTAL_QTY" data-type="money" readonly >
								<label class="label_inp0_v2" for="TOTAL_QTY">${fn:escapeXml(emax:word("수량"))}</label>								
							</div>
<!-- 							<div class="form_object w210"> -->
<!-- 								<input class="form_inp0_v2" type="text" id="USE_TYPE_CODE" name="USE_TYPE_CODE" readonly> -->
<%-- 								<label class="label_inp0_v2" for="USE_TYPE_CODE">${fn:escapeXml(emax:word("신규/중고"))}</label> --%>
<!-- 							</div> -->
							<div class="form_object w210 datepicker" >
								<input class="form_date0_v2 form_datepicker" type="text" id="RECEIVE_DATE" name="RECEIVE_DATE" data-type="date" disabled>
								<label class="label_inp0_v2" for="RECEIVE_DATE">${fn:escapeXml(emax:word("취득일자"))}</label>
							</div>
							<div class="form_object w210 datepicker" >
								<input class="form_date0_v2 form_datepicker" type="text" id="DISPOSAL_DATE" name="DISPOSAL_DATE" data-type="date" disabled>
								<label class="label_inp0_v2" for="DISPOSAL_DATE">${fn:escapeXml(emax:word("처분일자"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="REPAYMENT_CODE" name="REPAYMENT_CODE" readonly>
								<label class="label_inp0_v2" for="REPAYMENT_CODE">${fn:escapeXml(emax:word("상각법"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2 fw50" type="text" id="SERVICE_LIFE" name="SERVICE_LIFE" readonly>
								<label class="label_inp0_v2" for="SERVICE_LIFE">${fn:escapeXml(emax:word("내용연수(월)"))}</label>
								<input class="form_inp1_v2 fw50" type="text" id="REPAYMENT_RATE" name="REPAYMENT_RATE" readonly>
								<label class="label_inp2_v2" for="REPAYMENT_RATE">${fn:escapeXml(emax:word("상각율"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="AA_BI_CATEGORY_MASTER_NAME" name="AA_BI_CATEGORY_MASTER_NAME" readonly>
								<label class="label_inp0_v2" for="AA_BI_CATEGORY_MASTER_NAME">${fn:escapeXml(emax:word("자산분류"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="AA_BI_CATEGORY_DETAIL_LV1_ID" name="AA_BI_CATEGORY_DETAIL_LV1_ID" readonly >
								<label class="label_inp0_v2" for="AA_BI_CATEGORY_DETAIL_LV1_ID">${fn:escapeXml(emax:word("대분류"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="AA_BI_CATEGORY_DETAIL_LV2_ID" name="AA_BI_CATEGORY_DETAIL_LV2_ID" readonly >
								<label class="label_inp0_v2" for="AA_BI_CATEGORY_DETAIL_LV2_ID">${fn:escapeXml(emax:word("중분류"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="AA_BI_CATEGORY_DETAIL_LV3_ID" name="AA_BI_CATEGORY_DETAIL_LV3_ID" readonly >
								<label class="label_inp0_v2" for="AA_BI_CATEGORY_DETAIL_LV3_ID">${fn:escapeXml(emax:word("소분류"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="FI_RECEIVE_COST" name="FI_RECEIVE_COST"  data-type="money" style="text-align:right" readonly>
								<label class="label_inp0_v2" for="FI_RECEIVE_COST">${fn:escapeXml(emax:word("취득원가"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="FI_DEPRECIATION_SUM_COST" name="FI_DEPRECIATION_SUM_COST" data-type="money" readonly>
								<label class="label_inp0_v2" for="FI_DEPRECIATION_SUM_COST">${fn:escapeXml(emax:word("상각누계"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="FI_DEFECT_SUM_COST" name="FI_DEFECT_SUM_COST" data-type="money" readonly>
								<label class="label_inp0_v2" for="FI_DEFECT_SUM_COST">${fn:escapeXml(emax:word("손상누계"))}</label>
							</div>
							<div class="form_object w210">
								<input class="form_inp0_v2" type="text" id="FI_UNDEPRECIATED_BALANCE" name="FI_UNDEPRECIATED_BALANCE" data-type="money" readonly>
								<label class="label_inp0_v2" for="FI_UNDEPRECIATED_BALANCE">${fn:escapeXml(emax:word("미상각잔액"))}</label>
							</div>
						</div>
					</form>
						<div class="inner_tab_wrap2" id="inner_tab_wrap">
							<ul class="inner_tabs">
								<li class="inner_tab">
									<a class="tab_link"	href="#projectGrid" title="">${fn:escapeXml(emax:word("프로젝트정보"))}</a>
								</li>
								<li class="inner_tab" id="tab1">
									<a class="tab_link"	href="#fiGrid" title="" id="tab1_a">${fn:escapeXml(emax:word("회계처리내역"))}</a>
								</li>
								<li class="inner_tab" id="tab1">
									<a class="tab_link"	href="#taxGrid" title="" id="tab1_a">${fn:escapeXml(emax:word("세무처리내역"))}</a>
								</li>
								<li class="inner_tab" id="tab1">
									<a class="tab_link"	href="#inner_tab3" title="" id="tab1_a">${fn:escapeXml(emax:word("분류정보"))}</a>
								</li>
							</ul>
							<div class="inner_panel" id="projectGrid" style="height:294px; margin-left:-25px; width: 1439px;"></div>
							<div class="inner_panel" id="fiGrid" style="height:294px; margin-left:-25px; width: 1439px;"></div>
							<div class="inner_panel" id="taxGrid" style="height:294px; margin-left:-25px; width: 1439px;"></div>
							<div class="inner_panel pdt10" id="inner_tab3"style="height:294px;">
								<form id="categoryForm">
									<div class="form_object w210">
										<input class="form_inp0_v2" type="text" id="REPAYMENT_TYPE_CODE" name="REPAYMENT_TYPE_CODE" readonly>
										<label class="label_inp0_v2" for="REPAYMENT_TYPE_CODE">${fn:escapeXml(emax:word("유형/무형"))}</label>
									</div>
									<div class="form_object w210">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("자산취득계정"))}</label>
										<input class="form_inp0_v2 fw50" type="text" id="RECEIVE_ACCOUNT_CODE" name="RECEIVE_ACCOUNT_CODE" readonly>
										<input class="form_inp1_v2 fw50" type="text" id="RECEIVE_ACCOUNT_NAME" name="RECEIVE_ACCOUNT_NAME" readonly>
									</div>
									<div class="form_object w210">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("매각이익계정"))}</label>
										<input class="form_inp0_v2 fw50" type="text" id="SALE_CREDIT_ACCOUNT_CODE" name="SALE_CREDIT_ACCOUNT_CODE" readonly>
										<input class="form_inp1_v2 fw50" type="text" id="SALE_CREDIT_ACCOUNT_NAME" name="SALE_CREDIT_ACCOUNT_NAME" readonly>
									</div>
									<div class="form_object w210">
										<input class="form_inp0_v2" type="text" id="MEMORANDUM_VALUE" name="MEMORANDUM_VALUE" data-type="money" readonly>
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("비망가액"))}</label>
									</div>
									<div class="form_object w210">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("상각누계계정"))}</label>
										<input class="form_inp0_v2 fw50" type="text" id="REPAYMENT_SUM_ACCOUNT_CODE" name="REPAYMENT_SUM_ACCOUNT_CODE" readonly>
										<input class="form_inp1_v2 fw50" type="text" id="REPAYMENT_SUM_ACCOUNT_NAME" name="REPAYMENT_SUM_ACCOUNT_NAME" readonly>
									</div>
									<div class="form_object w210">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("매각손실계정"))}</label>
										<input class="form_inp0_v2 fw50" type="text" id="SALE_LOSS_ACCOUNT_CODE" name="SALE_LOSS_ACCOUNT_CODE" readonly>
										<input class="form_inp1_v2 fw50" type="text" id="SALE_LOSS_ACCOUNT_NAME" name="SALE_LOSS_ACCOUNT_NAME" readonly>
									</div>
									<div class="form_object w210">
										<input class="form_inp0_v2" type="text" id="TAX_MEMORANDUM_VALUE" name="TAX_MEMORANDUM_VALUE" data-type="money" readonly>
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("비망가액-세무"))}</label>
									</div>
									<div class="form_object w210">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("손상누계계정"))}</label>
										<input class="form_inp0_v2 fw50" type="text" id="DEFECT_SUM_ACCOUNT_CODE" name="DEFECT_SUM_ACCOUNT_CODE" readonly>
										<input class="form_inp1_v2 fw50" type="text" id="DEFECT_SUM_ACCOUNT_NAME" name="DEFECT_SUM_ACCOUNT_NAME" readonly>
									</div>
									<div class="form_object w210">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("매각채권계정"))}</label>
										<input class="form_inp0_v2 fw50" type="text" id="SALE_BOND_ACCOUNT_CODE" name="SALE_BOND_ACCOUNT_CODE" readonly>
										<input class="form_inp1_v2 fw50" type="text" id="SALE_BOND_ACCOUNT_NAME" name="SALE_BOND_ACCOUNT_NAME" readonly>
									</div>
									<div class="form_object w210">
									<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("폐기손실계정"))}</label>
									<input class="form_inp0_v2 fw50" type="text" id="DISPOSAL_LOSS_ACCOUNT_CODE" name="DISPOSAL_LOSS_ACCOUNT_CODE" readonly>
									<input class="form_inp1_v2 fw50" type="text" id="DISPOSAL_LOSS_ACCOUNT_NAME" name="DISPOSAL_LOSS_ACCOUNT_NAME" readonly>
									</div>
								</form>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>