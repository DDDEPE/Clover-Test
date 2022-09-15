<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>자금일보</title>
<%@include file="/WEB-INF/jsp/common.jsp"%>
<style>
#planGrid {
	height: 49.5%;
	margin-left:-25px;
	margin-top: -15px;
	width: 1856px !important;
}

#planInGrid {
	height: 51.5%;
	margin-left:-25px;
	width: 923px !important;
}

#planOutGrid {
	height: 51.5%;
	margin-right:-25px;
	width: 923px !important;
}

#masterGrid {
	height: 49.5%;
	margin-left:-25px;
	margin-top: -15px;
	width: 1856px !important;
}

#masterInGrid {
	height: 51.5%;
	margin-left:-25px;
	width: 923px !important;
}

#masterOutGrid {
	height: 51.5%;
	margin-right:-25px;
	width: 923px !important;
}

#infoGrid {
	height: 100%;
	height: 593px;
	margin-left:-25px;
	margin-top: -15px;
	width: 1856px !important;
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
				<div class="form_object w283 drop_box" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
					<label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
					<input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="" data-vldt="notNull"/>
					<input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283 datepicker">
	                <input class="form_date0_v2 form_datepicker" type="text" id="STANDARD_DATE" name="STANDARD_DATE" data-vldt="notNull" autocomplete="off">
	                <label class="label_inp0_v2 blue" for="STANDARD_DATE">${fn:escapeXml(emax:word("기준일자"))}</label>
	            </div>
			</div>
		</div>
		<div class="contents_area half_h_contents">
			<div class="inner_tab_wrap2" id="inner_tab_wrap">
				<div class="grid_wrap">
					<ul class="inner_tabs">
						<li class="inner_tab"><a class="tab_link" href="#inner_tab2" title="">${fn:escapeXml(emax:word("자금계획"))}</a></li>
						<li class="inner_tab"><a class="tab_link" href="#inner_tab1" title="">${fn:escapeXml(emax:word("자금일보"))}</a></li>
						<li class="inner_tab"><a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("기준정보"))}</a></li>
					</ul>
					<div class="inner_panel h661" id="inner_tab2" style="height:600px !important">
						<div class="w100" id="planGrid"></div>
						<div class="w49_5 floatL mgt10" id="planInGrid"></div>
						<div class="w49_5 floatR mgt10" id="planOutGrid"></div>
					</div>
					<div class="inner_panel h661" id="inner_tab1" style="height:600px !important">
						<div class="w100" id="masterGrid"></div>
						<div class="w49_5 floatL mgt10" id="masterInGrid"></div>
						<div class="w49_5 floatR mgt10" id="masterOutGrid"></div>
					</div>
                 <div class="inner_panel h661" id="inner_tab0" style="height:600px !important">
                     <div class="w283" id="infoGrid"></div>
                 </div>
				</div>
			</div>
		</div>
	</div>
</body>