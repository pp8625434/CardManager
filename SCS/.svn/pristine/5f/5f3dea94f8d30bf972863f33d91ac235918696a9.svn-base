<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/secexamregist/js/secexamregist.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/secexamregist/saveSecexamregist.action" method="post" name="formSearch" id="formSearch" onsubmit="saveSecexamregist();">
			<input type="hidden" id="cid" name="secexamregist.id" value="<s:property value="secexamregist.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
					    <td width="25%">承办人</td>
					    <td width="25%"><input type="text" name="secexamregist.pname" id="cbr" value="<s:property value="secexamregist.pname" />" isnull="no" mes="承办人不能为空"/></td>
					    <td width="25%">所属部门</td>
					    <td width="25%"><input type="text" name="secexamregist.orgname" id="ssbm" value="<s:property value="secexamregist.orgname" />" isnull="no" mes="所属部门不能为空"/></td>
					</tr>
					<tr>
					    <td>审查内容</td>
					    <td colspan="3"><s:textarea name="secexamregist.recontent" id="scnr" isnull="no" mes="审查内容不能为空"></s:textarea></td>
					</tr>
					<tr>
					    <td>是否涉密</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="secexamregist.isclassification" isnull="no"  mes="请选择是否涉密" /></td>
					    <td>涉密等级</td>
					    <td><input type="text" name="secexamregist.classification" id="smdj" value="<s:property value="secexamregist.classification" />" isnull="no" mes="涉密等级不能为空"/></td>
					</tr>
					<tr>
					    <td>资料用途或接收单位全称</td>
					    <td colspan="3"><input type="text" name="secexamregist.fullname" id="zlyt" value="<s:property value="secexamregist.fullname" />" isnull="no" mes="资料用途或接收单位全称不能为空"/></td>
					</tr>
					<tr>
					    <td rowspan="2">部门领导意见</td>
					    <td colspan="3"><s:textarea name="secexamregist.depdesc" id="ldyj" isnull="no" mes="部门领导意见不能为空"></s:textarea></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="secexamregist.depsign" isnull="no"  mes="请选择部门领导签字" /></td>
					</tr>
					<tr>
					    <td rowspan="2">保密委员会办公室意见</td>
					    <td colspan="3"><s:textarea name="secexamregist.officedesc" id="bgsyj" isnull="no" mes="保密委员会办公室意见不能为空"></s:textarea></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="secexamregist.officesign" isnull="no"  mes="请选择保密委员会办公室签字" /></td>
					</tr>
					<tr>
					    <td>专家或专家组意见</td>
					    <td colspan="3"><s:textarea name="secexamregist.expertsdesc" id="zjz" isnull="no" mes="专家或专家组意见不能为空"></s:textarea></td>
					</tr>
					<tr>
					    <td rowspan="2">保密委员会意见</td>
					    <td colspan="3"><s:textarea name="secexamregist.scomdesc" id="bwh" isnull="no" mes="保密委员会意见不能为空"></s:textarea></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="secexamregist.scomsign" isnull="no"  mes="请选择保密委员会签字" /></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/secexamregist/secexamregistList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>