<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>예산관리 기준정보등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
     <style>
   		#masterGrid{height:100%;}
   		#detailGrid{height:100%;}
   	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("예산관리기준정보등록"))}</h3>
    </div>
	<div class="contents_header half_header">
		<div class="content_header_inner">
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
    	<div class="w50 floatL grid_inner_wrap0" id="masterGrid"></div>
        <div class="w49 floatR grid_inner_wrap0" id="detailGrid"></div>
    </div>
</div>
</body>