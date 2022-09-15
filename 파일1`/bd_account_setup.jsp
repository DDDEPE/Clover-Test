<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>예산관리 계정설정</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
   		#masterGrid{height:100%;}
   	</style>
</head>
<body>
<div class="contents_wrap">
     <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("예산관리계정설정"))}</h3>
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
			<div class="form_object w283">
                <input class="form_date0_v2 monthpicker" type="text" id="PERIOD" name="PERIOD" data-vldt="notNull" data-type="date" onchange="javascript:f_checkPeriod(this);">
                <label class="label_inp0_v2 blue" for="PERIOD">${fn:escapeXml(emax:word("조회월"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_date0_v2 monthpicker" type="text" id="COPY_PERIOD" name="COPY_PERIOD" data-type="date" onchange="javascript:f_checkPeriod(this);">
                <label class="label_inp0_v2" for="COPY_PERIOD">${fn:escapeXml(emax:word("복사월"))}</label>
            </div>
		</div>
	</div>
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
