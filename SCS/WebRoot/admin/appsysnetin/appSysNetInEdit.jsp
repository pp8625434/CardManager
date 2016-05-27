<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@page import="com.base.framework.BaseConfigHolder"%>
<%
	String uploadservice = BaseConfigHolder.getUploadfileservice();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/appsysnetin/js/appSysNetIn.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="appSysNetIn.id !=null">
			<div class="mainTitle">
				编辑应用系统入网审批
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建应用系统入网审批
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/appsysnetin/appSysNetInSave.action" onsubmit="" enctype="multipart/form-data">
			<input type="hidden" name="appSysNetIn.id" id="id"	value="<s:property value="appSysNetIn.id" />"/>
			<input type="hidden" name="appSysNetIn.version" id="version"	value="<s:property value="appSysNetIn.version" />"/>
			<input type="hidden" name="appSysNetIn.firstperson" id="firstperson"	value="<s:property value="appSysNetIn.firstperson" />"/>
			<input type="hidden" name="appSysNetIn.firstpid" id="firstpid"	value="<s:property value="appSysNetIn.firstpid" />"/>
			<input type="hidden" name="appSysNetIn.firstsubdate" id="firstsubdate"	value="<s:property value="appSysNetIn.firstsubdate" />"/>
			<table width="100%" class="bordered">
				<caption>
					应用系统入网审批表
				</caption>
				<tr>
					<td width="25%">
						应用系统名称
					</td>
					<td width="25%">
						<input type="text" name="appSysNetIn.sysname" id="sysname"	value="<s:property value="appSysNetIn.sysname" />" isnull="no" dorder="1"  mes="应用系统名称不能空" size="50"/>
					</td>
					<td width="25%">
						项目负责人
					</td>
					<td width="25%">
						<input type="text" name="appSysNetIn.projectprincipal" id="projectprincipal" value="<s:property value="appSysNetIn.projectprincipal" />" isnull="no" dorder="2"  mes="项目负责人不能空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						业务主管部门
					</td>
					<td>
						<input type="text" name="appSysNetIn.executivedept" id="executivedept" value="<s:property value="appSysNetIn.executivedept" />" isnull="no" dorder="3"  mes="业务主管部门不能空" size="25"/>
						<input type="hidden" name="appSysNetIn.executivedeptid" id="executivedeptid" value="<s:property value="appSysNetIn.executivedeptid" />"/>
					</td>
					<td>
						部门负责人
					</td>
					<td>
						<input type="text" name="appSysNetIn.deptprincipal" id="deptprincipal" value="<s:property value="appSysNetIn.deptprincipal" />" isnull="no" dorder="4"  mes="部门负责人不能空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						系统开发单位
					</td>
					<td>
						<input type="text" name="appSysNetIn.sysdevelopdept" id="sysdevelopdept" value="<s:property value="appSysNetIn.sysdevelopdept" />" isnull="no" dorder="5"  mes="系统开发单位不能空" size="25"/>
					</td>
					<td>
						开发单位联系人
					</td>
					<td>
						<input type="text" name="appSysNetIn.developor" id="developor" value="<s:property value="appSysNetIn.developor" />" isnull="no" dorder="6"  mes="开发单位联系人不能空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						开发单位资质
					</td>
					<td colspan="3">
						<input type="text" name="appSysNetIn.developdeptzizhi" id="developdeptzizhi" value="<s:property value="appSysNetIn.developdeptzizhi" />" isnull="no" dorder="7"  mes="开发单位资质不能空" size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						系统密级
					</td>
					<td>
						<hi:select emu="page_33_sysSec" name="appSysNetIn.security" id="security" isnull="no" dorder="8"  mes="系统密级不能空"/>
					</td>
					<td>
						接入位置
					</td>
					<td>
						<input type="text" name="appSysNetIn.accesspoint" id="accesspoint" value="<s:property value="appSysNetIn.accesspoint" />" isnull="no" dorder="9"  mes="接入位置不能空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						适用范围
					</td>
					<td colspan="3">
						<input type="text" name="appSysNetIn.applicationrange" id="applicationrange" value="<s:property value="appSysNetIn.applicationrange" />" isnull="no" dorder="10"  mes="适用范围不能空" size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						系统功能简述
					</td>
					<td colspan="3">
						<textarea rows="3" name="appSysNetIn.functionsketch" id="functionsketch"><s:property value="appSysNetIn.functionsketch" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						项目立项与验收资料
					</td>
					<td colspan="3">
						<textarea rows="3" name="appSysNetIn.projectdata" id="projectdata"><s:property value="appSysNetIn.projectdata" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						系统运行所需软硬件环境
					</td>
					<td colspan="3">
						<textarea rows="3" name="appSysNetIn.environment" id="environment"><s:property value="appSysNetIn.environment" /></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						系统安全策略
					</td>
					<td colspan="3">
						<textarea rows="3" name="appSysNetIn.securitypolicy" id="securitypolicy"><s:property value="appSysNetIn.securitypolicy" /></textarea>
						
						<s:file name="upload" id="file" label="upload File" cssStyle="width:360px;" onchange="pathChange('Logo', 'file')"/>
						
					</td>
				</tr>
				<tr>
					<td colspan="3">
						（附件详述系统符合保密标准BMB17与BMB22的安全策略设置）
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						立项部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="appSysNetIn.setupdept" id="setupdept"><s:property value="appSysNetIn.setupdept" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="appSysNetIn.setupdeptsign" id="setupdeptsign" isnull="no" dorder="11" mes="请立项部门签字"/>
						<input type="hidden" name="appSysNetIn.setuporid" id="setuporid" value="<s:property value="appSysNetIn.setuporid" />"/>
						<input type="hidden" name="appSysNetIn.setupordate" id="setupordate" value="<s:property value="appSysNetIn.setupordate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="appSysNetIn.securityopinion" id="securityopinion"><s:property value="appSysNetIn.securityopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="appSysNetIn.securitysign" id="securitysign" isnull="no" dorder="12" mes="请保密管理部门签字" />
						<input type="hidden" name="appSysNetIn.securityid" id="securityid" value="<s:property value="appSysNetIn.securityid" />"/>
						<input type="hidden" name="appSysNetIn.securitysigndate" id="securitysigndate" value="<s:property value="appSysNetIn.securitysigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="appSysNetIn.infordeptopinion" id="infordeptopinion"><s:property value="appSysNetIn.infordeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="appSysNetIn.infordeptsign" id="infordeptsign" isnull="no" dorder="18" mes="请签字"/>
						<input type="hidden" name="appSysNetIn.infordeptsignid" id="infordeptsignid" value="<s:property value="appSysNetIn.infordeptsignid" />"/>
						<input type="hidden" name="appSysNetIn.infordeptsigndate" id="infordeptsigndate" value="<s:property value="appSysNetIn.infordeptsigndate" />"/>
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
