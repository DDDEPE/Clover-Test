<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>CC별 경비집계</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
		#masterGrid{height:100%;}
        #detailGrid{height:100%;}
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
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value=""/>
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283">
                <input class="form_date0_v2 fw50 monthpicker mtz-monthpicker-widgetcontainer" type="text" id="FR_MONTH" name="FR_MONTH" data-vldt="notNull">

                <input class="form_date1_v2 fw50 monthpicker mtz-monthpicker-widgetcontainer" type="text" id="TO_MONTH" name="TO_MONTH" data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="FR_MONTH">${fn:escapeXml(emax:word("조회년월"))}</label>
            </div>
			<div class="form_object w283 form_object_from">
				<input class="form_pop4_v2 fw50" type="text" id="FR_PROJECT_CODE" name="FR_PROJECT_CODE" data-pop="true">
				<button class="form_popup_btn2_v2" data-id="FR_PROJECT_CODE" name="FR_PROJECT_CODE" data-pop="true"></button>
				<input class="form_inp1_v2 fw50" type="text" id="FR_PROJECT_NM" name="FR_PROJECT_NM" readonly>
				<label class="label_inp0_v2" for="FR_PROJECT_NM">${fn:escapeXml(emax:word("프로젝트"))}</label>
			</div>
			<div class="form_object w283">
				<input class="form_pop4_v2 fw50" type="text" id="TO_PROJECT_CODE" name="TO_PROJECT_CODE" data-pop="true">
				<button class="form_popup_btn2_v2" data-id="TO_PROJECT_CODE" name="TO_PROJECT_CODE" data-pop="true"></button>
				<input class="form_inp1_v2 fw50" type="text" id="TO_PROJECT_NM" name="TO_PROJECT_NM" readonly>
			</div>
            <div class="form_object w283 drop_box" name="PRJ_TYPE_CODE_DIV" id="PRJ_TYPE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="PRJ_TYPE_CODE_DIV">${fn:escapeXml(emax:word("프로젝트구분"))}</label>
                <input type="hidden" id="PRJ_TYPE_CODE" name="PRJ_TYPE_CODE" value=""/>
                <input type="text" name="PRJ_TYPE_CODE_DIV_TEXT" id="PRJ_TYPE_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="">
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents">
        <div class="inner_tab_wrap2" id="inner_tab_wrap">
            <div class="grid_wrap">
                <ul class="inner_tabs">
                     <li class="inner_tab">
                         <a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("프로젝트 경비 집계"))}</a>
                     </li>
                     <li class="inner_tab">
                         <a class="tab_link" href="#inner_tab1" title="" <%--style="pointer-events: none;"--%>>${fn:escapeXml(emax:word("프로젝트별 세부원장"))}</a>
                     </li>
                 </ul>
                 <div class="inner_panel h600" id="inner_tab0">
                     <div class="w283" id="masterGrid" style = "width:1855px;margin-left:-25px;"></div>
                 </div>
                 <div class="inner_panel h600" id="inner_tab1">
                     <div class="w283" id="detailGrid" style = "width:1855px;margin-left:-25px;"></div>
                 </div>
            </div>
        </div>
    </div>
</div>
</body>
