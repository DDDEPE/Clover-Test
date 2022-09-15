<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>매입 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        html{height:calc(100% - 67px); min-height: unset;}
        #masterGrid{width:100%;height:580px;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header">
        <div class="content_header_inner">
            <form id="searchForm">
                <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                    <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                    <input type="hidden" name="FI_BI_DIVISION_ID" id="FI_BI_DIVISION_ID" onchange="javascript:f_getInvoiceSourceType();" data-vldt="notNull">
                    <input type="text" name="FI_BI_DIVISION_ID_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" name="INVOICE_NO" id="INVOICE_NO">
                    <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
                </div>
                <div class="form_object w283 drop_box" name="STATUS_CODE_DIV" id="STATUS_CODE_DIV" style="position: relative;">
                    <label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("상태"))}</label>
                    <input type="hidden" name="STATUS_CODE" id="STATUS_CODE">
                    <input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
                <div class="form_object w283 datepicker">
                    <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="INVOICE_DATE_FROM">

                    <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="INVOICE_DATE_TO">
                    <label class="label_inp0_v2" for="INVOICE_DATE_FROM">${fn:escapeXml(emax:word("전표일자"))}</label>
                </div>
                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" name="MNG_NO" id="MNG_NO">
                    <label class="label_inp0_v2" for="MNG_NO">${fn:escapeXml(emax:word("관리번호"))}</label>
                </div>
                <div class="form_object w283"></div>
                <div class="form_object w283">
                    <input type="hidden" name="FI_BI_ACCOUNT_ID" id="FI_BI_ACCOUNT_ID">
                    <input class="form_pop4_v2 fw50" type="text" id="FI_BI_ACCOUNT_CODE" name="FI_BI_ACCOUNT_CODE" onchange="javascript:f_removeTranValue(this);">
                    <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="FI_BI_ACCOUNT_CODE"></button>
                    <input class="form_inp1_v2 fw50" type="text" name="FI_BI_ACCOUNT_NAME" id="FI_BI_ACCOUNT_NAME" readonly>
                    <label class="label_inp0_v2" for="FI_BI_ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" name="COMM_CV_ID" id="COMM_CV_ID">
                    <input class="form_pop4_v2 fw50" type="text" id="COMM_CV_CODE" name="COMM_CV_CODE" onchange="javascript:f_removeTranValue(this);">
                    <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="COMM_CV_CODE"></button>
                    <input class="form_inp1_v2 fw50" type="text" name="COMM_CV_NAME" id="COMM_CV_NAME" readonly>
                    <label class="label_inp0_v2" for="COMM_CV_CODE">${fn:escapeXml(emax:word("거래처코드"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
                    <input class="form_pop4_v2" type="text" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" onchange="javascript:f_removeTranValue(this);">
                    <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_PROJECT_NAME"></button>
                    <label class="label_inp0_v2" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" name="FI_BI_COST_CENTER_ID" id="FI_BI_COST_CENTER_ID">
                    <input class="form_pop4_v2" type="text" id="FI_BI_COST_CENTER_NAME" name="FI_BI_COST_CENTER_NAME" onchange="javascript:f_removeTranValue(this);">
                    <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_BI_COST_CENTER_NAME"></button>
                    <label class="label_inp0_v2" for="FI_BI_COST_CENTER_NAME">${fn:escapeXml(emax:word("코스트센터"))}</label>
                </div>
                <div class="form_object w283 drop_box" name="FI_BI_VAT_ID_DIV" id="FI_BI_VAT_ID_DIV" style="position: relative;">
                    <label class="label_inp0_v2" for="FI_BI_VAT_ID_DIV">${fn:escapeXml(emax:word("세금코드"))}</label>
                    <input type="hidden" name="FI_BI_VAT_ID" id="FI_BI_VAT_ID">
                    <input type="text" name="FI_BI_VAT_ID_DIV_TEXT" id="FI_BI_VAT_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
            </form>
        </div>
    </div>
    <div class="contents_area half_h_contents">
        <div class="grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
</html>