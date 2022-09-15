<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지출결의 전표생성</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		#masterGrid{height:calc(48.5%);}
		#detailGrid{height:calc(48.5%);}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("수입결의 전표생성"))}</h3>
    </div>
    <div class="contents_header half_header">
    	<div class="content_header_inner">
            <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" name="FI_BI_DIVISION_ID" id="FI_BI_DIVISION_ID">
                <input type="text" name="FI_BI_DIVISION_ID_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" data-vldt="notNull" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="INVOICE_DATE_FROM" data-vldt="notNull">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="INVOICE_DATE_TO" data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="DOC_STATE_CODE_DIV" id="DOC_STATE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="DOC_STATE_CODE_DIV">${fn:escapeXml(emax:word("문서상태"))}</label>
                <input type="hidden" name="DOC_STATE_CODE" id="DOC_STATE_CODE">
                <input type="text" name="DOC_STATE_CODE_DIV_TEXT" id="DOC_STATE_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
<!--             <div class="form_object w283"> -->
<%--                 <label class="label_inp0_v2" for="S_DOC_STATE_CODE_DIV">${fn:escapeXml(emax:word("문서상태"))}</label> --%>
<!--                 <div class="select_box" id="S_DOC_STATE_CODE_DIV"> -->
<!--                     <button type="button" class="select_btn" value=""></button> -->
<!--                     <input type="hidden" id="S_DOC_STATE_CODE"> -->
<!--                     <ul class="select_drop"></ul> -->
<!--                 </div> -->
<!--             </div> -->
            <div class="form_object w283">
	            <input class="form_radio1" type="radio" id="entire" name="radio_close" value="1"> 
    	        <label class="label_radio0" for="entire">
    	        	<span>${fn:escapeXml(emax:word("생성"))}</span>
    	        </label> 
                <input class="form_radio1" type="radio" id="opened" name="radio_close" value="0">
                <label class="label_radio0" for="opened">
                	<span>${fn:escapeXml(emax:word("미생성"))}</span>
                </label>
                <input class="form_radio1" type="radio" id="closed" name="radio_close" value="" checked>
                <label class="label_radio0" for="closed">
                	<span>${fn:escapeXml(emax:word("전체"))}</span>
                </label>
                 <label class="label_inp0_v2" for="entire">${fn:escapeXml(emax:word("전표생성여부"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
		<div class="w100 grid_inner_wrap1" id="detailGrid" style="margin-top:4px;"></div>         	
    </div>
	
</div>
</body>

