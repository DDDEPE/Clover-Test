<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>전표 등록</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <style>
/*     	html{height:calc(100% - 114px);min-height:unset;} */
    	#masterGrid{height:385px;}

        #display_modal {
            display: none;
            position: absolute;
            left: 35%;
            width: 600px;
            height: 300px;
            background-color: #fff;
            z-index: 100;
            border: 1px solid #000;
        }

        #btn_modal_copy {
            position: absolute;
            left: 37%;
            bottom: 18%;
        }

        #btn_modal_close {
            position: absolute;
            left: 52%;
            bottom: 18%;
        }
    </style>
</head>
<body>
<div class="contents_wrap" style="    height: 880px;">
    <div class="contents_header_top">
        <h3 class="list_title"></h3>
    </div>
	<div class="contents_header">
		<div class="content_header_inner">
			<form id="masterForm">
                <input type="hidden" id="FI_INVOICE_HEADER_ID" name="FI_INVOICE_HEADER_ID">
                <input type="hidden" id="TREASURER_EMP_ID" name="TREASURER_EMP_ID">
                <input type="hidden" id="PERIOD" name="PERIOD">
                <input type="hidden" id="ORG_DOCUMENT_ID" name="ORG_DOCUMENT_ID">

                <input type="hidden" id="ORIGINAL_INVOICE_HEADER_ID" name="ORIGINAL_INVOICE_HEADER_ID">
                <input type="hidden" id="SOURCE_DOCUMENT_ID" name="SOURCE_DOCUMENT_ID">
                <input type="hidden" id="SOURCE_MENU_CODE" name="SOURCE_MENU_CODE">

                <div class="form_object w283 drop_box" name="FI_BI_DIVISION_ID_DIV" id="FI_BI_DIVISION_ID_DIV" style="position: relative;">
                    <label class="label_inp0_v2 blue" for="FI_BI_DIVISION_ID_DIV">${fn:escapeXml(emax:word("회계단위"))}</label>
                    <input type="hidden" id="FI_BI_DIVISION_ID" name="FI_BI_DIVISION_ID" value=""/>
                    <input type="text" name="FI_BI_DIVISION_ID_DIV_TEXT" id="FI_BI_DIVISION_ID_DIV_TEXT" value="" data-prev-val=""
                           class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull"/>
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
                <div class="form_object w283 datepicker">
                    <input class="form_date0_v2 form_datepicker" type="text" id="MAKE_DATE" name="MAKE_DATE" data-vldt="notNull" data-type="date">
                    <label class="label_inp0_v2 blue" for="MAKE_DATE">${fn:escapeXml(emax:word("작성일자"))}</label>
                </div>
                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" id="TREASURER_EMP_TITLE" name="TREASURER_EMP_TITLE" readOnly>
                    <label class="label_inp0_v2" for="TREASURER_EMP_TITLE">${fn:escapeXml(emax:word("작성자"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" id="FI_BI_INVOICE_SOURCE_ID" name="FI_BI_INVOICE_SOURCE_ID" value="" data-vldt="notNull"/>
                    <input class="form_inp0_v2" type="text" id="INVOICE_SOURCE_NAME" name="INVOICE_SOURCE_NAME" disabled>
                    <label class="label_inp0_v2 blue" for="INVOICE_SOURCE_NAME">${fn:escapeXml(emax:word("출처"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" id="DOCUMENT_ID" name="DOCUMENT_ID">
                    <input class="form_inp0_v2" type="text" id="DOCUMENT_NO" name="DOCUMENT_NO" disabled>
                    <label class="label_inp0_v2" for="DOCUMENT_ID">${fn:escapeXml(emax:word("문서번호"))}</label>
                </div>
                <div class="form_object w283">
                    <input class="form_inp0_v2 readonly2" type="text" id="APPR_DATE" name="APPR_DATE" data-type="date" readOnly>
                    <label class="label_inp0_v2" for="APPR_DATE">${fn:escapeXml(emax:word("승인일자"))}</label>
                </div>

                <div class="form_object w283 drop_box" name="INVOICE_STATE_CODE_DIV" id="INVOICE_STATE_CODE_DIV" style="position: relative;">
                    <label class="label_inp0_v2 blue" for="INVOICE_STATE_CODE_DIV">${fn:escapeXml(emax:word("전표상태"))}</label>
                    <input type="hidden" id="INVOICE_STATE_CODE" name="INVOICE_STATE_CODE" value=""/>
                    <input type="text" name="INVOICE_STATE_CODE_DIV_TEXT" id="INVOICE_STATE_CODE_DIV_TEXT" value="" data-prev-val=""
                           class="drop_box_inp" autocomplete="off" placeholder="" data-vldt="notNull" readOnly/>
                    <button type="button" class="drop_box_btn"></button>
                    <ul class="drop_box_list"></ul>
                </div>
                <div class="form_object w283 datepicker">
                    <input class="form_date0_v2 form_datepicker" type="text" id="INVOICE_DATE" name="INVOICE_DATE" data-vldt="notNull" data-type="date">
                    <label class="label_inp0_v2 blue" for="INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
                </div>
                <div class="form_object w283">
                    <input class="form_inp0_v2" type="text" id="INVOICE_NO" name="INVOICE_NO" readOnly>
                    <label class="label_inp0_v2" for="INVOICE_NO">${fn:escapeXml(emax:word("전표번호"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" id="FI_BI_INVOICE_TYPE_ID" name="FI_BI_INVOICE_TYPE_ID">
                    <input class="form_pop1_v2" type="text" id="INVOICE_TYPE_NAME" name="INVOICE_TYPE_NAME" data-pop="true" data-vldt="notNull">
                    <button type="button" class="form_popup_btn_v2R" data-pop="true" data-id="INVOICE_TYPE_NAME"></button>
                    <label class="label_inp0_v2 blue" for="INVOICE_TYPE_NAME">${fn:escapeXml(emax:word("유형"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" id="DOCUMENT_STATE_CODE" name="DOCUMENT_STATE_CODE" disabled>
                    <input class="form_inp0_v2" type="text" id="DOCUMENT_STATE_NAME" name="DOCUMENT_STATE_NAME" disabled>
                    <label class="label_inp0_v2" for="DOCUMENT_STATE_NAME">${fn:escapeXml(emax:word("문서상태"))}</label>
                </div>
                <div class="form_object w283">
                    <input type="hidden" id="APPR_EMP_ID" name="APPR_EMP_ID">
                    <input class="form_inp0_v2" type="text" id="APPR_EMP_TITLE" name="APPR_EMP_TITLE" disabled>
                    <label class="label_inp0_v2" for="APPR_EMP_TITLE">${fn:escapeXml(emax:word("최종승인자"))}</label>
                </div>
              </form>
		</div>
	</div>
    <div class="contents_area half_h_contents" style="height: calc(100% - 290px);">
		<div class="w100 grid_inner_wrap1" id="masterGrid"></div>
		<ul class="small_form_wrap">
             <li class="form_area">
                 <form id="FI_INVOICE_LINE_MNG_FORM" name="FI_INVOICE_LINE_MNG_FORM">
                 </form>
             </li>
<!--              <li class="grid_area"> -->
<!--                  <div class="inner_tab_wrap" id="detailGrid" style="width: 100%; height: 100%;"></div> -->
<!--              </li> -->
             <li class="file_area" style="width:33%;">
                 <form id="ea_fileForm">
                     <p class="form_right_title">
                         ${fn:escapeXml(emax:word("원천문서 첨부파일"))}
                     </p>
                     <div id="ea_dropContainer" class="appr_process scroll_process" style="padding-top:10px;">
                         <table id="ea_fileListTBL" >
                             <tbody>

                             </tbody>
                         </table>
                     </div>
                 </form>
             </li>
             <li class="file_area" style="width:33%; margin-right:8px;">
                 <form id="fileForm">
                     <p class="form_right_title">
                         ${fn:escapeXml(emax:word("첨부파일"))}
                         <span class="warning">(${fn:escapeXml(emax:msg("attached_files2"))})</span>
                     </p>
                     <button type="button" class="btn_type11 appr_file_btn" id="file_add"></button>
                     <input type="file" id="multi-add" multiple="multiple" name="file" style="display:none;" >
                     <div id="dropContainer" class="appr_process scroll_process" style="padding-top:10px;">
                         <table id="fileListTBL" >
                             <tbody>

                             </tbody>
                         </table>
                     </div>
                 </form>
             </li>
        </ul>

        <%-- 복사 modal --%>
        <div class="" id="display_modal">
            <form id="copyForm" class="" role="form" style="height:100%;">
                <div class="form_object mgl80 mgt60 w35 datepicker">
                    <input class="form_date0_v2 form_datepicker" type="text" id="C_INVOICE_DATE" name="C_INVOICE_DATE" data-vldt="notNull">
                    <label class="label_inp0_v2 blue" for="C_INVOICE_DATE">${fn:escapeXml(emax:word("전표일자"))}</label>
                </div>
                <button type="button" id="btn_modal_copy" class="primary" onclick="javascript:f_invoice_copy();">전표생성</button>
                <button type="button" id="btn_modal_close" class="primary" onclick="javascript:f_close_modal();">닫기</button>
            </form>
        </div>
    </div>
</div>
</body>

</html>
<script>
    var gv_hr_employee_id = '${sessionScope.login_employee_id}';
</script>