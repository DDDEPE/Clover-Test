<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>선급기간명세서</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
	#masterGrid{width:100%;height:667px !important;}
	</style>
</head>
<body>

<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("선급비용 명세서"))}</h3>
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
			 
			<div class="form_object w283" name="YEAR_DIV" id="YEAR_DIV">
	                <input class="form_date0_v2 fw100 yearpicker mtz-yearpicker-widgetcontainer" type="text" name="YEAR_DIV" id="YEAR" >
	                <label class="label_inp0_v2" for="YEAR_DIV">${fn:escapeXml(emax:word("조회기간"))}</label>
	        </div>
        </div>
    </div>
    <div class="contents_area">
    	<div class="w283 grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
</html>