<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/appsysalter/js/appSysAlter.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新建应用系统业务模块增加、删除、配置变更审批
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/appsysalter/appSysAlterSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="appSysAlter.id" id="id"/>
			<input type="hidden" name="appSysAlter.version" id="version"/>
			<input type="hidden" name="appSysAlter.firstperson" id="firstperson"/>
			<input type="hidden" name="appSysAlter.firstpid" id="firstpid"/>
			<input type="hidden" name="appSysAlter.firstsubdate" id="firstsubdate"/>
			<table width="100%"  class="bordered">
				<caption>
					应用系统业务模块增加、删除、配置变更审批表
				</caption>
				<tr>
					<td width="16%">
						业务系统名称
					</td>
					<td colspan="5">
						<input type="text" name="appSysAlter.sysname" id="sysname" isnull="no" dorder="1"  mes="业务系统名称不能空" size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						申请单位
					</td>
					<td width="16%">
						<input type="text" name="appSysAlter.applydept" id="applydept" isnull="no" dorder="2"  mes="申请单位不能为空" size="25"/>
						<input type="hidden" name="appSysAlter.applydeptid" id="applydeptid"/>
					</td>
					<td width="16%">
						申请人员
					</td>
					<td width="16%">
						<input type="text" name="appSysAlter.applicant" id="applicant" isnull="no" dorder="3"  mes="申请人员不能空" size="25"/>
					</td>
					<td width="16%">
						申请日期
					</td>
					<td width="18%">
						<input type="text" name="appSysAlter.appliydate" id="appliydate" isnull="no" dorder="4" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="申请日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						业务系统变更原因
					</td>
					<td colspan="5">
						<textarea rows="3" name="appSysAlter.sysalterreason" id="sysalterreason"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						增加（删除）模块名称/配置变更内容（包括业务模块的功能和流程，可附页）
					</td>
					<td colspan="5">
						<textarea rows="3" name="appSysAlter.altercontent" id="altercontent"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="appSysAlter.applydeptopinion" id="applydeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="appSysAlter.applydeptsign" id="applydeptsign" isnull="no" dorder="5" mes="请申请部门签字" />
						<input type="hidden" name="appSysAlter.applydeptsignid" id="applydeptsignid"/>
						<input type="hidden" name="appSysAlter.applydeptsigndate" id="applydeptsigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="appSysAlter.infordeptopinion" id="infordeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="appSysAlter.infordeptsign" id="infordeptsign" isnull="no" dorder="6" mes="请信息化管理部门签字"/>
						<input type="hidden" name="appSysAlter.infordeptsignid" id="infordeptsignid"/>
						<input type="hidden" name="appSysAlter.infordeptsigndate" id="infordeptsigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						配置变更操作结果（有系统管理员填写）
					</td>
					<td colspan="5">
						<textarea rows="3" name="appSysAlter.operateresult" id="operateresult"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						系统管理员签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="appSysAlter.sysmanager" id="sysmanager" isnull="no" dorder="7" mes="请系统管理员签字"/>
						<input type="hidden" name="appSysAlter.sysmanagerid" id="sysmanagerid"/>
						<input type="hidden" name="appSysAlter.managersigndate" id="managersigndate"/>
					</td>
				</tr>
			</table>
			<br />
			<div class="btnBox">
				<input type="submit" id="addBut" value="保存"  class="btnInput1" />
				&nbsp;
				<input type="button" class="btnInput2 chancleButton" value="取消" 
					onclick="cancelBtn();"/>
			</div>
		</form>
		</div>
	</body>
</html>