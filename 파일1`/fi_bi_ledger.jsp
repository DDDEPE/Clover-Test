<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>재무제표 설정</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
		#masterGrid{height:48.5%;}
		#detailGrid{height: calc(100% - 45px);}
		#acctGrid{height: calc(100% - 45px);}
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="contents_header_top">
        <h3 class="list_title">${fn:escapeXml(emax:word("재무제표 설정"))}</h3>
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
                <input class="form_date0_v2 yearpicker" type="text" id="STD_YEAR" name="STD_YEAR" maxlength="4" data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="STD_YEAR">${fn:escapeXml(emax:word("적용년도"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="FS_TYPE_CODE_DIV" id="FS_TYPE_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FS_TYPE_CODE_DIV">${fn:escapeXml(emax:word("재무양식"))}</label>
                <input type="hidden" id="FS_TYPE_CODE" name="FS_TYPE_CODE" value=""/>
                <input type="text" name="FS_TYPE_CODE_DIV_TEXT" id="FS_TYPE_CODE_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
            <div class="form_object w283 drop_box" name="ACCOUNT_REF_YN_DIV" id="ACCOUNT_REF_YN_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="ACCOUNT_REF_YN_DIV">${fn:escapeXml(emax:word("회계계정참조"))}</label>
                <input type="hidden" id="ACCOUNT_REF_YN" name="ACCOUNT_REF_YN" value=""/>
                <input type="text" name="ACCOUNT_REF_YN_DIV_TEXT" id="ACCOUNT_REF_YN_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder=""/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
        </div>
    </div>
    <div class="contents_area half_h_contents">
		<div class="w100 grid_inner_wrap1" id="masterGrid"></div>    	
		<div class="w49_5 floatL mgr10 grid_inner_wrap1" style="height:48.5%;margin-top:16px;">
			<p class="ea_bt_form_title">${fn:escapeXml(emax:word("공식"))}</p>
			<div id="detailGrid"></div>
		</div>    	
		<div class="w49_5 floatR grid_inner_wrap1" style="height:48.5%;margin-top:16px;">
			<p class="ea_bt_form_title">${fn:escapeXml(emax:word("계정과목"))}
                <button type="button" class="basic floatR" style="margin-top:-15px;" onClick="f_add_setupDetail();"> <-- </button>
            </p>
			<div id="acctGrid"></div>
		</div>    	
    </div>
</div>
</body>
