<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지출결의 전표생성</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		#expense1Grid{width:1856px;height:46%;}
		#expense2Grid{width:1856px;height:calc(303px - 8px);}
		#one1Grid{width:1856px;height:46%;}
		#one2Grid{width:1856px;height:calc(303px - 8px);}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("지출결의 전표생성"))}</h3>
    </div>
    <div class="contents_header half_header">
        <div class="content_header_inner">
            <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" name="FI_BI_DIVISION_ID" id="FI_BI_DIVISION_ID">
                <input type="text" name="FI_BI_DIVISION_ID_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 datepicker">
                <input class="form_date0_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_FROM" name="INVOICE_DATE_FROM">

                <input class="form_date1_v2 fw50 form_datepicker" type="text" id="INVOICE_DATE_TO" name="INVOICE_DATE_TO">
                <label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("전표일자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="FI_EA_DOC_TYPE_DIV" id="FI_EA_DOC_TYPE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="FI_EA_DOC_TYPE_DIV">${fn:escapeXml(emax:word("문서구분"))}</label>
                <input type="hidden" name="FI_EA_DOC_TYPE" id="FI_EA_DOC_TYPE">
                <input type="text" name="FI_EA_DOC_TYPE_DIV_TEXT" id="FI_EA_DOC_TYPE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" id="S_DOC_STATE_CODE_DIV">
                <label class="label_inp0_v2">${fn:escapeXml(emax:word("문서상태"))}</label>
                <button type="button" class="drop_box_inp"></button>
                <input type="hidden" id="S_DOC_STATE_CODE">
                <div class="drop_check_list">
                    <ul class="check_option_list"></ul>
                </div>
            </div>
            <div class="form_object w283">
	            <input class="form_radio1" type="radio" id="entire" name="radio_close" value="1"  autocomplete="off">
    	        <label class="label_radio0" for="entire">
    	        	<span>${fn:escapeXml(emax:word("생성"))}</span>
    	        </label>
                <input class="form_radio1" type="radio" id="opened" name="radio_close" value="0" autocomplete="off">
                <label class="label_radio0" for="opened">
                	<span>${fn:escapeXml(emax:word("미생성"))}</span>
                </label>
                <input class="form_radio1" type="radio" id="closed" name="radio_close" value="ALL" checked="" autocomplete="off">
                <label class="label_radio0" for="closed">
                	<span>${fn:escapeXml(emax:word("전체"))}</span>
                </label>
                 <label class="label_inp0_v2" for="entire">${fn:escapeXml(emax:word("전표생성여부"))}</label>
            </div>
            <div class="form_object w283">
                <input class="form_pop4_v2 fw50" data-pop="true" data-id="S_DEPT_CODE" type="text" id="S_DEPT_CODE" name="S_DEPT_CODE" autocomplete="off">
                <button class="form_popup_btn2_v2" data-pop="true" data-id="S_DEPT_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="S_DEPT_NAME" name="S_DEPT_NAME" readonly autocomplete="off">
                <label class="label_inp0_v2" for="S_DEPT_CODE">${fn:escapeXml(emax:word("부서"))}</label>
            </div>
        </div>
    </div>
    <div class="contents_area ">
    	<div class="inner_tab_wrap2" style="height:110%; margin-top:-5px;" id="inner_tab_wrap">
    		<div class="grid_wrap">
                <ul class="inner_tabs">
                	<li class="inner_tab">
                         <a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("지출결의서(일반)"))}</a>
                     </li>
                     <li class="inner_tab">
                         <a class="tab_link" href="#inner_tab1" title="">${fn:escapeXml(emax:word("지출결의서(건별)"))}</a>
                     </li>
                </ul>
                <div class="inner_panel h661" id="inner_tab0" style="height:644px !important;">
                	<div class="w283" id="expense1Grid" style="margin-left:-25px;"></div>
		    		<div class="w283" id="expense2Grid" style="margin-left:-25px;"></div>
                </div>
                <div class="inner_panel h661" id="inner_tab1" style="height:644px !important;">
                	<div class="w283" id="one1Grid" style="margin-left:-25px;"></div>
		    		<div class="w283" id="one2Grid" style="margin-left:-25px;"></div>
                </div>
            </div>                
    	</div>
    </div>
</div>
</body>
</html>