<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>프로젝트 조회</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	html{height:calc(100% - 67px);min-height:unset;}
    	#masterGrid{height:580px;}
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
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value=""/>
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" name="STATUS_CODE_DIV" id="STATUS_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("진행상태"))}</label>
                <input type="hidden" id="STATUS_CODE" name="STATUS_CODE" value=""/>
                <input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
                <button type="button" class="drop_box_btn">
                </button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283">
                <input type="hidden" name="FI_PROJECT_ID" id="FI_PROJECT_ID">
                <input class="form_pop1_v2" type="text" data-pop="true" id="FI_PROJECT_NAME" name="FI_PROJECT_NAME" data-vldt="notNull">
                <button class="form_popup_btn_v2" type="button" data-pop="true" data-id="FI_PROJECT_NAME"></button>
                <label class="label_inp0_v2 blue" for="FI_PROJECT_NAME">${fn:escapeXml(emax:word("프로젝트"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="PROJECT_CODE">
                <label class="label_inp0_v2" for="PROJECT_CODE">${fn:escapeXml(emax:word("프로젝트코드"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_inp0_v2" type="text" id="PROJECT_NM">
                <label class="label_inp0_v2" for="PROJECT_NM">${fn:escapeXml(emax:word("프로젝트명"))}</label>
            </div>
            <div class="form_object w283"></div>
            <div class="form_object w283">
                <input type="hidden" id="REP_CV_ID" name="REP_CV_ID">
                <input class="form_pop1_v2" type="text" id="REP_CV_NAME" name="REP_CV_NAME" data-pop="true">
                <button type="button" class="form_popup_btn_v2R" data-pop="true" data-id="REP_CV_NAME"></button>
                <label class="label_inp0_v2" for="REP_CV_NAME">${fn:escapeXml(emax:word("대표거래처"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                <input class="form_pop1_v2" type="text" id="CV_NAME" name="CV_NAME" data-pop="true">
                <button type="button" class="form_popup_btn_v2R" data-pop="true" data-id="CV_NAME"></button>
                <label class="label_inp0_v2" for="CV_NAME">${fn:escapeXml(emax:word("발주거래처"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="PROJECT_PM_EMP_ID" name="PROJECT_PM_EMP_ID">
                <input class="form_pop1_v2" type="text" id="PROJECT_PM_EMP_TITLE" name="PROJECT_PM_EMP_TITLE" data-pop="true">
                <button type="button" class="form_popup_btn_v2R" data-pop="true" data-id="PROJECT_PM_EMP_TITLE"></button>
                <label class="label_inp0_v2" for="PROJECT_PM_EMP_TITLE">${fn:escapeXml(emax:word("담당PM"))}</label>
            </div>
            <div class="form_object w13">
                <label class="label_inp0_v2" for="PRJ_TYPE_CODE_DIV">${fn:escapeXml(emax:word("프로젝트구분"))}</label>
                <div class="select_box" id="PRJ_TYPE_CODE_DIV">
                    <button type="button" class="select_btn" value=""></button>
                    <input type="hidden" id="PRJ_TYPE_CODE">
                    <ul class="select_drop">
                    </ul>
                </div>
            </div>
		</div>
	</div>
    <div class="contents_area ">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
</html>