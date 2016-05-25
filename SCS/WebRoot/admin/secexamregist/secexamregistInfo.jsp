<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/secexamregist/js/secexamregist.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/secexamregist/secexamregistInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="secexamregist.id" value="<s:property value="secexamregist.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
					    <td width="25%">承办人</td>
					    <td width="25%"><s:property value="secexamregist.pname" /></td>
					    <td width="25%">所属部门</td>
					    <td width="25%"><s:property value="secexamregist.orgname" /></td>
					</tr>
					<tr>
					    <td>审查内容</td>
					    <td colspan="3"><s:property value="secexamregist.recontent" /></td>
					</tr>
					<tr>
					    <td>是否涉密</td>
					    <td style="text-align:left;"><hi:select emu="yesOrNo" name="secexamregist.isclassification" isLabel="true"/></td>
					    <td>涉密等级</td>
					    <td><s:property value="secexamregist.classification" /></td>
					</tr>
					<tr>
					    <td>资料用途或接收单位全称</td>
					    <td colspan="3"><s:property value="secexamregist.fullname" /></td>
					</tr>
					<tr>
					    <td rowspan="2">部门领导意见</td>
					    <td colspan="3"><s:property value="secexamregist.depdesc" /></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select emu="yesNo" name="secexamregist.depsign" isLabel="true" /></td>
					</tr>
					<tr>
					    <td rowspan="2">保密委员会办公室意见</td>
					    <td colspan="3"><s:property value="secexamregist.officedesc" /></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select emu="yesNo" name="secexamregist.officesign" isLabel="true" /></td>
					</tr>
					<tr>
					    <td>专家或专家组意见</td>
					    <td colspan="3"><s:property value="secexamregist.expertsdesc" /></td>
					</tr>
					<tr>
					    <td rowspan="2">保密委员会意见</td>
					    <td colspan="3"><s:property value="secexamregist.scomdesc" /></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select emu="yesNo" name="secexamregist.scomsign" isLabel="true"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/secexamregist/secexamregistList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>