<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>관리손익 배부적수 생성</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        #masterGrid{height:640px;}
        #detailGrid{height:640px;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("관리손익 배부적수 생성"))}</h3>
    </div>
    <div class="contents_header half_header">
        <div class="content_header_inner">
            <div class="form_object w283">
                <input class="form_date0_v2 monthpicker" type="text" id="PERIOD" name="PERIOD" data-type="date" onchange="javascript:f_formCombo();">
                <label class="label_inp0_v2" for="PERIOD">${fn:escapeXml(emax:word("기준월"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="ALLOCATION_ID_DIV" id="ALLOCATION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="ALLOCATION_ID_DIV">${fn:escapeXml(emax:word("배부기준"))}</label>
                <input type="hidden" name="ALLOCATION_ID" id="ALLOCATION_ID">
                <input type="text" name="ALLOCATION_ID_TEXT" id="ALLOCATION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents"style="margin-top:-15px;">
        <div class="w35 grid_inner_wrap0 mgt10 mgr10 floatL">
            <p class="ea_bt_form_title2">${fn:escapeXml(emax:word("배부기준"))}</p>
            <div id="masterGrid"></div>
        </div>
        <div class="w64 grid_inner_wrap0 mgt10 floatR" style="width:63% !important">
            <p class="ea_bt_form_title2">${fn:escapeXml(emax:word("배부적수"))}</p>
            <div id="detailGrid"></div>
        </div>
    </div>
</div>
</body>