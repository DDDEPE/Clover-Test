<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>회계단위등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        #masterGrid{height:100%;}
        #detailGrid{height:100%;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header half_header">
        <div class="content_header_inner">
            <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="">
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283">
                <input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
                <input type="hidden" name="FI_BI_COST_CENTER_ID" id="FI_BI_COST_CENTER_ID">
                <input class="form_pop1_v2" type="text" data-pop="true" id="PROJECT_NAME" name="PROJECT_NAME" data-vldt="notNull">
                <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="PROJECT_NAME"></button>
                <label class="label_inp0_v2 blue" for="PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_date0_v2 monthpicker" type="text" id="S_MONTH" name="S_MONTH">
                <label class="label_inp0_v2" for="S_MONTH">${fn:escapeXml(emax:word("조회기간"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents">
        <div class="w60 floatL grid_inner_wrap0" id="masterGrid" style="width:59% !important;"></div>
        <div class="w40 floatR grid_inner_wrap0" id="detailGrid"></div>
    </div>
</div>
</body>