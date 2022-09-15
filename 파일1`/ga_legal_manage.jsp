<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>관리자산 고정자산 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
        #masterGrid {
            height: 61.5%;
        }

        #detailGrid {
            height: 43.5%;
        }

        #fileDiv {
            height: 43.5%;
        }
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header half_header">
        <div class="content_header_inner">
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="S_START_FROM" name="S_START_FROM">
                <span class="input_from">~</span>
                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="S_START_TO" name="S_START_TO">
                <label class="label_inp0_v2" for="S_START_FROM">${fn:escapeXml(emax:word("요청기간"))}</label>
            </div>
            <div class="form_object w283">
				<input class="form_pop4_v2 fw50" data-pop="true" data-id="S_DEPT_CODE" type="text" id="S_DEPT_CODE" name="S_DEPT_CODE" autocomplete="off">
				<button class="form_popup_btn2_v2" data-pop="true" data-id="S_DEPT_CODE"></button>
				<input class="form_inp1_v2 fw50" type="text" id="S_DEPT_NAME" name="S_DEPT_NAME" readonly autocomplete="off">
				<label class="label_inp0_v2" for="S_DEPT_CODE">${fn:escapeXml(emax:word("의뢰부서"))}</label>
			</div>
			<div class="form_object w283">
				<input type="hidden" id="HR_EMPLOYEE_MASTER_ID">
				<input class="form_pop4_v2 fw50" type="text" data-pop="true" data-id="S_EMP_NO" id="S_EMP_NO" name="S_EMP_NO" autocomplete="off">
				<button class="form_popup_btn2_v2" data-pop="true" data-id="S_EMP_NO"></button>
				<label class="label_inp0_v2" for="S_EMP_NO">${fn:escapeXml(emax:word("의뢰자"))}</label>
				<input class="form_inp1_v2 fw50" type="text" id="EMP_TITLE" name="EMP_TITLE" autocomplete="off" readonly="readonly">
				</div>
            <div class="form_object w283 drop_box" name="REQUEST_CODE_DIV" id="REQUEST_CODE_DIV">
				<label class="label_inp0_v2" for="REQUEST_CODE_DIV">${fn:escapeXml(emax:word("요청구분"))}</label>
				<input type="hidden" id="REQUEST_CODE" name="REQUEST_CODE" value="" /> 
				<input type="text" name="REQUEST_CODE_DIV_TEXT" id="REQUEST_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
            <%--            <div class="form_object w15">--%>
            <%--                <input class="form_inp0_v2" type="text" id="REQUEST_STATUS" name="REQUEST_STATUS">--%>
            <%--                <label class="label_inp0_v2" for="REQUEST_STATUS">${fn:escapeXml(emax:word("검토상태"))}</label>--%>
            <%--            </div>--%>
        </div>
    </div>
    <div class="contents_area">
        <div class="w100 grid_inner_wrap0" id="masterGrid"></div>
        <div class="w65 grid_inner_wrap0" id="detailGrid"></div>
        <div class="w35 grid_inner_wrap1 floatR" id="fileDiv">
            <div class="sing_step3">
                <span class="sign_step_title">${fn:escapeXml(emax:word("첨부파일"))}</span>
                <span class="sign_step_info">각 파일당 파일크기는 200MB이하여야 합니다</span>
                <button type="button" class="appr_file_btn" id="attachedFileBtn"></button>
                <input type="file" id="attachedFile" multiple="multiple" style="display:none;">
                <ul class="sign_file_wrap" id="attachedFileArea">
                </ul>
            </div>
        </div>
    </div>
</div>
</body>