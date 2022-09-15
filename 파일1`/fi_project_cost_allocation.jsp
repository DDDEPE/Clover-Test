<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>프로젝트 진행률관리</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        #masterGrid{width:100%;height:518px !important;}
        #detailGrid{width:100%;height:780px !important;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="form_header">
        <h3 class="form_title"></h3>
    </div>

    <div class="contents_area" style="width: 100%; height:815px; margin-top:0;">
        <div class="w19 floatL grid_inner_wrap0" style="width: 100%; height:518px;">
            <div class="content_header_inner">
                <form id="masterForm">
                    <div class="form_object w40 dropdown" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                        <label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                        <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="">
                        <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                               class="form_pop4 hiddenText" autocomplete="off" placeholder="" />
                        <button type="button" class="btn_search"></button>
                        <ul class="select_drop" style="margin-top: 50px;"></ul>
                    </div>
                    <div class="form_object w40" name="YEAR_DIV" id="YEAR_DIV">
                        <input class="form_date0_v2 fw100 yearpicker mtz-yearpicker-widgetcontainer" type="text" name="YEAR_DIV" id="YEAR" >
                        <label class="label_inp0_v2" for="YEAR_DIV">${fn:escapeXml(emax:word("조회기간"))}</label>
                    </div>
                    <div class="form_object w85">
                        <input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
                        <input type="hidden" name="FI_BI_COST_CENTER_ID" id="FI_BI_COST_CENTER_ID">
                        <input class="form_pop1_v2" type="text" data-pop="true" id="PROJECT_NAME" name="PROJECT_NAME" data-vldt="notNull">
                        <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="PROJECT_NAME"></button>
                        <label class="label_inp0_v2 blue" for="PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
                    </div>
                </form>
            </div>


            <div id="div_btn" style="margin-left:-5px;">

            </div>


            <div class="grid_inner_wrap0" id="masterGrid" style="margin-top: 20px;"></div>

        </div>

        <div class="w80 floatR grid_inner_wrap0">
            <div class="w100 mgt10" id="detailGrid" style="height:750px;"></div>
        </div>

    </div>
</div>
</body>
</html>