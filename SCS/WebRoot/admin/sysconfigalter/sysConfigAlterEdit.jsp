<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/sysconfigalter/js/sysConfigAlter.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">

		<s:if test="authorityAlter.id !=null">
			<div class="mainTitle">
				编辑系统配置变更审批
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建系统配置变更审批
			</div>
		</s:else>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/sysconfigalter/sysConfigAlterSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="sysConfigAlter.id" id="id"
					value="<s:property value="sysConfigAlter.id" />" />
				<input type="hidden" name="sysConfigAlter.version" id="version"
					value="<s:property value="sysConfigAlter.version" />" />
				<input type="hidden" name="sysConfigAlter.firstperson"
					id="firstperson"
					value="<s:property value="sysConfigAlter.firstperson" />" />
				<input type="hidden" name="sysConfigAlter.firstpid" id="firstpid"
					value="<s:property value="sysConfigAlter.firstpid" />" />
				<input type="hidden" name="sysConfigAlter.firstsubdate"
					id="firstsubdate"
					value="<s:property value="sysConfigAlter.firstsubdate" />" />
				<table width="100%" class="bordered">
					<caption>
						系统配置变更审批表
					</caption>
					<tr>
						<td width="25%">
							系统配置变更申请人
						</td>
						<td width="25%">
							<input type="text" name="sysConfigAlter.applicant" id="applicant"
								value="<s:property value="sysConfigAlter.applicant" />"
								isnull="no" dorder="1" mes="申请人不能空" size="25" />
						</td>
						<td width="25%">
							申请日期
						</td>
						<td width="25%">
							<input type="text" name="sysConfigAlter.applydate" id="applydate"
								value="<s:date name="sysConfigAlter.applydate" format="yyyy-MM-dd hh:mm:ss" />"
								isnull="no" dorder="2" dtype="date(yyyy-MM-dd HH:mm:ss)"
								mes="申请日期不能为空" />
						</td>
					</tr>
					<tr>
						<td>
							变更设备或系统名称
						</td>
						<td colspan="3">
							<input type="text" name="sysConfigAlter.devorsysname"
								id="devorsysname"
								value="<s:property value="sysConfigAlter.devorsysname" />"
								isnull="no" dorder="3" mes="设备或系统名称不能空" size="50" />
						</td>
					</tr>
					<tr>
						<td>
							配置变更原因
						</td>
						<td colspan="3">
							<textarea rows="3" name="sysConfigAlter.alterreason"
								id="alterreason"><s:property value="sysConfigAlter.alterreason" /></textarea>
						</td>
					</tr>
					<tr>
						<td>
							配置变更内容及影响情况分析
						</td>
						<td colspan="3">
							<textarea rows="3" name="sysConfigAlter.contentanalyze"
								id="contentanalyze"><s:property value="sysConfigAlter.contentanalyze" /></textarea>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="3">
							<textarea rows="3" name="sysConfigAlter.infordeptopinion"
								id="infordeptopinion"><s:property value="sysConfigAlter.infordeptopinion" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo"
								name="sysConfigAlter.infordeptsign" id="infordeptsign"
								isnull="no" dorder="4" mes="请信息化管理部门签字" />
							<input type="hidden" name="sysConfigAlter.infordeptsignid"
								id="infordeptsignid"
								value="<s:property value="sysConfigAlter.infordeptsignid" />" />
							<input type="hidden" name="sysConfigAlter.infordeptsigndate"
								id="infordeptsigndate"
								value="<s:property value="sysConfigAlter.infordeptsigndate" />" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							保密管理部门意见
						</td>
						<td colspan="3">
							<textarea rows="3" name="sysConfigAlter.securityopinion"
								id="securityopinion"><s:property value="sysConfigAlter.securityopinion" /></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo"
								name="sysConfigAlter.securitysign" id="securitysign" isnull="no"
								dorder="5" mes="请保密管理部门签字" />
							<input type="hidden" name="sysConfigAlter.securityid"
								id="securityid"
								value="<s:property value="sysConfigAlter.securityid" />" />
							<input type="hidden" name="sysConfigAlter.securitysigndate"
								id="securitysigndate"
								value="<s:property value="sysConfigAlter.securitysigndate" />" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							注：是否需保密部门签署意见，信息化部门要在意见栏中明确指出。
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							配置变更操作结果及影响情况分析
						</td>
						<td colspan="3">
							<textarea rows="3" name="sysConfigAlter.resultanalyze"
								id="resultanalyze"><s:property value="sysConfigAlter.resultanalyze" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td>
							操作人员签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo"
								name="sysConfigAlter.operatorsign" id="operatorsign" isnull="no"
								dorder="6" mes="请操作员签字" />
							<input type="hidden" name="sysConfigAlter.operatorid"
								id="operatorid"
								value="<s:property value="sysConfigAlter.operatorid" />" />
							<input type="hidden" name="sysConfigAlter.operatorsigndate"
								id="operatorsigndate"
								value="<s:property value="sysConfigAlter.operatorsigndate" />" />
						</td>
					</tr>
				</table>
				<br />
				<div class="btnBox">
					<input type="submit" id="addBut" value="保存" class="btnInput1" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消"
						onclick="cancelBtn();" />
				</div>
			</form>
		</div>
	</body>
</html>
