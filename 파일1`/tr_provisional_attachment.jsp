<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>가압류 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
		html{height:calc(100% - 67px); min-height: unset;}
        #masterGrid{height:calc(100% - 45px);}
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
                <input class="form_date0_v2 fw25 form_datepicker" type="text" id="S_RECEIPT_DATE" name="S_RECEIPT_DATE">
                <label class="label_inp0_v2" for="S_RECEIPT_DATE">${fn:escapeXml(emax:word("접수일자"))}</label>
            </div>
            <div class="form_object w283">
                <input type="hidden" id="S_COMM_CV_ID" name="S_COMM_CV_ID">
                <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="S_CV_CODE" name="S_CV_CODE">
                <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="S_CV_CODE"></button>
                <input class="form_inp1_v2 fw50" type="text" id="S_CV_NAME" name="S_CV_NAME" readonly>
                <label class="label_inp0_v2" for="S_CV_NAME">${fn:escapeXml(emax:word("채무자"))}</label>
            </div>
            <div class="form_object w283 drop_box" name="S_BOND_CODE_DIV" id="S_BOND_CODE_DIV" style="position: relative;">
                <label class="label_inp0_v2" for="S_BOND_CODE_DIV">${fn:escapeXml(emax:word("채권구분"))}</label>
                <input type="hidden" name="BOND_CODE" id="S_BOND_CODE">
                <input type="text" name="S_BOND_CODE_DIV_TEXT" id="S_BOND_CODE_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                <button type="button" class="drop_box_btn"></button>
                <ul class="drop_box_list"></ul>
            </div>
        </div>
    </div>
    <p class="ea_bt_form_title2">${fn:escapeXml(emax:word("가압류 등록"))}</p>
        <div class="contents_header" <%--style="margin-top:16px;"--%>>
            <div class="content_header_inner">
                <form id="searchForm">
                <input type="hidden" id="TR_PROVISIONAL_ATTACHMENT_ID" name="TR_PROVISIONAL_ATTACHMENT_ID">
                <div class="form_object w283">
                    <input type="hidden" id="COMM_CV_ID" name="COMM_CV_ID">
                    <input class="form_pop4_v2 fw50" type="text" data-pop="true" id="CV_CODE" name="CV_CODE" data-vldt="notNull">
                    <button class="form_popup_btn2_v2" type="button" data-pop="true" data-id="CV_CODE" name="DISA"></button>
                    <input class="form_inp1_v2 fw50" type="text" id="CV_NAME" name="CV_NAME" readonly>
                    <label class="label_inp0_v2 blue" for="CV_NAME">${fn:escapeXml(emax:word("채무자"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" id="BUSINESS_NO" name="BUSINESS_NO" data-vldt="notNull">
                    <input class="form_inp0_v2" type="text" id="F_BUSINESS_NO" name="F_BUSINESS_NO" readOnly>
                    <label class="label_inp0_v2 blue" for="BUSINESS_NO">${fn:escapeXml(emax:word("사업자등록번호"))}</label>

                </div>

                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" id="BOND_NAME" name="BOND_NAME" data-vldt="notNull">
                    <label class="label_inp0_v2 blue" for="BOND_NAME">${fn:escapeXml(emax:word("채권자"))}</label>

                </div>
                <div class="form_object w283 datepicker">
                    <input class="form_date0_v2 fw25 form_datepicker" type="text" id="RECEIPT_DATE" name="RECEIPT_DATE" data-vldt="notNull">
                    <label class="label_inp0_v2 blue" for="RECEIPT_DATE">${fn:escapeXml(emax:word("접수일자"))}</label>
                </div>
                <div class="form_object w283 datepicker">
                    <input class="form_date0_v2 fw25 form_datepicker" type="text" id="DEPOSIT_DATE" name="DEPOSIT_DATE">
                    <label class="label_inp0_v2" for="DEPOSIT_DATE">${fn:escapeXml(emax:word("공탁일자"))}</label>
                </div>
                <div class="form_object w283"></div>
                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" id="RECEIPT_AMT" name="RECEIPT_AMT" data-vldt="notNull" style = "text-align:right;" data-type="money" onkeyup="gf_inputNumberFormat(this)">
                    <label class="label_inp0_v2 blue" for="RECEIPT_AMT">${fn:escapeXml(emax:word("청구금액"))}</label>

                </div>
                <div class="form_object w283 drop_box" name="BOND_CODE_DIV" id="BOND_CODE_DIV" style="position: relative;">
                    <label class="label_inp0_v2 blue" for="BOND_CODE_DIV">${fn:escapeXml(emax:word("채권구분"))}</label>
                    <input type="hidden" name="BOND_CODE" id="BOND_CODE">
                    <input type="text" name="BOND_CODE_DIV_TEXT" id="BOND_CODE_DIV_TEXT" value="" data-vldt="notNull" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" id="NOTE" name="NOTE">
                    <label class="label_inp0_v2" for="NOTE">${fn:escapeXml(emax:word("비고"))}</label>

                </div>
                <div class="form_object w283 datepicker">
                    <input class="form_date0_v2 fw25 form_datepicker" type="text" id="CANCEL_DATE" name="CANCEL_DATE" onchange="f_cancel_change(this);">
                    <label class="label_inp0_v2" for="CANCEL_DATE">${fn:escapeXml(emax:word("해지일자"))}</label>
                </div>
                </form>
            </div>
        </div>
        <div class="contents_area" style="height: auto;">
            <div class="w283 grid_inner_wrap0_v2" style="height:460px;">
                <p class="ea_bt_form_title2">${fn:escapeXml(emax:word("가압류 등록현황"))}</p>
                <div id="masterGrid"></div>
            </div>
        </div>
    </div>

</body>
</html>