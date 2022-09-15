<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>부가세 신고서 작성/마감</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
	<style>
		#taxf900BasicGrid{width:100%;height:30%;}
		#taxf900ExpenseGrid{width:100%;height:30%;}
		.tax_table tbody tr{
			border: 1px solid #bebebe;
		}
		.tax_table tbody tr.bordert_none{
			border-top:none;
		}
		.tax_table tbody tr td{
			font-size:13px;
			padding:5px;
			border-right: 1px solid #bebebe;
			height:35px;
		}
		.tax_table tbody tr td.last{border-right:none;}
		.tax_table tbody tr td.left{text-align:left;}
		.tax_table tbody tr td.center{text-align:center;}
		.tax_table tbody tr td.right{text-align:right;}
		.tax_table tbody tr td. {background-color:#F4DC9C;}
		.tax_table tbody tr td.gray{background-color: rgb(245, 246, 248);}
		.tax_f500_table{
			height:520px;
			overflow:scroll;
		}
		.tax_f500_table::-webkit-scrollbar {
		    width: 4px;
		    padding-right: 12px;
		}
		.tax_f500_table::-webkit-scrollbar-button {
		    width: 0;
		    height: 0;
		}
		.tax_f500_table::-webkit-scrollbar-thumb {
		    background-color: #cbcfdb;
		    border-radius: 10px;
		}
		.tax_f500_table::-webkit-scrollbar-track {
		    background-color: transparent;
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
			<div class="form_object w283 drop_box" name="S_DOC_REV_DIV" id="S_DOC_REV_DIV" style="position: relative; display: none;">
				<label class="label_inp0_v2" for="S_DOC_REV_DIV">${fn:escapeXml(emax:word("수정차수"))}</label>
				<input type="hidden" name="S_DOC_REV" id="S_DOC_REV">
				<input type="text" name="S_DOC_REV_DIV_TEXT" id="S_DOC_REV_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
				<button type="button" class="drop_box_btn"></button>
				<ul class="drop_box_list"></ul>
			</div>
		</div>
    </div>
    <div class="contents_area half_h_contents">
    	<div class="grid_inner_wrap0 w100" style="height:100%;">
    		<div class="inner_tab_wrap2" id="inner_tab_wrap">
	             <div class="grid_wrap">
	                 <ul class="inner_tabs">
	                     <li class="inner_tab">
	                         <a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("부가세신고서"))}</a>
	                     </li>
	                     <li class="inner_tab">
	                         <a class="tab_link" href="#inner_tab1" title="">${fn:escapeXml(emax:word("과세표준 명세"))}</a>
	                     </li>
	                     <li class="inner_tab" id="taxF900" style="display: none;" use_yn="0">
	                         <a class="tab_link" href="#inner_tab2" title="">${fn:escapeXml(emax:word("사업장 현황 명세"))}</a>
	                     </li>
	                 </ul>
	                 <div class="inner_panel h635" id="inner_tab0" style="celar:both;">
	                 	<div class="grid_inner_wrap0 w100" style="celar:both; height:100px;">
							<div class="form_object w283">
								<input type="hidden" name="END_YN" readonly>
								<input type="hidden" name="TAX_DOC_ID" readonly>
								<input type="hidden" name="TAX_REPORTING_TYPE_CODE" readonly>
								<input type="hidden" name="TAX_VAT_F500_ID" readonly>
								<input type="hidden" name="COMM_BUSINESS_ID" readonly>
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고사업장"))}</label>
								<input class="form_inp0_v2" type="text" name="COMM_BUSINESS_NAME" readonly>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("귀속년도"))}</label>
								<input class="form_inp0_v2" type="text" name="TAX_YEAR" readonly>
							</div>
							<div class="form_object w283">
								<input type="hidden" name="TAX_QUARTER" readonly>
								<label class="label_inp0_v2" >${fn:escapeXml(emax:word("기수"))}</label>
								<input class="form_inp0_v2" type="text"name="MON_NAME" readonly>
							</div>
							<div class="form_object w283">
								<label class="label_inp1_v2">${fn:escapeXml(emax:word("신고구분"))}</label>
								<input type="hidden" name="DOC_TYPE_CODE" readonly>
								<input class="form_inp0_v2" type="text" name="DOC_TYPE_NAME" readonly>
								<div name="DOC_REV_DEV" style="display: none;">
									<label class="label_inp2_v2">${fn:escapeXml(emax:word("수정차수"))}</label>
									<input class="form_inp1 fw50" type="text" name="DOC_REV" readonly>
								</div>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고일"))}</label>
								<input class="form_date0_v2" type="text" name="TAX_REPORT_DATE" readonly>
							</div>
							<div class="form_object w283">
								<input class="form_date0_v2 fw50" type="text" name="FROM_DATE" readonly>
								<span class="input_from">~</span>
								<input class="form_date1_v2 fw50" type="text" name="TO_DATE" readonly>
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고기간"))}</label>
							</div>
	                 	</div>
	                 	<div class="mgt10 w100" style="overflow-y: scroll; height:520px;">
	                 		<div class="w55 mgt10 floatL" style="celar:both;" name="regular">
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr>
		                     				<td colspan="4" class="last center">
		                     					정기신고금액
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" style="width:61%;">구 분</td>
		                     				<td class="center" style="width:15.8%;">금 액</td>
		                     				<td class="center" style="width:8.5%;">세율</td>
		                     				<td class="center last" style="width:20%;">세 액</td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td rowspan="9" class="center" style="width:100px;">
		                     					과<br/>
		                     					세<br/>
		                     					표<br/>
		                     					준<br/>
		                     					및<br/>
		                     					매<br/>
		                     					출<br/>
		                     					세<br/>
		                     					액
		                     				</td>
		                     				<td rowspan="4" class="left" style="width:150px;">
		                     					과세
		                     				</td>
		                     				<td class="left" style="width: 291px;">
		                     					세금계산서 발급분
		                     				</td>
		                     				<td class="center" style="width:50px;">(1)</td>
		                     				<td class="right" style="min-width: 92px;" name="SALE_AMT"></td>
		                     				<td class="center">10/100</td>
		                     				<td class="right" style="min-width: 86px;" name="SALE_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					매입자발행 세금계산서
		                     				</td>
		                     				<td class="center">(2)</td>
		                     				<td class="right">0</td>
		                     				<td class="center">10/100</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					신용카드 / 현금영수증 발행분
		                     				</td>
		                     				<td class="center">(3)</td>
		                     				<td class="right" name="SALE_CARD_AMT"></td>
		                     				<td class="center">10/100</td>
		                     				<td class="right" name="SALE_CARD_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					기타(정규영수증 외 매출분)
		                     				</td>
		                     				<td class="center">(4)</td>
		                     				<td class="right" name="SALE_ETC_AMT"></td>
		                     				<td class="center">10/100</td>
		                     				<td class="right" name="SALE_ETC_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td rowspan="2" class="left" style="width:150px;">
		                     					영세율
		                     				</td>
		                     				<td class="left">세금계산서 발급분</td>
		                     				<td class="center">(5)</td>
		                     				<td class="right" name="SALE_ZERO_AMT"></td>
		                     				<td class="center">0/100</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					기타
		                     				</td>
		                     				<td class="center">(6)</td>
		                     				<td class="right" name="SALE_ZERO_ETC_AMT"></td>
		                     				<td class="center">10/100</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left  " style="padding:0; padding-left:5px; position:relative;">
		                     					예정신고누락분
		                     					<button type="button" class="drop_box_btn" style=" " id="btnRegularRepCd101"></button>
		                     				</td>
		                     				<td class="center">(7)</td>
		                     				<td class="right" name="repCd101Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd101VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">
		                     					대손세액가감
		                     				</td>
		                     				<td class="center">(8)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="BAD_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">
		                     					합계
		                     				</td>
		                     				<td class="center">(9)</td>
		                     				<td class="right" name="sum1Amt"></td>
		                     				<td class="center">(가)</td>
		                     				<td class="right" name="sum1VatAmt"></td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td rowspan="9" class="center" style="width:100px;">
		                     					매<br/>
		                     					입<br/>
		                     					세<br/>
		                     					액
		                     				</td>
		                     				<td rowspan="3" class="center" style="width:150px;">
		                     					세금계산서수취분
		                     				</td>
		                     				<td class="left">일반매입</td>
		                     				<td class="center" style="width: 50px;">(10)</td>
		                     				<td class="right" name="BUY_AMT"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="BUY_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					수출기업 수입분 납부유예
		                     				</td>
		                     				<td class="center">(10-1)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center"></td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					고정자산 매입
		                     				</td>
		                     				<td class="center">(11)</td>
		                     				<td class="right" name="AST_AMT"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="AST_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left  " style="padding:0; padding-left:5px; position:relative;">
		                     					예정신고누락분
		                     					<button type="button" class="drop_box_btn" style=" " id="btnRegularRepCd102"></button>
		                     				</td>
		                     				<td class="center" style="width:43px;">(12)</td>
		                     				<td class="right" style="width:153px;" name="repCd102Amt"></td>
		                     				<td class="center" style="width:82px;"></td>
		                     				<td class="right" style="width:143px;" name="repCd102VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">
		                     					매입자발생세금계산서
		                     				</td>
		                     				<td class="center">(13)</td>
		                     				<td class="right">0</td>
		                     				<td class="center"></td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left  " style="padding:0; padding-left:5px; position:relative;">
		                     					기타공제매입세액
		                     					<button type="button" class="drop_box_btn" style=" " id="btnRegularRepCd200"></button>
		                     				</td>
		                     				<td class="center">(14)</td>
		                     				<td class="right" name="repCd200Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd200VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">
												합계[(10)+(11)+(12)+(13)+(14)]
		                     				</td>
		                     				<td class="center">(15)</td>
		                     				<td class="right" name="sum2Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="sum2VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left  " style="padding:0; padding-left:5px; position:relative;">
		                     					공제받지못할매입세액
		                     					<button type="button" class="drop_box_btn" style=" " id="btnRegularRepCd300"></button>
		                     				</td>
		                     				<td class="center">(16)</td>
		                     				<td class="right" name="repCd300Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd300VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">
		                     					차감계[(15)-(16)]
		                     				</td>
		                     				<td class="center">(17)</td>
		                     				<td class="right" name="reduce1516Amt"></td>
		                     				<td class="center">(나)</td>
		                     				<td class="right" name="reduce1516VatAmt"></td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td class="center">납 부 (환급) 세 액 [매 출 세 액 (가) - 매 입 세 액 (나)]</td>
		                     				<td class="center" style="width:82px">(다)</td>
		                     				<td class="right" style="width:143px;" name="reduceGaNa"></td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td rowspan="3" class="center" style="width:100px;">
		                     					경감<br/>
		                     					공제<br/>
		                     					세액
		                     				</td>
		                     				<td class="left  " style="padding:0; padding-left:5px; position:relative;">
		                     					그 밖의 경감/공제세액
		                     					<button type="button" class="drop_box_btn" style=" " id="btnRegularRepCd400"></button>
		                     				</td>
		                     				<td class="center" style="width:50px;">(18)</td>
		                     				<td class="right gray" style="width:153px;"></td>
		                     				<td class="center" style="width:82px;"></td>
		                     				<td class="right" style="width:143px;" name="repCd400VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">신용카드매출전표등발행공제등</td>
		                     				<td class="center">(19)</td>
		                     				<td class="right">0</td>
		                     				<td class="center"></td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">합계</td>
		                     				<td class="center">(20)</td>
		                     				<td class="right">0</td>
		                     				<td class="center">(라)</td>
		                     				<td class="right" name="sum3VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">소규모 개인사업자 부가가치세 감면세액</td>
		                     				<td class="center">(20-1)</td>
		                     				<td class="right">0</td>
		                     				<td class="center">(마)</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">예정신고 미환급 세액</td>
		                     				<td class="center">(21)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(바)</td>
		                     				<td class="right">
		                     					<input type="text" style="height:24px; text-align: right;" name="NON_REPAY_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">예정고지세액</td>
		                     				<td class="center">(22)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(사)</td>
		                     				<td class="right">
		                     					<input type="text" style="height:24px; text-align: right;" name="PLAN_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">사업양수자의 대리납부기납부세액</td>
		                     				<td class="center">(23)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(아)</td>
		                     				<td class="right">
		                     					<input type="text" style="height:24px; text-align: right;" name="PRECARD_VAT_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">매입자 납부특례 기납부세액</td>
		                     				<td class="center">(24)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(자)</td>
		                     				<td class="right">
		                     					<input type="text" style="height:24px; text-align: right;" name="SPC_VAT_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left">신용카드업자의 대리납부 기납부세액</td>
		                     				<td class="center">(25)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(차)</td>
		                     				<td class="right gray"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="2" class="left  " style="padding:0; padding-left:5px; position:relative;">
		                     					가산세액계
												<button type="button" class="drop_box_btn" style=" " id="btnRegularRepCd500"></button>
		                     				</td>
		                     				<td class="center">(26)</td>
		                     				<td class="right" name="repCd500Amt"></td>
		                     				<td class="center">(카)</td>
		                     				<td class="right" name="repCd500VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="4" class="left">
		                     					차감/가감하여 납부할 세액(환급받을 세액)(다)-(라)-(마)-(바)-(사)-(아)-(자)-(차)+(카)
		                     				</td>
		                     				<td class="center">(27)</td>
		                     				<td class="right" name="sumReduceRepay"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="5" class="left">총괄 납부 사업자가 납부할 세액(환급받을 세액)</td>
		                     				<td class="right" style="width:143px;" name="TOT_VAT_AMT"></td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     </div>
		                     <div class="mgt10 floatR" style="celar:both; width:42%; display: none;" name="modify">
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr>
		                     				<td colspan="4" class="center">수정후</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">NO</td>
		                     				<td class="center">금 액</td>
		                     				<td class="center">세율</td>
		                     				<td class="center">세 액</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" style="width:80px;">(1)</td>
		                     				<td class="right" name="SALE_AMT"></td>
		                     				<td class="center" style="width:100px;">10/100</td>
		                     				<td class="right" name="SALE_VAT_AMT" style="width:300px;"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(2)</td>
		                     				<td class="right">0</td>
		                     				<td class="center">10/100</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(3)</td>
		                     				<td class="right" name="SALE_CARD_AMT"></td>
		                     				<td class="center">10/100</td>
		                     				<td class="right" name="SALE_CARD_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(4)</td>
		                     				<td class="right" name="SALE_ETC_AMT" ></td>
		                     				<td class="center">10/100</td>
		                     				<td class="right" name="SALE_ETC_VAT_AMT" ></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(5)</td>
		                     				<td class="right" name="SALE_ZERO_AMT" ></td>
		                     				<td class="center">0/100</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(6)</td>
		                     				<td class="right" name="SALE_ZERO_ETC_AMT" ></td>
		                     				<td class="center">0/100</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
											<td class=" " style="height:24px; padding:0; padding-left:5px; position:relative;">
												(7)
												<button type="button" class="drop_box_btn" style=" " id="btnModifyRepCd101"></button>
											</td>
		                     				<td class="right" name="repCd101Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd101VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(8)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="BAD_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(9)</td>
		                     				<td class="right" name="sum1Amt"></td>
		                     				<td class="center">(가)</td>
		                     				<td class="right" name="sum1VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(10)</td>
		                     				<td class="right" name="BUY_AMT"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="BUY_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(10-1)</td>
		                     				<td class="right"></td>
		                     				<td class="center"></td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(11)</td>
		                     				<td class="right" name="AST_AMT"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="AST_VAT_AMT"></td>
		                     			</tr>
		                     			<tr>
											<td class=" " style="height:24px; padding:0; padding-left:5px; position:relative;">
												(12)
												<button type="button" class="drop_box_btn" style=" " id="btnModifyRepCd102"></button>
											</td>
		                     				<td class="right" name="repCd102Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd102VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(13)</td>
		                     				<td class="right">0</td>
		                     				<td class="center"></td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
											<td class=" " style="height:24px; padding:0; padding-left:5px; position:relative;">
												(14)
												<button type="button" class="drop_box_btn" style=" " id="btnModifyRepCd200"></button>
											</td>
		                     				<td class="right" name="repCd200Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd200VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(15)</td>
		                     				<td class="right" name="sum2Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="sum2VatAmt"></td>
		                     			</tr>
		                     			<tr>
											<td class=" " style="height:24px; padding:0; padding-left:5px; position:relative;">
												(16)
												<button type="button" class="drop_box_btn" style=" " id="btnModifyRepCd300"></button>
											</td>
		                     				<td class="right" name="repCd300Amt"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd300VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(17)</td>
		                     				<td class="right" name="reduce1516Amt"></td>
		                     				<td class="center">(나)</td>
		                     				<td class="right" name="reduce1516VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center"></td>
		                     				<td class="center"></td>
		                     				<td class="center">(다)</td>
		                     				<td class="center"></td>
		                     			</tr>
		                     			<tr>
											<td class=" " style="height:24px; padding:0; padding-left:5px; position:relative;">
												(18)
												<button type="button" class="drop_box_btn" style=" " id="btnModifyRepCd400"></button>
											</td>
		                     				<td class="right gray"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="repCd400VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(19)</td>
		                     				<td class="right">0</td>
		                     				<td class="center">[참고]</td>
		                     				<td class="right">0</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(20)</td>
		                     				<td class="right">0</td>
		                     				<td class="center">(라)</td>
		                     				<td class="right" name="sum3VatAmt"></td>
		                     			</tr>
										<tr>
											<td class="center">(20-1)</td>
											<td class="right">0</td>
											<td class="center">(마)</td>
											<td class="right">0</td>
										</tr>
		                     			<tr>
		                     				<td class="center">(21)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(바)</td>
		                     				<td class="center">
												<input type="text" class="form_pop1_v2" style="height:24px;text-align: right;" name="NON_REPAY_AMT">
											</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(22)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(사)</td>
		                     				<td class="center">
		                     					<input type="text" class="form_pop1_v2" style="height:24px;text-align: right;" name="PLAN_AMT">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(23)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(아)</td>
		                     				<td class="center">
		                     					<input type="text" class="form_pop1_v2" style="height:24px;text-align: right;" name="PRECARD_VAT_AMT">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(24)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(자)</td>
		                     				<td class="center">
		                     					<input type="text" class="form_pop1_v2" style="height:24px;text-align: right;" name="SPC_VAT_AMT">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(25)</td>
		                     				<td class="right gray"></td>
		                     				<td class="center">(차)</td>
		                     				<td class="right gray"></td>
		                     			</tr>
		                     			<tr>
											<td class=" " style="padding:0; padding-left:5px; position:relative;">
												(26)
												<button type="button" class="drop_box_btn" style=" " id="btnModifyRepCd500"></button>
											</td>
		                     				<td class="right" name="repCd500Amt"></td>
		                     				<td class="center">(카)</td>
		                     				<td class="right" name="repCd500VatAmt"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center"></td>
		                     				<td class="center"></td>
		                     				<td class="center">(27)</td>
		                     				<td class="right" name="sumReduceRepay"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" style="height:24px;"></td>
		                     				<td class="center"></td>
		                     				<td class="center"></td>
		                     				<td class="right" name="TOT_VAT_AMT"></td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     </div>			
	                 	</div>
	                 	 

	                 </div>
	                 <div class="inner_panel h635" id="inner_tab1">
	                 	<div class="grid_inner_wrap0 w100" style="height:100px;">
							<div class="form_object w283">
								<input type="hidden" name="END_YN" readonly>
								<input type="hidden" name="TAX_REPORTING_TYPE_CODE" readonly>
								<input type="hidden" name="TAX_DOC_ID" readonly>
								<input type="hidden" name="TAX_VAT_F501_ID" readonly>
								<input type="hidden" name="COMM_BUSINESS_ID" readonly>
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고사업장"))}</label>
								<input class="form_inp0_v2" type="text" name="COMM_BUSINESS_NAME" readonly>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("귀속년도"))}</label>
								<input class="form_inp0_v2" type="text" name="TAX_YEAR" readonly>
							</div>
							<div class="form_object w283">
								<input type="hidden" name="TAX_QUARTER" readonly>
								<label class="label_inp0_v2" >${fn:escapeXml(emax:word("기수"))}</label>
								<input class="form_inp0_v2" type="text" name="MON_NAME" readonly>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고구분"))}</label>
								<input type="hidden" name="DOC_TYPE_CODE" readonly>
								<input class="form_inp0_v2" type="text" name="DOC_TYPE_NAME" readonly>
								<div name="DOC_REV_DEV" style="display: none;">
									<label class="label_inp2_v2">${fn:escapeXml(emax:word("수정차수"))}</label>
									<input class="form_inp1 fw50" type="text" name="DOC_REV" readonly>
								</div>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고일"))}</label>
								<input class="form_date0_v2" type="text" name="TAX_REPORT_DATE" readonly>
							</div>
							<div class="form_object w283">
								<input class="form_date0_v2 fw50" type="text" name="FROM_DATE" readonly>
								<span class="input_from">~</span>
								<input class="form_date1_v2 fw50" type="text" name="TO_DATE" readonly>
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고기간"))}</label>
							</div>
	                 	</div>
	                     <div class="mgt10 w100" style="overflow-y: scroll; height:520px;">
	                 		<div class="w48 mgt10 floatL" style="celar:both;" name="regular">
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr>
		                     				<td class="left" style="width: 170px;">
		                     					국세환급금계좌신고
		                     				</td>
		                     				<td class="center" style="width: 140px;">
		                     					거래은행
		                     				</td>
		                     				<td style="width: 140px;" name="BANK_NAME"></td>
		                     				<td class="center" style="width: 150px;">은행 지점</td>
		                     				<td style="width: 140px;" name="BANK_LOC"></td>
		                     				<td class="center" style="width: 150px;">계좌번호</td>
		                     				<td style="width: 140px;" name="ACCTOUNT_NO"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					폐업신고
		                     				</td>
		                     				<td class="center">
		                     					폐업일
		                     				</td>
		                     				<td colspan="2" class="datepicker">
												<input type="text" style="height:24px;" name="CLOSE_DATE" class="form_pop1_v2">
		                     				</td>
		                     				<td class="center">폐업사유</td>
		                     				<td colspan="2">
		                     					<input type="text" style="height:24px;" name="CLOSE_RMK" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					과세표준 명세 (수정전)
		                     				</td>	
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td colspan="2">업태</td>
		                     				<td>종목</td>
		                     				<td>업종코드</td>
		                     				<td>금액</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" style="width:80px;">(28)</td>
		                     				<td name="TAX1_BUSI_COND"></td>
		                     				<td name="TAX1_TYPE"></td>
		                     				<td>
												<input type="text" style="height:24px;" name="TAX1_BIZ_TYPE" class="form_pop1_v2">
											</td>
		                     				<td name="TAX1_AMT" style="text-align: right;"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(29)</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX2_BUSI_COND" class="form_pop1_v2">
		                     				</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX2_TYPE" class="form_pop1_v2">
		                     				</td>
		                     				<td>
												<input type="text" style="height:24px;" name="TAX2_BIZ_TYPE" class="form_pop1_v2">
											</td>
		                     				<td>
		                     					<input type="text" style="height:24px; text-align: right;" name="TAX2_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(30)</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX3_BUSI_COND" class="form_pop1_v2">
		                     				</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX3_TYPE" class="form_pop1_v2">
		                     				</td>
		                     				<td>
												<input type="text" style="height:24px;" name="TAX3_BIZ_TYPE" class="form_pop1_v2">
											</td>
		                     				<td>
		                     					<input type="text" style="height:24px; text-align: right;" name="TAX3_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(31)</td>
		                     				<td class="gray">수입금제외</td>
		                     				<td></td>
		                     				<td></td>
		                     				<td name="TAX4_AMT" style="text-align: right;"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(32)</td>
		                     				<td class="gray">합계</td>
		                     				<td class="gray"></td>
		                     				<td class="gray"></td>
		                     				<td name="taxTot" style="text-align: right;"></td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td class="left" style="width: 140px;">세무대리인</td>
		                     				<td class="center" style="width:80px;">성명</td>
		                     				<td style="width: 140px;">
		                     					<input type="text" style="height:24px;" name="AGENT_NM" class="form_pop1_v2">
		                     				</td>
		                     				<td class="center" style="width: 140px;">사업자등록번호</td>
		                     				<td style="width:190px;">
		                     					<input type="text" style="height:24px;" name="AGENT_NO" class="form_pop1_v2">
		                     				</td>
		                     				<td class="center" style="width: 100px;">전화번호</td>
		                     				<td style="width:190px;">
		                     					<input type="text" style="height:24px;" name="AGENT_TEL" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="7" class="left">
		                     					면세사업 수입금액
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" colspan="2">업태</td>
		                     				<td class="center">종목</td>
		                     				<td class="center">코드번호</td>
		                     				<td class="center" colspan="3">금액</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" style="width:80px;">(80)</td>
		                     				<td>
												<input type="text" style="height:24px;" name="FREE1_BUSI_COND" class="form_pop1_v2">
											</td>
		                     				<td>
												<input type="text" style="height:24px;" name="FREE1_TYPE" class="form_pop1_v2">
											</td>
		                     				<td>
												<input type="text" style="height:24px;" name="FREE1_CD" class="form_pop1_v2">
											</td>
											<td name="FREE1_AMT" colspan="3" style="text-align: right;"></td>
		                     			</tr>	
		                     			<tr>
		                     				<td class="center">(81)</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="FREE2_BUSI_COND" class="form_pop1_v2">
		                     				</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="FREE2_TYPE" class="form_pop1_v2">
		                     				</td>
		                     				<td>
												<input type="text" style="height:24px;" name="FREE2_CD" class="form_pop1_v2">
		                     				</td>
											<td colspan="3">
												<input type="text" style="height:24px; text-align: right;" name="FREE2_AMT" class="form_pop1_v2">
											</td>
		                     			</tr>	
		                     			<tr>
		                     				<td class="center">(82)</td>
		                     				<td class="gray center">수입금액제외</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="FREE3_TYPE" class="form_pop1_v2">
		                     				</td>
											<td>
												<input type="text" style="height:24px;" name="FREE3_CD" class="form_pop1_v2">
											</td>
		                     				<td colspan="3">
		                     					<input type="text" style="height:24px; text-align: right;" name="FREE3_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td></td>
		                     				<td class="gray center"></td>
		                     				<td class="gray center"></td>
		                     				<td class="gray center">(83)합계</td>
		                     				<td colspan="3" style="text-align: right;" name="freeTot"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="7" class="left">계산서 발급 및 수취명세</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(84)</td>
		                     				<td class="center" style="width:140px;">계산서 발급금액</td>
		                     				<td colspan="5" style="text-align: right;" name="NOTAX_OUT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(85)</td>
		                     				<td class="center" style="width:140px;">계산서 수취금액</td>
		                     				<td colspan="5" style="text-align: right;" name="NOTAX_IN_AMT"></td>
		                     			</tr>	
		                     		</tbody>
		                     	</table>					
		                     </div>

							 <div class="w48 mgt10 floatR" style="celar:both; display: none;" name="modify">
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr>
		                     				<td class="left" style="width: 170px;">
		                     					국세환급금계좌신고
		                     				</td>
		                     				<td class="center" style="width: 140px;">
		                     					거래은행
		                     				</td>
		                     				<td style="width: 140px;" name="BANK_NAME"></td>
		                     				<td class="center" style="width: 150px;">은행 지점</td>
		                     				<td style="width: 140px;" name="BANK_LOC"></td>
		                     				<td class="center" style="width: 150px;">계좌번호</td>
		                     				<td style="width: 140px;" name="ACCTOUNT_NO"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					폐업신고
		                     				</td>
		                     				<td class="center">
		                     					폐업일
		                     				</td>
		                     				<td colspan="2" class="datepicker">
												<input type="text" style="height:24px;" name="CLOSE_DATE" class="form_pop1_v2">
		                     				</td>
		                     				<td class="center">폐업사유</td>
		                     				<td colspan="2">
		                     					<input type="text" style="height:24px;" name="CLOSE_RMK" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="left">
		                     					과세표준 명세 (수정전)
		                     				</td>	
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td colspan="2">업태</td>
		                     				<td>종목</td>
		                     				<td>업종코드</td>
		                     				<td>금액</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" style="width:80px;">(28)</td>
		                     				<td name="TAX1_BUSI_COND"></td>
		                     				<td name="TAX1_TYPE"></td>
		                     				<td name="TAX1_BIZ_TYPE"></td>
		                     				<td name="TAX1_AMT" style="text-align: right;"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(29)</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX2_BUSI_COND" class="form_pop1_v2">
		                     				</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX2_TYPE" class="form_pop1_v2">
		                     				</td>
		                     				<td name="TAX2_BIZ_TYPE"></td>
		                     				<td>
		                     					<input type="text" style="height:24px; text-align: right;" name="TAX2_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(30)</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX3_BUSI_COND" class="form_pop1_v2">
		                     				</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="TAX3_TYPE" class="form_pop1_v2">
		                     				</td>
		                     				<td name="TAX3_BIZ_TYPE"></td>
		                     				<td>
		                     					<input type="text" style="height:24px; text-align: right;" name="TAX3_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(31)</td>
		                     				<td class="gray">수입금제외</td>
		                     				<td></td>
		                     				<td></td>
		                     				<td name="TAX4_AMT" style="text-align: right;"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(32)</td>
		                     				<td class="gray">합계</td>
		                     				<td class="gray"></td>
		                     				<td class="gray"></td>
		                     				<td name="taxTot" style="text-align: right;"></td>
		                     			</tr>
		                     		</tbody>
		                     	</table>
		                     	<table class="tax_table">
		                     		<tbody>
		                     			<tr class="bordert_none">
		                     				<td class="left" style="width: 140px;">세무대리인</td>
		                     				<td class="center" style="width:80px;">성명</td>
		                     				<td style="width: 140px;">
		                     					<input type="text" style="height:24px;" name="AGENT_NM" class="form_pop1_v2">
		                     				</td>
		                     				<td class="center" style="width: 140px;">사업자등록번호</td>
		                     				<td style="width:190px;">
		                     					<input type="text" style="height:24px;" name="AGENT_NO" class="form_pop1_v2">
		                     				</td>
		                     				<td class="center" style="width: 100px;">전화번호</td>
		                     				<td style="width:190px;">
		                     					<input type="text" style="height:24px;" name="AGENT_TEL" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="7" class="left">
		                     					면세사업 수입금액
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" colspan="2">업태</td>
		                     				<td class="center">종목</td>
		                     				<td class="center">코드번호</td>
		                     				<td class="center" colspan="3">금액</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center" style="width:80px;">(80)</td>
		                     				<td name="FREE1_BUSI_COND"></td>
		                     				<td name="FREE1_TYPE"></td>
		                     				<td name="FREE1_CD"></td>
											<td name="FREE1_AMT" colspan="3" style="text-align: right;"></td>
		                     			</tr>	
		                     			<tr>
		                     				<td class="center">(81)</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="FREE2_BUSI_COND" class="form_pop1_v2">
		                     				</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="FREE2_TYPE" class="form_pop1_v2">
		                     				</td>
		                     				<td name="FREE2_CD">
		                     				</td>
											<td colspan="3">
												<input type="text" style="height:24px; text-align: right;" name="FREE2_AMT" class="form_pop1_v2">
											</td>
		                     			</tr>	
		                     			<tr>
		                     				<td class="center">(82)</td>
		                     				<td class="gray center">수입금액제외</td>
		                     				<td>
		                     					<input type="text" style="height:24px;" name="FREE3_TYPE" class="form_pop1_v2">
		                     				</td>
											<td name="FREE3_CD"></td>
		                     				<td colspan="3">
		                     					<input type="text" style="height:24px; text-align: right;" name="FREE3_AMT" class="form_pop1_v2">
		                     				</td>
		                     			</tr>
		                     			<tr>
		                     				<td></td>
		                     				<td class="gray center"></td>
		                     				<td class="gray center"></td>
		                     				<td class="gray center">(83)합계</td>
		                     				<td colspan="3" style="text-align: right;" name="freeTot"></td>
		                     			</tr>
		                     			<tr>
		                     				<td colspan="7" class="left">계산서 발급 및 수취명세</td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(84)</td>
		                     				<td class="center" style="width:140px;">계산서 발급금액</td>
		                     				<td colspan="5" style="text-align: right;" name="NOTAX_OUT_AMT"></td>
		                     			</tr>
		                     			<tr>
		                     				<td class="center">(85)</td>
		                     				<td class="center" style="width:140px;">계산서 수취금액</td>
		                     				<td colspan="5" style="text-align: right;" name="NOTAX_IN_AMT"></td>
		                     			</tr>	
		                     		</tbody>
		                     	</table>					
		                     </div>

		                 </div> 				
	                 </div>
	                 <div class="inner_panel h635" id="inner_tab2">
	                 	<div class="grid_inner_wrap0 w100" style="height:100px;">
							<div class="form_object w283">
								<input type="hidden" name="END_YN" readonly>
								<input type="hidden" name="TAX_DOC_ID" readonly>
								<input type="hidden" name="TAX_REPORTING_TYPE_CODE" readonly>
								<input type="hidden" name="COMM_BUSINESS_ID" readonly>
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고사업장"))}</label>
								<input class="form_inp0_v2" type="text" name="COMM_BUSINESS_NAME" readonly>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("귀속년도"))}</label>
								<input class="form_inp0_v2" type="text" name="TAX_YEAR" readonly>
							</div>
							<div class="form_object w283">
								<input type="hidden" name="TAX_QUARTER" readonly>
								<label class="label_inp0_v2" >${fn:escapeXml(emax:word("기수"))}</label>
								<input class="form_inp0_v2" type="text"name="MON_NAME" readonly>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고구분"))}</label>
								<input type="hidden" name="DOC_TYPE_CODE" readonly>
								<input class="form_inp0_v2" type="text" name="DOC_TYPE_NAME" readonly>
								<div name="DOC_REV_DEV" style="display: none;">
									<label class="label_inp2_v2">${fn:escapeXml(emax:word("수정차수"))}</label>
									<input class="form_inp1 fw50" type="text" name="DOC_REV" readonly>
								</div>
							</div>
							<div class="form_object w283">
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고일"))}</label>
								<input class="form_date0_v2" type="text" name="TAX_REPORT_DATE" readonly>
							</div>
							<div class="form_object w283">
								<input class="form_date0_v2 fw50" type="text" name="FROM_DATE" readonly>
								<span class="input_from">~</span>
								<input class="form_date1_v2 fw50" type="text" name="TO_DATE" readonly>
								<label class="label_inp0_v2">${fn:escapeXml(emax:word("신고기간"))}</label>
							</div>
	                 	</div>
<%--	                    <div class="mgt10 w100" style="overflow-y: scroll; height:520px;">--%>
						<div class="mgt10 w100" style="overflow-y: auto; height:520px;">
<%--							<div class="w100 grid_inner_wrap1">--%>
								<p class="inner_tab_title">${fn:escapeXml(emax:word("기본사항"))}</p>
								<div id="taxf900BasicGrid"></div>
<%--							</div>--%>
<%--							<div class="w100 mgt10 grid_inner_wrap1">--%>
								<p class="inner_tab_title">${fn:escapeXml(emax:word("기본경비(단위:천원)"))}</p>
								<div id="taxf900ExpenseGrid"></div>
<%--							</div>--%>
<%--	                 		<div class="w80 mgt10 floatL" style="celar:both;">--%>
<%--		                     	<table class="tax_table">--%>
<%--		                     		<tbody>--%>
<%--		                     			<tr>--%>
<%--		                     				<td class="left" colspan="13" style="background-color:#eee;">기본사항</td>--%>
<%--		                     			</tr>--%>
<%--		                     			<tr>--%>
<%--		                     				<td class="center gray" colspan="6">사업장</td>--%>
<%--		                     				<td class="center gray" colspan="4">아래는 음식점업자 및 숙박업자만 적습니다</td>--%>
<%--		                     				<td class="center gray" rowspan="2">종업원수(명)</td>--%>
<%--		                     				<td class="center gray" colspan="2">차량</td>--%>
<%--		                     			</tr>--%>
<%--		                     			<tr>--%>
<%--		                     				<td class="center gray">자가구분</td>--%>
<%--		                     				<td class="center gray">대지(m2)</td>--%>
<%--		                     				<td class="center gray">지하층수</td>--%>
<%--		                     				<td class="center gray">지상층수</td>--%>
<%--		                     				<td class="center gray">바닥면적(m2)</td>--%>
<%--		                     				<td class="center gray">연면적(m2)</td>--%>
<%--		                     				<td class="center gray">객실 수(개)</td>--%>
<%--		                     				<td class="center gray">탁자 수(개)</td>--%>
<%--		                     				<td class="center gray">의자 수(개)</td>--%>
<%--		                     				<td class="center gray">주차장(유무)</td>--%>
<%--		                     				<td class="center gray">승용차수(대)</td>--%>
<%--		                     				<td class="center gray">화물차수(대)</td>--%>
<%--		                     			</tr>--%>
<%--		                     			<tr>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     			</tr>--%>
<%--		                     		</tbody>--%>
<%--		                     	</table>--%>
<%--		                     	<table class="tax_table mgt20">--%>
<%--		                     		<tbody>--%>
<%--		                     			<tr>--%>
<%--		                     				<td class="left" style="background-color:#eee;" colspan="7">기본경비 (단위:천원)</td>--%>
<%--		                     			</tr>--%>
<%--		                     			<tr>--%>
<%--		                     				<td class="center gray" colspan="2">임차료</td>--%>
<%--		                     				<td class="center gray" rowspan="2">전기/가스료</td>--%>
<%--		                     				<td class="center gray" rowspan="2">수도료</td>--%>
<%--		                     				<td class="center gray" rowspan="2">인건비</td>--%>
<%--		                     				<td class="center gray" rowspan="2">기타</td>--%>
<%--		                     				<td class="center gray" rowspan="2">월기본경비합계</td>--%>
<%--		                     			</tr>--%>
<%--		                     			<tr>--%>
<%--		                     				<td class="center gray">보증금</td>--%>
<%--		                     				<td class="center gray">월세</td>--%>
<%--		                     			</tr>--%>
<%--		                     			<tr>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     				<td></td>--%>
<%--		                     			</tr>--%>
<%--		                     		</tbody>--%>
<%--		                     	</table>--%>
<%--		                     </div>--%>
		                 </div>    				
	                 </div>
	             </div>
	     	</div>
    	</div>
    </div>
</div>
</body>
</html>