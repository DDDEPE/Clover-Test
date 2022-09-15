<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>부가세원장 조회 및 수정</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	 <style>
		html{height:calc(100% - 67px); min-height: unset;}
		#masterGrid{width:100%;height:580px;}
	</style>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
			<form id="searchForm">
<!-- 				<div class="form_object w283 drop_box" name="COMM_BUSINESS_ID_DIV" id="COMM_BUSINESS_ID_DIV" style="position: relative;"> -->
<%-- 					<label class="label_inp0_v2" for="COMM_BUSINESS_ID_DIV">${fn:escapeXml(emax:word("사업장"))}</label> --%>
<!-- 					<input type="hidden" name="COMM_BUSINESS_ID" id="COMM_BUSINESS_ID"> -->
<!-- 					<input type="text" name="COMM_BUSINESS_ID_DIV_TEXT" id="COMM_BUSINESS_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" /> -->
<!-- 					<button type="button" class="drop_box_btn"></button> -->
<!-- 					<ul class="drop_box_list"></ul> -->
<!-- 				</div> -->
				<div class="form_object w283">
					<input class="form_date0_v2 yearpicker" type="text" id="YEAR" name="YEAR" maxlength="4" data-vldt="notNull" >
					<label class="label_inp0_v2 blue" for="YEAR">${fn:escapeXml(emax:word("귀속년도"))}</label>
				</div>
				<div class="form_object w283 drop_box" name="MON_CODE_DIV" id="MON_CODE_DIV" style="position: relative;">
					<label class="label_inp0_v2 blue" for="MON_CODE_DIV">${fn:escapeXml(emax:word("기수"))}</label>
					<input type="hidden" name="MON_CODE" id="MON_CODE" data-vldt="notNull">
					<input type="text" name="MON_CODE_DIV_TEXT" id="MON_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283 datepicker">
					<input class="form_date0_v2 fw50 form_datepicker" type="text" id="MAKE_DATE_FROM" name="MAKE_DATE_FROM" disabled>
					<span class="input_from">~</span>
					<input class="form_date1_v2 fw50 form_datepicker" type="text" id="MAKE_DATE_TO" name="MAKE_DATE_TO" disabled>
					<label class="label_inp0_v2" for="MAKE_DATE_FROM">${fn:escapeXml(emax:word("작성일자"))}</label>
				</div>
				<div class="form_object w283 drop_box" name="BUY_SALE_CODE_DIV" id="BUY_SALE_CODE_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="BUY_SALE_CODE_DIV">${fn:escapeXml(emax:word("거래구분"))}</label>
					<input type="hidden" name="BUY_SALE_CODE" id="BUY_SALE_CODE">
					<input type="text" name="BUY_SALE_CODE_DIV_TEXT" id="BUY_SALE_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283 drop_box" name="FI_BI_VAT_ID_DIV" id="FI_BI_VAT_ID_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="FI_BI_VAT_ID_DIV">${fn:escapeXml(emax:word("세금코드"))}</label>
					<input type="hidden" name="FI_BI_VAT_ID" id="FI_BI_VAT_ID">
					<input type="text" name="FI_BI_VAT_ID_DIV_TEXT" id="FI_BI_VAT_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283"></div>
				<div class="form_object w283 drop_box" name="REVERSE_CODE_DIV" id="REVERSE_CODE_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="REVERSE_CODE_DIV">${fn:escapeXml(emax:word("발행구분"))}</label>
					<input type="hidden" name="REVERSE_CODE" id="REVERSE_CODE">
					<input type="text" name="REVERSE_CODE_DIV_TEXT" id="REVERSE_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283 drop_box" name="TAX_REPORT_YN_DIV" id="TAX_REPORT_YN_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="TAX_REPORT_YN_DIV">${fn:escapeXml(emax:word("신고여부"))}</label>
					<input type="hidden" name="TAX_REPORT_YN" id="TAX_REPORT_YN">
					<input type="text" name="TAX_REPORT_YN_DIV_TEXT" id="TAX_REPORT_YN_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283 drop_box" name="ASSET_YN_DIV" id="ASSET_YN_DIV" style="position: relative;">
					<label class="label_inp0_v2" for="ASSET_YN_DIV">${fn:escapeXml(emax:word("자산여부"))}</label>
					<input type="hidden" name="ASSET_YN" id="ASSET_YN">
					<input type="text" name="ASSET_YN_DIV_TEXT" id="ASSET_YN_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283">
					<input class="form_inp0_v2" type="text" name="INVOICE_NO" id="INVOICE_NO">
					<label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
				</div>
				<div class="form_object w283">
					<input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
					<input class="form_pop1_v2" type="text" data-pop="true" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME">
					<button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_PROJECT_NAME"></button>
					<label class="label_inp0_v2" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
				</div>
			</form>
        </div>
    </div>
    <div class="contents_area">
    	<div class="grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>