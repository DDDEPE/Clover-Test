<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>인사정보 조회</title>
<%@include file="/WEB-INF/jsp/common.jsp"%>
<style>
#masterGrid {
	height: 684px;
}

#langGrid {
	height: 100%;
}

#licenseGrid {
	height: 100%;
}

#prizeGrid {
	height: 100%;
}

#punishGrid {
	height: 100%;
}

#educationGrid {
	height: 100%;
}

#careerGrid {
	height: 100%;
}

#accountGrid {
	height: 100%;
}

#familyGrid {
	height: 100%;
}

#appointmentGrid {
	height: 100%;
}

#projectGrid {
	height: 100%;
}

#trainingGrid {
	height: 100%;
}

#subdutyGrid {
	height: 100%;
}

#fileGrid {
	height: 100%;
}

.pinkColor {
	background-color: #fff0fd;
}
</style>
<script>
	$(document).ready(function() {
		$('#content_fold_btn').click(function() {
			$('#content_inner_hidden').slideToggle();
			$(this).text('접어두기');
		})
	});
</script>
</head>
<body>
	<div class="contents_wrap">
		<div class="contents_header_top">
			<h3 class="list_title"></h3>
		</div>
		<div class="contents_header half_header">
			<div class="content_header_inner">
				<div class="form_object w283 drop_box" name="S_COMM_BUSINESS_ID_DIV" id="S_COMM_BUSINESS_ID_DIV">
					<label class="label_inp0_v2" for="S_COMM_BUSINESS_ID_DIV">${fn:escapeXml(emax:word("사업장"))}</label>
					<input type="hidden" id="S_COMM_BUSINESS_ID" name="S_COMM_BUSINESS_ID" value="" /> <input type="text" name="S_COMM_BUSINESS_ID_DIV_TEXT" id="S_COMM_BUSINESS_ID_DIV_TEXT" value="" data-prev-val="" class="drop_box_inp" autocomplete="off" placeholder="" />
					<button type="button" class="drop_box_btn"></button>
					<ul class="drop_box_list"></ul>
				</div>
				<div class="form_object w283">
					<input class="form_pop4_v2 fw50" data-pop="true" data-id="S_DEPT_CODE" type="text" id="S_DEPT_CODE" name="S_DEPT_CODE" autocomplete="off">
					<button class="form_popup_btn2_v2" data-pop="true" data-id="S_DEPT_CODE"></button>
					<input class="form_inp1_v2 fw50" type="text" id="S_DEPT_NAME" name="S_DEPT_NAME" readonly autocomplete="off">
					<label class="label_inp0_v2" for="S_DEPT_CODE">${fn:escapeXml(emax:word("부서"))}</label>
				</div>
				<div class="form_object w283">
					<input type="hidden" id="HR_EMPLOYEE_MASTER_ID">
					<input class="form_pop4_v2 fw50" type="text" data-pop="true" data-id="S_EMP_NO" id="S_EMP_NO" name="S_EMP_NO" autocomplete="off">
					<button class="form_popup_btn2_v2" data-pop="true" data-id="S_EMP_NO"></button>
					<label class="label_inp0_v2" for="S_EMP_NO">${fn:escapeXml(emax:word("사번/성명"))}</label>
					<input class="form_inp1_v2 fw50" type="text" id="EMP_TITLE" name="EMP_TITLE" autocomplete="off" readonly="readonly">
				</div>
				<div class="form_object w283">
					<input class="form_inp0_v2" type="text" id="NICKNAME_SEARCH" name="NICKNAME_SEARCH">
					<label class="label_inp0_v2" for="NICKNAME_SEARCH">${fn:escapeXml(emax:word("닉네임"))}</label>
				</div>
				<div class="form_object w283 drop_box" id="S_WORK_STATE_CODE_DIV">
					<label class="label_inp0_v2">${fn:escapeXml(emax:word("근무상태"))}</label>
					<button type="button" class="drop_box_inp"></button>
					<input type="hidden" id="S_WORK_STATE_CODE">
					<div class="drop_check_list">
						<ul class="check_option_list"></ul>
					</div>
				</div>
			</div>
		</div>
		<div class="contents_area">
			<div class="content">
				<div class="w24 floatL grid_inner_wrap0" id="masterGrid"></div>
				<div class="w75 floatR">
					<form id='masterForm'>
						<div class="content_inner_v2">
							<input class="form_inp0" type="hidden" name="HR_EMPLOYEE_MASTER_ID">
							<div class="form_object_img">
								<div class="img_section" id="SHOW_IMG"></div>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="EMP_NO" name="EMP_NO">
								<label class="label_inp0_v2" for="EMP_NO">${fn:escapeXml(emax:word("사번"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="COMM_BUSINESS_NAME" name="COMM_BUSINESS_NAME">
								<label class="label_inp0_v2" for="COMM_BUSINESS_NAME">${fn:escapeXml(emax:word("소속사업장"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="HR_DEPARTMENT_NAME" name="HR_DEPARTMENT_NAME">
								<label class="label_inp0_v2" for="HR_DEPARTMENT_NAME">${fn:escapeXml(emax:word("소속부서"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="WORK_PLACE" name="WORK_PLACE">
								<label class="label_inp0_v2" for="WORK_PLACE">${fn:escapeXml(emax:word("출근지"))}</label>
							</div>
							<div class="form_object w210 mgr0 mgb16">
								<input class="form_inp0_v2" type="text" id="CONTINUOUS_MON" name="CONTINUOUS_MON">
								<label class="label_inp0_v2" for="CONTINUOUS_MON">${fn:escapeXml(emax:word("근속기간"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="EMP_NAME" name="EMP_NAME">
								<label class="label_inp0_v2" for="EMP_NAME">${fn:escapeXml(emax:word("성명"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="COUNTRY_NAME" name="COUNTRY_NAME">
								<label class="label_inp0_v2" for="COUNTRY_NAME">${fn:escapeXml(emax:word("국적"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2 fw50" type="text" id="PAY_TYPE_NAME" name="PAY_TYPE_NAME">
								<label class="label_inp0_v2" for="PAY_TYPE_NAME">${fn:escapeXml(emax:word("급여유형"))}</label>
								<input class="form_inp1_v2 fw50" type="text" id="JOIN_TYPE_NAME" name="JOIN_TYPE_NAME">
								<label class="label_inp2_v2" for="JOIN_TYPE_NAME">${fn:escapeXml(emax:word("입사구분"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="WORK_STATE_NAME" name="WORK_STATE_NAME">
								<label class="label_inp0_v2" for="WORK_STATE_NAME">${fn:escapeXml(emax:word("근무상태"))}</label>
							</div>
							<div class="form_object w210 mgr0 mgb16">
								<input class="form_inp0_v2" type="text" id="RETIRE_DATE" name="RETIRE_DATE">
								<label class="label_inp0_v2" for="RETIRE_DATE">${fn:escapeXml(emax:word("퇴사일자"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="NICKNAME" name="NICKNAME">
								<label class="label_inp0_v2" for="NICKNAME">${fn:escapeXml(emax:word("닉네임"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2" type="text" id="REGISTRATION_NO" name="REGISTRATION_NO">
								<label class="label_inp0_v2" for="REGISTRATION_NO">${fn:escapeXml(emax:word("주민등록번호"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2 fw50" type="text" id="POSITION_NAME" name="POSITION_NAME">
								<label class="label_inp0_v2" for="POSITION_NAME">${fn:escapeXml(emax:word("직위"))}</label>
								<input class="form_inp1_v2 fw50" type="text" id="DUTY_NAME" name="DUTY_NAME">
								<label class="label_inp2_v2" for="DUTY_NAME">${fn:escapeXml(emax:word("직책"))}</label>
							</div>
							<div class="form_object w210 mgb16">
								<input class="form_inp0_v2 fw50" type="text" id="SERVICE_DIVISION_NAME" name="SERVICE_DIVISION_NAME">
								<label class="label_inp0_v2" for="SERVICE_DIVISION_NAME">${fn:escapeXml(emax:word("근무직구분"))}</label>
								<input class="form_inp1_v2 fw50" type="text" id="SERVICE_TYPE_NAME" name="SERVICE_TYPE_NAME">
								<label class="label_inp2_v2" for="SERVICE_TYPE_NAME">${fn:escapeXml(emax:word("근무직유형"))}</label>
							</div>
							<div class="form_object w210 mgr0 mgb16">
								<input class="form_inp0_v2" type="text" id="RETIRE_REASON" name="RETIRE_REASON">
								<label class="label_inp0_v2" for="RETIRE_REASON">${fn:escapeXml(emax:word("퇴직사유"))}</label>
							</div>
							<div class="content_inner_hidden" id="content_inner_hidden">
								<div class="form_object w210 mgb16">
									<input class="form_inp0_v2" type="text" id="EMP_NAME_EN" name="EMP_NAME_EN">
									<label class="label_inp0_v2" for="EMP_NAME_EN">${fn:escapeXml(emax:word("성명(영문명)"))}</label>
								</div>
								<div class="form_object w210 mgb16">
									<input class="form_date0_v2R fw70" type="text" id="BIRTHDAY" name="BIRTHDAY">
									<label class="label_inp0_v2" for="BIRTHDAY">${fn:escapeXml(emax:word("생년월일"))} </label>
									<input class="form_check3" type="checkbox" id="LUNA_YN" name="LUNA_YN">
									<label class="label_checkbox5_v2" for="LUNA_YN">${fn:escapeXml(emax:word("음력"))} </label>
								</div>
								<div class="form_object w210 mgb16">
									<input class="form_inp0_v2 fw50" type="text" id="RANK_NAME" name="RANK_NAME">
									<label class="label_inp0_v2" for="RANK_NAME">${fn:escapeXml(emax:word("직급"))}</label>
									<input class="form_inp1_v2 fw50" type="text" id="JOB_GROUP" name="JOB_GROUP">
									<label class="label_inp2_v2" for="JOB_GROUP">${fn:escapeXml(emax:word("직군"))}</label>
								</div>
								<div class="form_object w210 mgb16">
									<input class="form_inp0_v2" type="text" id="JOIN_DATE" name="JOIN_DATE">
									<label class="label_inp0_v2" for="JOIN_DATE">${fn:escapeXml(emax:word("입사일자"))}</label>
								</div>
								<div class="form_object w210 mgr0 mgb16">
									<input class="form_inp0_v2" type="text" id="END_DATE" name="END_DATE">
									<label class="label_inp0_v2" for="END_DATE">${fn:escapeXml(emax:word("계약종료일"))}</label>
								</div>
								<div class="form_object w210 mgb16">
									<input class="form_inp0_v2" type="text" id="EMP_NAME_CH" name="EMP_NAME_CH">
									<label class="label_inp0_v2" for="EMP_NAME_CH">${fn:escapeXml(emax:word("성명(한자명)"))}</label>
								</div>
								<div class="form_object w210 mgb16">
									<input class="form_inp0_v2 fw50" type="text" id="GENDER_NAME" name="GENDER_NAME">
									<label class="label_inp0_v2" for="GENDER_NAME">${fn:escapeXml(emax:word("성별"))}</label>
									<input class="form_inp1_v2 fw50" type="text" id="AGE" name="AGE">
									<label class="label_inp2_v2" for="AGE">${fn:escapeXml(emax:word("나이"))}</label>
								</div>
								<div class="form_object w210 mgb16">
									<input class="form_inp0_v2 fw50" type="text" id="JOB_FUNCTION_NAME" name="JOB_FUNCTION_NAME">
									<label class="label_inp0_v2" for="JOB_FUNCTION_NAME">${fn:escapeXml(emax:word("직무"))}</label>
									<input class="form_inp1_v2 fw50" type="text" id="JOB_TYPE_NAME" name="JOB_TYPE_NAME">
									<label class="label_inp2_v2" for="JOB_TYPE_NAME">${fn:escapeXml(emax:word("직종"))}</label>
								</div>
								<div class="form_object w210 mgb16">
									<input class="form_inp0_v2" type="text" id="GROUP_JOIN_DATE" name="GROUP_JOIN_DATE">
									<label class="label_inp0_v2" for="GROUP_JOIN_DATE">${fn:escapeXml(emax:word("그룹입사일"))}</label>
								</div>
								<div class="form_object w210 mgr0 mgb16">
									<input class="form_inp0_v2 fw50" type="text" id="LEAVE_FROM_DATE" name="LEAVE_FROM_DATE">
									<label class="label_inp0_v2" for="LEAVE_FROM_DATE">${fn:escapeXml(emax:word("휴직시작일"))}</label>
									<input class="form_inp1_v2 fw50" type="text" id="LEAVE_TO_DATE" name="LEAVE_TO_DATE">
									<label class="label_inp2_v2" for="LEAVE_TO_DATE">${fn:escapeXml(emax:word("휴직종료일"))}</label>
								</div>
							</div>
							<div class="content_inner_btn">
								<button type="button" class="white" id="content_fold_btn">더보기</button>
							</div>
						</div>
						<div class="inner_tab_wrap2" id="inner_tab_wrap">
							<div class="grid_wrap">
								<ul class="inner_tabs">
									<li class="inner_tab"><a class="tab_link" href="#inner_tab0" title="">${fn:escapeXml(emax:word("인사정보(추가)"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab11" title="">${fn:escapeXml(emax:word("발령사항"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab12" title="">${fn:escapeXml(emax:word("투입프로젝트"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab16" title="">${fn:escapeXml(emax:word("인사고과"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab13" title="">${fn:escapeXml(emax:word("교육사항"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab8" title="">${fn:escapeXml(emax:word("경력정보"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab10" title="">${fn:escapeXml(emax:word("가족사항"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab7" title="">${fn:escapeXml(emax:word("학력정보"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab4" title="">${fn:escapeXml(emax:word("자격면허"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab3" title="">${fn:escapeXml(emax:word("외국어"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab5" title="">${fn:escapeXml(emax:word("포상사항"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab6" title="">${fn:escapeXml(emax:word("징계사항"))}</a></li>
									<li class="inner_tab"><a class="tab_link" href="#inner_tab17" title="">${fn:escapeXml(emax:word("첨부파일"))}</a></li>
								</ul>
								<div class="inner_panel h320" id="inner_tab0">
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="EMAIL" name="EMAIL">
										<label class="label_inp0_v2" for="EMAIL">${fn:escapeXml(emax:word("Email"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="EMAIL2" name="EMAIL2">
										<label class="label_inp0_v2" for="EMAIL2">${fn:escapeXml(emax:word("Email(비상연락용)"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="CELEPHONE" name="CELEPHONE">
										<label class="label_inp0_v2" for="CELEPHONE">${fn:escapeXml(emax:word("휴대전화"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="PHONE" name="PHONE">
										<label class="label_inp0_v2" for="PHONE">${fn:escapeXml(emax:word("집전화"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="EXTENSION_NO" name="EXTENSION_NO">
										<label class="label_inp0_v2" for="EXTENSION_NO">${fn:escapeXml(emax:word("내선번호"))}</label>
									</div>
									<div class="form_object w210 mgr0 mgb16">
										<input class="form_inp0_v2" type="text" id="ZIP_CODE" name="ZIP_CODE">
										<label class="label_inp0_v2" for="ZIP_CODE">${fn:escapeXml(emax:word("우편번호"))}</label>
									</div>
									<div class="form_object w435 mgb16">
										<input class="form_inp0_v2" type="text" id="ADDR" name="ADDR">
										<label class="label_inp0_v2" for="ADDR">${fn:escapeXml(emax:word("집주소"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="ADDR2" name="ADDR2">
										<label class="label_inp0_v2" for="ADDR2">${fn:escapeXml(emax:word("상세주소"))}</label>
									</div>
									<div class="form_object w435 mgb16">
										<input class="form_inp0_v2" type="text" id="ADDR_EN" name="ADDR_EN">
										<label class="label_inp0_v2" for="ADDR_EN">${fn:escapeXml(emax:word("영문주소"))}</label>
									</div>
									<div class="form_object w210 mgr0 mgb16">
										<input class="form_inp0_v2" type="text" id="ADDR_EN2" name="ADDR_EN2">
										<label class="label_inp0_v2" for="ADDR_EN2">${fn:escapeXml(emax:word("영문상세주소"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="PATRIOT_DIVISION_CODE" name="PATRIOT_DIVISION_CODE">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("보훈구분"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="PATRIOT_NO" name="PATRIOT_NO">
										<label class="label_inp0_v2" for="">${fn:escapeXml(emax:word("보훈번호"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="PATRIOT_CONTENT" name="PATRIOT_CONTENT">
										<label class="label_inp0_v2" for="PATRIOT_CONTENT">${fn:escapeXml(emax:word("보훈내용"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="MIC_CD" name="MIC_CD">
										<label class="label_inp0_v2" for="MIC_CD">${fn:escapeXml(emax:word("역종구분"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="LOC_CD" name="LOC_CD">
										<label class="label_inp0_v2" for="LOC_CD">${fn:escapeXml(emax:word("군별구분"))}</label>
									</div>
									<div class="form_object w210 mgr0 mgb16">
										<input class="form_inp0_v2" type="text" id="MBK_CD" name="MBK_CD">
										<label class="label_inp0_v2" for="MBK_CD">${fn:escapeXml(emax:word("병과구분"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="ENL_YMD" name="ENL_YMD">
										<label class="label_inp0_v2" for="ENL_YMD">${fn:escapeXml(emax:word("군복무시작일"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="MIL_YMD" name="MIL_YMD">
										<label class="label_inp0_v2" for="MIL_YMD">${fn:escapeXml(emax:word("군복무종료일"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_check0" type="checkbox" id="DISABLED_YN" name="DISABLED_YN">
										<label class="label_checkbox0_v2" for="DISABLED_YN">${fn:escapeXml(emax:word("장애여부"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="DISABLED_CODE" name="DISABLED_CODE">
										<label class="label_inp0_v2" for="DISABLED_CODE">${fn:escapeXml(emax:word("장애구분"))}</label>
									</div>
									<div class="form_object w210 mgb16">
										<input class="form_inp0_v2" type="text" id="DISABLED_GRADE" name="DISABLED_GRADE">
										<label class="label_inp0_v2" for="DISABLED_GRADE">${fn:escapeXml(emax:word("장애등급"))}</label>
									</div>
									<div class="form_object w210 mgr0 mgb16">
										<input class="form_inp0_v2" type="text" id="DISABLED_YMD" name="DISABLED_YMD">
										<label class="label_inp0_v2" for="DISABLED_YMD">${fn:escapeXml(emax:word("장애등록일"))}</label>
									</div>
								</div>
								<div class="inner_panel h320" id="inner_tab8">
									<div id="careerGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab11">
									<div id="appointmentGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab10">
									<div id="familyGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab7">
									<div id="educationGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab4">
									<div id="licenseGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab5">
									<div id="prizeGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab6">
									<div id="punishGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab13">
									<div id="trainingGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab3">
									<div id="langGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab12">
									<div id="projectGrid"></div>
								</div>
								<div class="inner_panel h320" id="inner_tab16">
									<div id="temp"></div>
								</div>
								<div class="inner_panel h310" id="inner_tab17" style="padding-top: 5px;">
									<ul class="small_form_wrap">
										<li class="file_area" style="width: 100%;">
											<p class="form_right_title">첨부파일</p> <input type="file" id="multi-add" multiple="multiple" name="file" style="display: none;">
											<div id="dropContainer" class="appr_process scroll_process" style="padding-top: 10px;">
												<table id="fileListTBL">
													<tbody>
													</tbody>
												</table>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>