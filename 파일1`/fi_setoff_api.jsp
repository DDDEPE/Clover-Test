<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>상계API 승인요청</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        html{height:calc(100% - 67px);min-height:unset;}
        #masterGrid{height:275px;}
        #detailGrid{height:290px;}
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
                <input class="form_inp0_v2" type="text" id="DOCUMENT_NO" name="DOCUMENT_NO">
                <label class="label_inp0_v2" for="DOCUMENT_NO">${fn:escapeXml(emax:word("문서번호"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="SETOFF_NO" name="SETOFF_NO">
                <label class="label_inp0_v2" for="SETOFF_NO">${fn:escapeXml(emax:word("상계처리번호"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_INVOICE_DATE" name="FR_INVOICE_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_INVOICE_DATE" name="TO_INVOICE_DATE">
                <label class="label_inp0_v2" for="FR_INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="DOC_STATE_CODE_DIV" id="DOC_STATE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="DOC_STATE_CODE_DIV">${fn:escapeXml(emax:word("문서상태"))}</label>
                <input type="hidden" id="DOC_STATE_CODE" name="DOC_STATE_CODE" value="" />
                <input type="text" name="DOC_STATE_CODE_DIV_TEXT" id="DOC_STATE_CODE_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            
            <div class="form_object w283"></div>
            
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO">
                <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
            </div>
            <div class="form_object w283" id="CONFIRMER_DIV">
                <input type="hidden" id="CONFIRMER_ID" name="CONFIRMER_ID">
                <input class="form_pop1_v2" type="text" id="CONFIRMER_NAME" name="CONFIRMER_NAME" data-pop="true" disabled>
                <button type="button" class="form_popup_btn_v2R" data-pop="true" data-id="CONFIRMER_NAME" disabled></button>
                <label class="label_inp0_v2" for="CONFIRMER_NAME">${fn:escapeXml(emax:word("확정자"))}</label>
            </div>
            <%--<div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="CONFIRMER_NAME" name="CONFIRMER_NAME" readOnly>
                <label class="label_inp0_v2" for="CONFIRMER_NAME">${fn:escapeXml(emax:word("확정자"))}</label>
            </div>--%>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_CONFIRM_DATE" name="FR_CONFIRM_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_CONFIRM_DATE" name="TO_CONFIRM_DATE">
                <label class="label_inp0_v2" for="FR_CONFIRM_DATE">${fn:escapeXml(emax:word("확정일자"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="ORG_INVOICE_NO" name="ORG_INVOICE_NO">
                <label class="label_inp0_v2" for="ORG_INVOICE_NO">${fn:escapeXml(emax:word("원전표번호"))}</label>
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