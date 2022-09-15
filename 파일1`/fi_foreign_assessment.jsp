<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>예금외화평가</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        #masterGrid{width:100%;height:650px !important;}
        #detailGrid {height : 725px !important;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="form_header">
        <h3 class="form_title">${fn:escapeXml(emax:word("예금외화평가"))}</h3>
    </div>

    <div class="contents_area half_h_contents" style="width: 100%; height:812px; margin-top:-1px;">
        <div class="w19 floatL grid_inner_wrap0" style="width: 100%; height:796px;">
            <div class="content_header_inner">
				<div class="form_object w40 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                    <label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                    <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="">
                    <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                           class="drop_box_inp" autocomplete="off" placeholder="" />
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
	        	<div class="form_object w40" name="YEAR_DIV" id="YEAR_DIV">
                    <input class="form_date0_v2 fw100 yearpicker mtz-yearpicker-widgetcontainer" type="text" name="YEAR_DIV" id="YEAR" >
                    <label class="label_inp0_v2" for="YEAR_DIV">${fn:escapeXml(emax:word("년도"))}</label>
                </div>
            </div>

            <div id="div_btn"></div>

            <div class="grid_inner_wrap0" id="masterGrid" style="margin-top: 20px;"></div>

        </div>

        <div class="w80 floatR grid_inner_wrap0">
        	<div class="form_object w22">
                <input type="hidden" name="TR_BI_FUND_ID" id="TR_BI_FUND_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="TR_BI_FUND_CODE" name="TR_BI_FUND_CODE" autocomplete="off">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="TR_BI_FUND_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="TR_BI_FUND_NAME" name="TR_BI_FUND_NAME" readonly="" autocomplete="off">
                <label class="label_inp0_v2" for="TR_BI_FUND_NAME">${fn:escapeXml(emax:word("자금과목"))}</label>
            </div>

            <div id="div_btn">

            </div>
        	<%--<button type="button" class="basic mgt20">${fn:escapeXml(emax:word("일괄적용"))}</button>--%>
        	<div class="w283 mgt10" id="detailGrid" style="height:732px;"></div>
        </div>

    </div>
</div>
</body>
</html>