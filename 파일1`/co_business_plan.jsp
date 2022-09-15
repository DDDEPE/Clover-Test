<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>사업계획입력</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
   		.grid_inner_wrap0{height:580px !important; width: 1855px !important; margin-left:-25px;}
   	</style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
	<div class="contents_header half_header">
		<div class="content_header_inner">
            <form id="searchForm">
                <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
					<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
					<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" data-vldt="notNull" />
					<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
					<button type="button" class="drop_box_btn" >
					</button>
					<ul class="drop_box_list"></ul>
				</div>
                <div class="form_object w283">
                    <input class="form_date0_v2 yearpicker" type="text" id="YEAR" name="YEAR" maxlength="4" data-vldt="notNull" >
                    <label class="label_inp0_v2 blue" for="YEAR">${fn:escapeXml(emax:word("기준연도"))}</label>
                </div>
            </form>
		</div>
	</div>
    <div class="contents_area">
        <div class="inner_tab_wrap2" id="inner_tab_wrap" style="height:599px !important;">
            <div class="grid_wrap">
                <ul class="inner_tabs">
                    <li class="inner_tab">
                        <a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("코스트센터"))}</a>
                    </li>
                    <li class="inner_tab">
                        <a class="tab_link" href="#inner_tab1" title="">${fn:escapeXml(emax:word("사업부"))}</a>
                    </li>
                </ul>
            </div>
            <div class="inner_panel" id="inner_tab0" style="height:655px; height:599px !important;" >
                <div class="w100 grid_inner_wrap0" id="masterGrid" style="width: 100%; height:calc(100% - 10px);"></div>
            </div>
            <div class="inner_panel" id="inner_tab1" style="height:655px; height:655px; height:599px !important;">
                <div class="w100 grid_inner_wrap0" id="groupGrid" style="width: 100%; height:calc(100% - 10px);"></div>
            </div>

        </div>

    </div>
</div>
</body>