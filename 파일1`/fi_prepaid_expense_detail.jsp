<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>선급기간인식</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
	#masterGrid{width:100%;height:650px !important;}
    #detailGrid {
        height : 797px;
    }
	</style>
</head>
<body>
<div class="contents_wrap">
	<div class="form_header">
		<h3 class="form_title"></h3>
	</div>

       <div class="contents_area half_h_contents" style="width: 100%; height:820px; margin-top:0;">
 		<div class="w19 floatL grid_inner_wrap0_v2" style="width: 100%; height:820px;">
   		<div class="content_header_inner">
         <form id="masterForm">
             <div class="form_object w40 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value="">
                <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                       class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
             </div>
             <div class="form_object w40">
                <input class="form_date0_v2 fw100 yearpicker mtz-yearpicker-widgetcontainer" type="text" name="YEAR" id="YEAR" data-vldt="notNull">
                <label class="label_inp0_v2 blue" for="YEAR">${fn:escapeXml(emax:word("조회기간"))}</label>
             </div>

          </form>
          </div>   
		

          <div id="div_btn">
              
              <%--<button class="primary disabled mgt10 pdr20 pdl20" type="button" id="BTN_RECOGNITION" onclick="f_recognition();"
				disabled>${fn:escapeXml(emax:word("기간인식"))}
              </button>
              <button class="primary disabled mgt10 mgr5 mgl5 pdr20 pdl20" type="button" id="BTN_RECOGNITION_CANCEL"
                      onclick="f_recognition_cancel();" disabled>${fn:escapeXml(emax:word("인식취소"))}
              </button>
              <button class="primary disabled mgt10 pdr20 pdl20" type="button" id="BTN_INVOICE_CREATE"
                      onclick="f_invoice_create();" disabled>${fn:escapeXml(emax:word("전표생성"))}
              </button>--%>
		  </div>
		
        
        <div class="grid_inner_wrap0" id="masterGrid" style="margin-top: 20px;"></div>
        
        </div>
    	<div class="w80 floatR grid_inner_wrap0" id="detailGrid" style="height:797px;"></div>
    </div>
</div>
</body>
</html>