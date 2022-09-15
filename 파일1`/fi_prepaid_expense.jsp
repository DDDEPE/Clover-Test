<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>선급비용관리</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	html{height:calc(100% - 67px);min-height:unset;}
    	#masterGrid{height:280px;}
    	#detailGrid{height:280px;}
    	
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
					<label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
					<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" /> 
					<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
						class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
			</div>		 	
		 	<div class="form_object w283">
                <input type="hidden" id="S_CUST_ID" name="S_CUST_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="S_CUST_NO" data-id="S_CUST_NO" name="S_CUST_NO" autocomplete="off">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="S_CUST_NO"></button>
                <input class="form_inp1_v2 fw50" type="text" id="S_CUST_NAME" name="S_CUST_NAME" autocomplete="off" readonly="readonly">
                <label class="label_inp0_v2" for="S_CUST_NO">${fn:escapeXml(emax:word("거래처코드"))}</label>
            </div>
            
            
            <div class="form_object w283">
               	<input type="hidden" id="S_COST_CENTER_ID" name="S_COST_CENTER_ID">
                <input class="form_pop4_v2 fw50" type="text" id="S_COST_CENTER_CODE" name="S_COST_CENTER_CODE"  data-pop="true" data-id="S_COST_CENTER_CODE" autocomplete="off">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="S_COST_CENTER_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="S_COST_CENTER_NAME" name="S_COST_CENTER_NAME" autocomplete="off" readonly="readonly">
                <label class="label_inp0_v2" for="S_COST_CENTER_CODE">${fn:escapeXml(emax:word("코스트센터"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" name="S_FI_PROJECT_ID" id="S_FI_PROJECT_ID">
                <input class="form_pop1_v2" type="text" data-pop="true" id="S_FI_PROJECT_NAME" name="S_FI_PROJECT_NAME">
                <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="S_FI_PROJECT_NAME"></button>
                <label class="label_inp0_v2" for="S_FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw100 form_datepicker" type="text" id="START_DATE" name="START_DATE_FROM">
                <label class="label_inp0_v2" for="START_DATE">${fn:escapeXml(emax:word("시작일자"))}</label>
            </div>
             <div class="form_object w283"></div>
           
             <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw100 form_datepicker" type="text" id="END_DATE" name="END_DATE_FROM">
                <label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("종료일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="STATE_CODE_DIV" id="STATE_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="STATE_CODE_DIV">${fn:escapeXml(emax:word("상태"))}</label>
				<input type="hidden" id="STATE_CODE" name="STATE_CODE" value="" /> 
				<input type="text" name="STATE_CODE_DIV_TEXT" id="STATE_CODE_DIV_TEXT" value="" data-prev-val=""
					class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
        </div>
    </div>
    <div class="contents_area">
    	<div class="w283 grid_inner_wrap0" id="masterGrid"></div>
    	<div class="w283 grid_inner_wrap1" id="detailGrid" style="margin-top:4px;"></div>
    </div>
</div>
</body>
</html>