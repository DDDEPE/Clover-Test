<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	html{height:calc(100% - 67px);min-height:unset;}
    	#masterGrid{height:calc(28.5%);}
    	#detailGrid{height:calc(68.5%);}
        .contents_area{height:calc(100% - 90px);}
    </style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header half_header">
        <div class="content_header_inner">
			<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" />
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
            <div class="form_object w15">
                <input class="form_date0_v2 yearpicker" type="text" id="YEAR" name="YEAR" data-type="date">
                <label class="label_inp0_v2" for="YEAR">${fn:escapeXml(emax:word("연도"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_BANK_ID" name="COMM_CV_BANK_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="FI_BI_COST_CENTER_CODE" data-id="FI_BI_COST_CENTER_CODE" name="FI_BI_COST_CENTER_CODE" autocomplete="off">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="FI_BI_COST_CENTER_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="FI_BI_COST_CENTER_NAME" name="FI_BI_COST_CENTER_NAME" autocomplete="off" readonly="readonly">
                <label class="label_inp0_v2" for="FI_BI_COST_CENTER_CODE">${fn:escapeXml(emax:word("코스트센터"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="FI_BI_ACCOUNT_ID" name="FI_BI_ACCOUNT_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="FI_BI_ACCOUNT_CODE" data-id="FI_BI_ACCOUNT_CODE" name="FI_BI_ACCOUNT_CODE" autocomplete="off">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="FI_BI_ACCOUNT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="FI_BI_ACCOUNT_NAME" name="FI_BI_ACCOUNT_NAME" autocomplete="off" readonly="readonly">
                <label class="label_inp0_v2" for="FI_BI_ACCOUNT_CODE">${fn:escapeXml(emax:word("계정과목"))}</label>
            </div>
        </div>
    </div>
 
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
    	<div class="w100 grid_inner_wrap1" id="detailGrid"></div>
    </div>

</div>
</body>
</html>