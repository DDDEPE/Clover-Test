<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>배부실행 룰 생성</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
   		#masterGrid{height:296px;}
   		#target1Grid{height:296px;}
   		#target1StdGrid{height:296px;}
   		#target2Grid{height:296px;}
   		#target2StdGrid{height:296px;}
   	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("배부실행 룰 생성"))}</h3>
    </div>
	<div class="contents_header half_header">
		<div class="content_header_inner">
			<div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("배부원회계단위"))}</label>
				<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" data-vldt="notNull" />
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
				<button type="button" class="drop_box_btn" >
				</button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283">
				<input class="form_date0_v2 monthpicker" type="text" id="PERIOD" name="PERIOD" data-type="date">
				<label class="label_inp0_v2" for="PERIOD">${fn:escapeXml(emax:word("기준월"))}</label>
			</div>
		</div>
	</div>
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("배부원"))}</p>
    		<div id="masterGrid"></div>
    	</div>
    	<div class="w49_5 grid_inner_wrap0 mgr10 floatL" style="margin-top:-10px;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("배부처I"))}</p>
    		<div id="target1Grid"></div>
    	</div>
    	<div class="w49_5 grid_inner_wrap0 floatR" style="margin-top:-10px;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("배부처II(프로젝트레벨실적배부)"))}</p>
    		<div id="target2Grid"></div>
    	</div>
    	<div class="w49_5 grid_inner_wrap0 mgr10 floatL" style="margin-top:-10px;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("배부처I배부기준"))}</p>
    		<div id="target1StdGrid"></div>
    	</div>
    	<div class="w49_5 grid_inner_wrap0 floatR" style="margin-top:-10px;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("배부처II배부기준"))}</p>
    		<div id="target2StdGrid"></div>
    	</div>
    </div>
</div>
</body>