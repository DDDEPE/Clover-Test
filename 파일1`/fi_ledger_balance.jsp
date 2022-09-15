<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>계정별 잔액장</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
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
            <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value=""/>
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 form_datepicker" type="text" id="STD_DATE" name="STD_DATE" data-vldt="notNull" data-type="date">
                <label class="label_inp0_v2 blue" for="STD_DATE">${fn:escapeXml(emax:word("기준일자"))}</label>
            </div>
            <%--<div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DATE" name="FR_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DATE" name="TO_DATE">
                <label class="label_inp0_v2" for="FR_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>--%>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="ACCOUNT_CODE" name="ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="ACCOUNT_NAME" name="ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
            </div>
            
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO">
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>
            
            <div class="form_object w283">
                <input type="hidden" id="CUST_ID" name="CUST_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CUST_NO" name="CUST_NO">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="CUST_NO"></button>
                <input class="form_inp1_v2 fw50" type="text" id="CUST_NAME" name="CUST_NAME" readonly>
                <label class="label_inp0_v2" for="CUST_NAME">${fn:escapeXml(emax:word("거래처코드"))}</label>
            </div>
            
            <div class="form_object w283"></div>

            <div class="form_object w283 form_object_from">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="FR_ACCOUNT_CODE" name="FR_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="FR_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="FR_ACCOUNT_NAME" name="FR_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="FR_ACCOUNT_CODE">${fn:escapeXml(emax:word("계정구간"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="TO_ACCOUNT_CODE" name="TO_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="TO_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="TO_ACCOUNT_NAME" name="TO_ACCOUNT_NAME" readonly>
            </div>
            <div class="form_object w283">
                <input class="form_check0" type="checkbox" id="PROCESSING_YN" name="PROCESSING_YN">
                <label class="label_checkbox0_v2" for="PROCESSING_YN">${fn:escapeXml(emax:word("미결건 조회"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area">
        <div class="w283 grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
