<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>재무회계 월손익정보 이관</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
   		#masterGrid{height:632px !important; margin-left: -11px; width: 1856px;}
        #mappingGrid{height:632px !important; margin-left: -11px; width: 1856px; display: none;}
        #signifierGrid{height:632px !important; margin-left: -11px; width: 1856px; display: none;}
   	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("재무회계 월손익정보 이관"))}</h3>
    </div>
	<div class="contents_header half_header">
		<div class="content_header_inner">
            <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
					<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
					<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" data-vldt="notNull" />
					<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
					<button type="button" class="drop_box_btn" >
					</button>
					<ul class="drop_box_list"></ul>
				</div>
            <div class="form_object w15">
                <input class="form_date0_v2 monthpicker" type="text" id="PERIOD" name="PERIOD" data-vldt="notNull" data-type="date">
                <label class="label_inp0_v2 blue" for="PERIOD">${fn:escapeXml(emax:word("기준월"))}</label>
            </div>
		</div>
	</div>
    <div class="contents_area half_h_contents">
        <div class="inner_tab_wrap2_v2 pd10">
            <p class="ea_bt_form_title2" name="masterGridEL">${fn:escapeXml(emax:word("월손익정보"))}</p>
            <div class="inner_panel" id="masterGrid" name="masterGridEL" style="padding-top:0;padding:0;height:650px;"></div>
            <p class="ea_bt_form_title2" name="mappingGridEL" style="display: none">${fn:escapeXml(emax:word("매핑검증"))}</p>
            <div class="inner_panel h631" id="mappingGrid" name="mappingGridEL"></div>
            <p class="ea_bt_form_title2" name="signifierGridEL" style="display: none">${fn:escapeXml(emax:word("기표검증"))}</p>
            <div class="inner_panel h631" id="signifierGrid" name="signifierGridEL"></div>
        </div>
    </div>
</div>
</body>