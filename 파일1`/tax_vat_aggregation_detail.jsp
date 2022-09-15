<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>신고부속서류 집계 상세조회</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		#masterGrid{height:calc(100% - 60px);}
		#detailGrid{height:calc(100% - 60px);}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
    <div class="contents_header half_header">
		<div class="content_header_inner">
			<%-- <div class="form_object w283 drop_box" name="S_COMM_BUSINESS_ID_DIV" id="S_COMM_BUSINESS_ID_DIV" style="position: relative;">
				<label class="label_inp0_v2 blue" for="S_COMM_BUSINESS_ID_DIV">${fn:escapeXml(emax:word("사업장"))}</label>
				<input type="hidden" id="S_COMM_BUSINESS_ID" name="S_COMM_BUSINESS_ID" value="" data-vldt="notNull" />
				<input type="text" name="S_COMM_BUSINESS_ID_DIV_TEXT" id="S_COMM_BUSINESS_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
				<button type="button" class="drop_box_btn" >
				</button>
				<ul class="drop_box_list"></ul>
			</div> --%>
			<div class="form_object w283">
				<input class="form_date0_v2 yearpicker" type="text" id="S_TAX_YEAR" name="S_TAX_YEAR" data-vldt="notNull" >
				<label class="label_inp0_v2 blue" for="S_TAX_YEAR">${fn:escapeXml(emax:word("귀속년도"))}</label>
			</div>
			<div class="form_object w283 drop_box" name="S_TAX_QUARTER_DIV" id="S_TAX_QUARTER_DIV" style="position: relative;">
				<label class="label_inp0_v2 blue" for="S_TAX_QUARTER_DIV">${fn:escapeXml(emax:word("기수"))}</label>
				<input type="hidden" id="S_TAX_QUARTER" name="S_TAX_QUARTER" value="" data-vldt="notNull" />
				<input type="text" name="S_TAX_QUARTER_DIV_TEXT" id="S_TAX_QUARTER_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
				<button type="button" class="drop_box_btn" >
				</button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 drop_box" name="S_TAX_DOC_TYPE_CODE_DIV" id="S_TAX_DOC_TYPE_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2 blue" for="S_TAX_DOC_TYPE_CODE_DIV">${fn:escapeXml(emax:word("신고구분"))}</label>
				<input type="hidden" id="S_TAX_DOC_TYPE_CODE" name="S_TAX_DOC_TYPE_CODE" value="" data-vldt="notNull" />
				<input type="text" name="S_TAX_DOC_TYPE_CODE_DIV_TEXT" id="S_TAX_DOC_TYPE_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder=""/>
				<button type="button" class="drop_box_btn" >
				</button>
				<ul class="drop_box_list"></ul>
			</div>
		</div>
    </div>
    <div class="contents_area half_h_contents">
    	<div class="w100 grid_inner_wrap1_v2" style="height:54%;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("부가세 구분별 집계"))}</p>
			<div id="masterGrid"></div>
    	</div>
    	<div class="w100 grid_inner_wrap1_v2" style="margin-top:-15px;height:54%;">
    		<p class="ea_bt_form_title2">${fn:escapeXml(emax:word("세부 현황"))}</p>
			<div id="detailGrid"></div>
    	</div>
    </div>
</div>
</body>
</html>