<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>계정과목 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
    	#masterGrid{height:40.5%;}
    	#detailGrid{height:45.5%;}
    	#masterTreeGrid{height:40.5%;}
    	#detailTreeGrid{height:45.5%;}
    </style>
</head>
<body>
<div class="contents_wrap">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
	<div class="contents_header half_header">
		<div class="content_header_inner">
			<div class="form_object w283">
                 <input class="form_inp0_v2" type="text" id="ACCOUNT_CODE" name="ACCOUNT_CODE">
                 <label class="label_inp0_v2" for="ACCOUNT_CODE">${fn:escapeXml(emax:word("계정코드"))}</label>
            </div>
            <div class="form_object w283">
                 <input class="form_inp0_v2" type="text" id="ACCOUNT_NAME" name="ACCOUNT_NAME">
                 <label class="label_inp0_v2" for="ACCOUNT_NAME">${fn:escapeXml(emax:word("계정명"))}</label>
            </div>
			<div class="form_object w283 drop_box" id="ACCOUNT_TYPE_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="ACCOUNT_TYPE_CODE_DIV">${fn:escapeXml(emax:word("계정유형"))}</label>
				<input type="hidden" id="ACCOUNT_TYPE_CODE" name="ACCOUNT_TYPE_CODE">
				<input type="text" name="ACCOUNT_TYPE_CODE_DIV_TEXT" id="ACCOUNT_TYPE_CODE_DIV_TEXT" class="drop_box_inp">
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
			<div class="form_object w283 drop_box" id="REC_CODE_DIV" style="position: relative;">
				<label class="label_inp0_v2" for="REC_CODE_DIV">${fn:escapeXml(emax:word("상계유형"))}</label>
				<input type="hidden" id="REC_CODE" name="REC_CODE">
				<input type="text" name="REC_CODE_DIV_TEXT" id="REC_CODE_DIV_TEXT" class="drop_box_inp">
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
		</div>
	</div>
	<div class="contents_area half_h_contents">
		<div class="inner_tab_wrap2" id="inner_tab_wrap" style="height: 660px;">
             <div class="grid_wrap">
                 <ul class="inner_tabs">
                     <li class="inner_tab">
                         <a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("목록보기"))}</a>
                     </li>
                     <li class="inner_tab">
                         <a class="tab_link" href="#inner_tab1" title="">${fn:escapeXml(emax:word("트리보기"))}</a>
                     </li>
                 </ul>
                 <div class="inner_panel h661" id="inner_tab0">
                     <div class="w100" id="masterGrid"></div>
                     <div class="w100 mgt10" id="detailGrid"></div>
                 </div>
                 <div class="inner_panel h661" id="inner_tab1">
                     <div class="w100" id="masterTreeGrid"></div>
                     <div class="w100 mgt10" id="detailTreeGrid"></div>
                 </div>
             </div>
     	</div>
	</div>
</div>
</body>
