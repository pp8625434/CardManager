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
			src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/appsysalter/js/appSysAlter.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<s:if test="appSysAlter.id !=null">
			<div class="mainTitle">
				编辑应用系统业务模块增加、删除、配置变更审批
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建应用系统业务模块增加、删除、配置变更审批
			</div>
		</s:else>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/appsysalter/appSysAlterSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="appSysAlter.id" id="id"
					value="<s:property value="appSysAlter.id" />" />
				<input type="hidden" name="appSysAlter.version" id="version"
					value="<s:property value="appSysAlter.version" />" />
				<input type="hidden" name="appSysAlter.firstperson" id="firstperson"
					value="<s:property value="appSysAlter.firstperson" />" />
				<input type="hidden" name="appSysAlter.firstpid" id="firstpid"
					value="<s:property value="appSysAlter.firstpid" />" />
				<input type="hidden" name="appSysAlter.firstsubdate"
					id="firstsubdate"
					value="<s:property value="appSysAlter.firstsubdate" />" />
				<table width="100%" class="bordered">
					<caption>
						应用系统业务模块增加、删除、配置变更审批表
					</caption>
					<tr>
						<td width="16%">
							业务系统名称
						</td>
						<td colspan="5">
							<input type="text" name="appSysAlter.sysname"
								value="<s:property value="appSysAlter.sysname" />"
								id="sysname" isnull="no" dorder="1" mes="业务系统名称不能空" size="50" />
						</td>
					</tr>
					<tr>
						<td>
							申请单位
						</td>
						<td width="16%">
							<input type="text" name="appSysAlter.applydept" id="applydept"
								value="<s:property value="appSysAlter.applydept" />"
								isnull="no" dorder="2" mes="申请单位不能为空" size="25" />
							<input type="hidden" name="appSysAlter.applydeptid"
								id="applydeptid"
								value="<s:property value="appSysAlter.applydeptid" />" />
						</td>
						<td width="16%">
							申请人员
						</td>
						<td width="16%">
							<input type="text" name="appSysAlter.applicant" id="applicant"
								value="<s:property value="appSysAlter.applicant" />"
								isnull="no" dorder="3" mes="申请人员不能空" size="25" />
						</td>
						<td width="16%">
							申请日期
						</td>
						<td width="18%">
							<input type="text" name="appSysAlter.appliydate" id="appliydate"
								value="<s:date name="appSysAlter.appliydate" format="yyyy-MM-dd hh:mm:ss" />"
								isnull="no" dorder="4" dtype="date(yyyy-MM-dd HH:mm:ss)"
								mes="申请日期不能为空" />
						</td>
					</tr>
					<tr>
						<td>
							业务系统变更原因
						</td>
						<td colspan="5">
							<textarea rows="3" name="appSysAlter.sysalterreason"
								id="sysalterreason"><s:property value="appSysAlter.sysalterreason" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td>
							增加（删除）模块名称/配置变更内容（包括业务模块的功能和流程，可附页）
						</td>
						<td colspan="5">
							<textarea rows="3" name="appSysAlter.altercontent"
								id="altercontent"><s:property value="appSysAlter.altercontent" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请部门意见
						</td>
						<td colspan="5">
							<textarea rows="3" name="appSysAlter.applydeptopinion"
								id="applydeptopinion"><s:property value="appSysAlter.applydeptopinion" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="appSysAlter.applydeptsign" id="applydeptsign" isnull="no"
								dorder="5" mes="请申请部门签字" />
							<input type="hidden" name="appSysAlter.applydeptsignid"
								id="applydeptsignid"
								value="<s:property value="appSysAlter.applydeptsignid" />" />
							<input type="hidden" name="appSysAlter.applydeptsigndate"
								id="applydeptsigndate"
								value="<s:property value="appSysAlter.applydeptsigndate" />" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="5">
							<textarea rows="3" name="appSysAlter.infordeptopinion"
								id="infordeptopinion"><s:property value="appSysAlter.infordeptopinion" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="appSysAlter.infordeptsign" id="infordeptsign" isnull="no"
								dorder="6" mes="请信息化管理部门签字" />
							<input type="hidden" name="appSysAlter.infordeptsignid"
								id="infordeptsignid"
								value="<s:property value="appSysAlter.infordeptsignid" />" />
							<input type="hidden" name="appSysAlter.infordeptsigndate"
								id="infordeptsigndate"
								value="<s:property value="appSysAlter.infordeptsigndate" />" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							配置变更操作结果（有系统管理员填写）
						</td>
						<td colspan="5">
							<textarea rows="3" name="appSysAlter.operateresult"
								id="operateresult"><s:property value="appSysAlter.operateresult" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td>
							系统管理员签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo" name="appSysAlter.sysmanager"
								id="sysmanager" isnull="no" dorder="7" mes="请系统管理员签字" />
							<input type="hidden" name="appSysAlter.sysmanagerid"
								id="sysmanagerid"
								value="<s:property value="appSysAlter.sysmanagerid" />" />
							<input type="hidden" name="appSysAlter.managersigndate"
								id="managersigndate"
								value="<s:property value="appSysAlter.managersigndate" />" />
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
