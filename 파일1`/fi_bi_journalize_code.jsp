<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>자동분개 구분/유형 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp"%>
    <style>
    	#masterGrid{height:calc(100% - 45px) !important;}
    	#detailGrid{height:calc(100% - 45px) !important;}
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
                 <label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                 <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" />
                 <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                        class="drop_box_inp" autocomplete="off" placeholder="" />
                 <button type="button" class="drop_box_btn"></button>
                 <ul class="drop_box_list"></ul>
             </div>
		</div>
	</div>
    <div class="contents_area half_h_contents">
<!--     	<div class="w49_5 floatL grid_inner_wrap0" id="masterGrid"></div> -->
<!--         <div class="w49_5 floatR grid_inner_wrap0" id="detailGrid"></div> -->
        
        
<%--         <p class="inner_tab_title w49_5 floatL">${fn:escapeXml(emax:word("자동분개구분"))}</p> --%>
<%--                 <p class="inner_tab_title w49_5 floatR">${fn:escapeXml(emax:word("자동분개유형"))}</p> --%>
<!--                 <div class="w49_5 floatL" id="masterGrid" style="width: 100%; height: 100%;"></div> -->
<!--                 <div class="w49_5 floatR" id="detailGrid" style="width: 100%; height: 100%;"></div> -->
                
    	<div class=" floatL w48 mgr10" style="height:104%; width:45%;">
<%--     		<p class="inner_tab_title">${fn:escapeXml(emax:word("자동분개구분"))}</p> --%>
    		<p class="ea_bt_form_title">${fn:escapeXml(emax:word("자동분개구분"))}</p>
    		<div class="w283" id="masterGrid"></div>
    	</div>
    	<div class=" floatR w50 " style="height:104%; width:45%;">
<%--     		<p class="inner_tab_title">${fn:escapeXml(emax:word("자동분개유형"))}</p> --%>
    		<p class="ea_bt_form_title">${fn:escapeXml(emax:word("자동분개유형"))}</p>
    		<div class="w283" id="detailGrid"></div>
    	</div>
    </div>
</div>
</body>