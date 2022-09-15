<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>투자유가증권 평가</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        #masterGrid{width:100%;height:480px;}
        #detailGrid{width:1484px;height:672px !important; margin-top:16px !important; margin-left:-32px !important;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="form_header">
        <h3 class="form_title">${fn:escapeXml(emax:word("투자유가증권 평가"))}</h3>
    </div>

    <div class="contents_area" style="width: 100%; height:750px; margin-top:0;">
        <div class="w19 floatL grid_inner_wrap0" style="width: 100%; height:790px;">
            <div class="content_header_inner">
            <div class="w33 floatL">
      		<div class="content_inner_v2" style="width:353px; min-height:0px; margin-bottom: 0px;">
	        <form id="masterForm">
                <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                    <label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                    <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="">
                    <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                           class="drop_box_inp" autocomplete="off" placeholder="" />
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
                <div class="form_object w283" name="YEAR_DIV" id="YEAR_DIV">
                    <input class="form_date0_v2 fw100 yearpicker mtz-yearpicker-widgetcontainer" type="text" name="YEAR_DIV" id="YEAR" >
                    <label class="label_inp0_v2" for="YEAR_DIV">${fn:escapeXml(emax:word("년도"))}</label>
                </div>
               </form>
               <div id="div_btn" style="margin-left:-5px;"></div>
            </div>
            </div>
            </div>

            <div class="inner_tab_wrap0" id="masterGrid" style="margin-top: 17px;"></div>

        </div>

        <div class="w80 floatR grid_inner_wrap0" style="height: 100px !important; margin-left:-19px !important;">
      		<div class="contents_header half_header">
			<div class="content_header_inner">
            <div class="form_object w283 drop_box" id="INVESTMENT_DIVISION_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="INVESTMENT_DIVISION_CODE_DIV">${fn:escapeXml(emax:word("투자유가증권분류"))}</label>
                <input type="hidden" id="INVESTMENT_DIVISION_CODE" name="INVESTMENT_DIVISION_CODE">
                <input type="text" name="INVESTMENT_DIVISION_CODE_DIV_TEXT" id="INVESTMENT_DIVISION_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>

            <div class="form_object w283 drop_box" id="VE_METHOD_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="VE_METHOD_CODE_DIV">${fn:escapeXml(emax:word("평가방법"))}</label>
                <input type="hidden" id="VE_METHOD_CODE" name="VE_METHOD_CODE">
                <input type="text" name="VE_METHOD_CODE_DIV_TEXT" id="VE_METHOD_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>

            <div class="form_object w283 drop_box" id="INVESTMENT_TYPE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="INVESTMENT_TYPE_CODE_DIV">${fn:escapeXml(emax:word("상품유형"))}</label>
                <input type="hidden" id="INVESTMENT_TYPE_CODE" name="INVESTMENT_TYPE_CODE">
                <input type="text" name="INVESTMENT_TYPE_CODE_DIV_TEXT" id="INVESTMENT_TYPE_CODE_DIV_TEXT" class="drop_box_inp">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>

            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="INVESTMENT_NAME"name="INVESTMENT_NAME">
                <label class="label_inp0_v2" for="INVESTMENT_NAME">${fn:escapeXml(emax:word("상품명"))}</label>
            </div>
        </div>
        <div class="w283 floatL " id="detailGrid" style="margin-top:16px;">
        </div>
        </div>
        </div>

    </div>
</div>
</body>
</html>