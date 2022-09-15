<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>전자세금계산서 발행</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        html{height:calc(100% - 67px);min-height:unset;}
        #masterGrid{height:56.5%;}
        #detailGrid{height:37.5%;}
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
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" onChange="f_formCombo('FI_BI_INVOICE_SOURCE_ID')"/>
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DATE" name="FR_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DATE" name="TO_DATE">
                <label class="label_inp0_v2" for="FR_DATE">${fn:escapeXml(emax:word("발행일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="FI_BI_VAT_ID_DIV" id="FI_BI_VAT_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_BI_VAT_ID_DIV">${fn:escapeXml(emax:word("세금코드"))}</label>
                <input type="hidden" id="FI_BI_VAT_ID" name="FI_BI_VAT_ID" value=""/>
                <input type="text" name="FI_BI_VAT_ID_DIV_TEXT" id="FI_BI_VAT_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder=""/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" name="INVOICE_STATE_CODE_DIV" id="INVOICE_STATE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="INVOICE_STATE_CODE_DIV">${fn:escapeXml(emax:word("전표상태"))}</label>
                <input type="hidden" id="INVOICE_STATE_CODE" name="INVOICE_STATE_CODE" value="" />
                <input type="text" name="INVOICE_STATE_CODE_DIV_TEXT" id="INVOICE_STATE_CODE_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="CUST_ID" name="CUST_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CUST_NO" name="CUST_NO">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="CUST_NO"></button>
                <input class="form_inp1_v2 fw50" type="text" id="CUST_NAME" name="CUST_NAME" readonly>
                <label class="label_inp0_v2" for="CUST_NAME">${fn:escapeXml(emax:word("거래처코드"))}</label>
            </div>
            <div class="form_object w283"></div>
            <div class="form_object w283">
                <input type="hidden" id="FI_PROJECT_ID" name="FI_PROJECT_ID">
                <input class="form_pop1_v2" type="text" id="PROJECT_NM" name="PROJECT_NM" data-pop="true" data-vldt="notNull">
                <button type="button" class="form_popup_btn_v2" data-pop="true" data-id="PROJECT_NM"></button>
                <label class="label_inp0_v2 blue" for="PROJECT_NM">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>

            <div class="form_object w283 drop_box" name="ISSUE_YN_DIV" id="ISSUE_YN_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="ISSUE_YN_DIV">${fn:escapeXml(emax:word("발행여부"))}</label>
                <input type="hidden" id="ISSUE_YN" name="ISSUE_YN" value=""/>
                <input type="text" name="ISSUE_YN_DIV_TEXT" id="ISSUE_YN_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" name="REVERSE_CODE_DIV" id="REVERSE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="REVERSE_CODE_DIV">${fn:escapeXml(emax:word("발행유형구분"))}</label>
                <input type="hidden" id="REVERSE_CODE" name="REVERSE_CODE" value=""/>
                <input type="text" name="REVERSE_CODE_DIV_TEXT" id="REVERSE_CODE_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
        </div>
    </div>
    <div class="contents_area ">
        <div class="w100 grid_inner_wrap1" id="masterGrid"></div>
        <div class="w100 grid_inner_wrap1" id="detailGrid" style="margin-top:16px;"></div>
    </div>
</div>
</body>
</html>