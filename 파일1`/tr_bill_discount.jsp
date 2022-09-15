<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>받을어음할인</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
/* 		html{height:calc(100% - 67px); min-height: unset;} */
		#masterGrid{height:660px;}
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
				<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DISCOUNT_DATE" name="FR_DISCOUNT_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DISCOUNT_DATE" name="TO_DISCOUNT_DATE">
                <label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("할인일자"))}</label>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="FR_DUE_DATE" name="FR_DUE_DATE">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="TO_DUE_DATE" name="TO_DUE_DATE">
                <label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("만기일자"))}</label>
            </div>
<!--             <div class="form_object w283"></div> -->
<!--             <div class="form_object w283"></div> -->
<!--             <div class="form_object w283"></div> -->
			<div class="form_object w283">
                <input class="form_pop4_v2" type="text" data-id="BILL_NO" id="BILL_NO" name="BILL_NO" data-pop="true">
                <button class="form_popup_btn_v2" type="button" data-id="BILL_NO" data-pop="true"></button>
                <input type="hidden" id="TR_BILL_RECEIVABLE_ID" name="TR_BILL_RECEIVABLE_ID">
                <label class="label_inp0_v2" for="BILL_NO">${fn:escapeXml(emax:word("어음번호"))}</label>
            </div>
<!--             <div class="form_object w283"> -->
<!--                 <input class="form_pop4_v2" type="text" data-id="CV_NAME" id="CV_NAME" name="CV_NAME" data-pop="true"> -->
<!--                 <button class="form_popup_btn_v2" type="button" data-id="CV_NAME" data-pop="true"></button> -->
<!--                 <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID"> -->
<%--                 <label class="label_inp0_v2" for="CV_NAME">${fn:escapeXml(emax:word("금융기관"))}</label> --%>
<!--             </div> -->
            <div class="form_object w283 drop_box" name="STATUS_CODE_DIV" id="STATUS_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="STATUS_CODE_DIV">${fn:escapeXml(emax:word("할인상태"))}</label>
				<input type="hidden" id="STATUS_CODE" name="STATUS_CODE" value="" /> 
				<input type="text" name="STATUS_CODE_DIV_TEXT" id="STATUS_CODE_DIV_TEXT" value="" data-prev-val=""
					class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
        </div>
    </div>
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap0" id="masterGrid"></div>
    </div>
</div>
</body>
</html>