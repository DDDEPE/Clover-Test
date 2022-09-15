<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지급카드이력조회</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        html{height:calc(100% - 67px);min-height:unset;}
        #masterGrid{height:calc(100% - 45px);}
        #detailGrid{height:calc(100% - 67px);}
    </style>
</head>
<body>
<div class="contents_wrap" style="height: auto;">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header half_header">
        <div class="content_header_inner">
            <div class="form_object w283 drop_box" name="FI_DIVISION_ID_DIV" id="FI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" name="FI_DIVISION_ID" id="FI_DIVISION_ID">
                <input type="text" name="FI_DIVISION_ID_TEXT" id="FI_DIVISION_ID_DIV_TEXT" value="" data-vldt="notNull" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="INVOICE_DATE_FROM" data-vldt="notNull">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="INVOICE_DATE_TO" data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="INVOICE_DATE_FROM">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_ACCOUNT_ID" name="FI_BI_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="FI_BI_ACCOUNT_CODE" name="FI_BI_ACCOUNT_CODE">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="FI_BI_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="FI_BI_ACCOUNT_NAME" name="FI_BI_ACCOUNT_NAME" readonly>
                <label class="label_inp0_v2" for="FI_BI_ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="CARD_NO" name="CARD_NO">
                <label class="label_inp0_v2" for="CARD_NO">${fn:escapeXml(emax:word("카드번호"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="number" id="ACCOUNT_NO" name="ACCOUNT_NO">
                <label class="label_inp0_v2" for="ACCOUNT_NO">${fn:escapeXml(emax:word("계좌번호"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="MEMBER_NAME" name="MEMBER_NAME">
                <label class="label_inp0_v2" for="MEMBER_NAME">${fn:escapeXml(emax:word("예금주명"))}</label>
            </div>

        </div>
    </div>
    <div class="contents_area half_h_contents">
        <div class="w100" style="height:350px;">
            <p class="ea_bt_form_title2">${fn:escapeXml(emax:word("카드번호별이력조회"))}</p>
            <div id="masterGrid"></div>
        </div>
        <div class="w100" style="height:349px;margin-top:4px;">
            <p class="ea_bt_form_title2">${fn:escapeXml(emax:word("카드번호별상세조회"))}</p>
            <div id="detailGrid"></div>
        </div>
    </div>
</div>
</body>
</html>