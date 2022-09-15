<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>전표조회</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		html{height:calc(100% - 67px);min-height:unset;}
		#masterGrid{height:280px;}
		#detailGrid{height:278px;}
	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
	<div class="contents_header">
		<div class="content_header_inner">
			<div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value=""/>
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO">
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_MAKE_DATE" name="FR_MAKE_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_MAKE_DATE" name="TO_MAKE_DATE">
                <label class="label_inp0_v2" for="FR_MAKE_DATE">${fn:escapeXml(emax:word("작성일자"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="ACCOUNT_CODE" name="ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="ACCOUNT_NAME" name="ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2 fw50" type="text" id="FR_DR_AMT" name="FR_DR_AMT">

                <input class="form_inp1_v2 fw50" type="text" id="TO_DR_AMT" name="TO_DR_AMT">
                <label class="label_inp0_v2" for="FR_DR_AMT">${fn:escapeXml(emax:word("차변금액"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="TREASURER_EMP_TITLE" name="TREASURER_EMP_TITLE">
                <label class="label_inp0_v2" for="TREASURER_EMP_TITLE">${fn:escapeXml(emax:word("발의자"))}</label>
            </div>

            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_INVOICE_DATE" name="FR_INVOICE_DATE" data-vldt="notNull">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_INVOICE_DATE" name="TO_INVOICE_DATE" data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="FR_INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="INVOICE_STATE_CODE_DIV" id="INVOICE_STATE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="INVOICE_STATE_CODE_DIV">${fn:escapeXml(emax:word("전표상태"))}</label>
                <input type="hidden" id="INVOICE_STATE_CODE" name="INVOICE_STATE_CODE" value="" />
                <input type="text" name="INVOICE_STATE_CODE_DIV_TEXT" id="INVOICE_STATE_CODE_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
             <%--<div class="form_object w283 drop_box" name="FI_BI_INVOICE_SOURCE_ID_DIV" id="FI_BI_INVOICE_SOURCE_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="FI_BI_INVOICE_SOURCE_ID_DIV">${fn:escapeXml(emax:word("출처"))}</label>
				<input type="hidden" id="FI_BI_INVOICE_SOURCE_ID" name="FI_BI_INVOICE_SOURCE_ID" value="" onChange="f_formCombo('FI_BI_INVOICE_TYPE_ID')"/>
				<input type="text" name="FI_BI_INVOICE_SOURCE_ID_DIV_TEXT" id="FI_BI_INVOICE_SOURCE_ID_DIV_TEXT" value="" data-prev-val=""
					class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
            <div class="form_object w283 drop_box" name="FI_BI_INVOICE_TYPE_ID_DIV" id="FI_BI_INVOICE_TYPE_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_BI_INVOICE_TYPE_ID_DIV">${fn:escapeXml(emax:word("유형"))}</label>
                <input type="hidden" id="FI_BI_INVOICE_TYPE_ID" name="FI_BI_INVOICE_TYPE_ID" value="" />
                <input type="text" name="FI_BI_INVOICE_TYPE_ID_DIV_TEXT" id="FI_BI_INVOICE_TYPE_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>--%>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_APPR_DATE" name="FR_APPR_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_APPR_DATE" name="TO_APPR_DATE">
                <label class="label_inp0_v2" for="FR_APPR_DATE">${fn:escapeXml(emax:word("승인일자"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="CUST_ID" name="CUST_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CUST_NO" name="CUST_NO">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="CUST_NO"></button>
                <input class="form_inp1_v2 fw50" type="text" id="CUST_NAME" name="CUST_NAME" readonly>
                <label class="label_inp0_v2" for="CUST_NAME">${fn:escapeXml(emax:word("거래처코드"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2 fw50" type="text" id="FR_CR_AMT" name="FR_CR_AMT">

                <input class="form_inp1_v2 fw50" type="text" id="TO_CR_AMT" name="TO_CR_AMT">
                <label class="label_inp0_v2" for="FR_CR_AMT">${fn:escapeXml(emax:word("대변금액"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_INVOICE_TYPE_ID" name="FI_BI_INVOICE_TYPE_ID">
                <input class="form_pop1_v2" type="text" id="INVOICE_TYPE_NAME" name="INVOICE_TYPE_NAME" data-pop="true">
                <button type="button" class="form_popup_btn_v2" data-pop="true" data-id="INVOICE_TYPE_NAME"></button>
                <label class="label_inp0_v2" for="INVOICE_TYPE_NAME">${fn:escapeXml(emax:word("유형"))}</label>
            </div>
		</div>
	</div>
    <div class="contents_area">
    	<div class="w100 grid_inner_wrap1" id="masterGrid"></div>
        <div class="w100 grid_inner_wrap1" id="detailGrid" style="margin-top:16px;"></div>
    </div>
</div>
</body>
</html>