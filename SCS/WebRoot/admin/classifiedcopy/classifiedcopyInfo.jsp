<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedcopy/js/classifiedcopy.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/classifiedcopy/classifiedcopyInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="classifiedcopy.id" value="<s:property value="classifiedcopy.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
					    <td colspan="2">申请人</td>
					    <td colspan="2"><s:property value="classifiedcopy.applyname"/></td>
					    <td>部门</td>
					    <td colspan="3"><s:property value="classifiedcopy.orgname"/></td>
					</tr>
					<tr>
					    <td>序号</td>
					    <td colspan="2">涉密载体内容（或文件名称）</td>
					    <td>份数</td>
					    <td>每份总页数</td>
					    <td>密级</td>
					    <td colspan="2">准印号</td>
					</tr>
					<s:iterator value="contentList"  status="con">
						<tr>
							<td><s:property value="#con.index+1"/></td>
					    	<td colspan="2"><s:property value="contents"/></td>
					    	<td><s:property value="fs"/></td>
					    	<td><s:property value="zys"/></td>
					    	<td><hi:select emu="BM-02-03procls" name="contentList[${con.count-1}].classification" isLabel="true" /></td>
					    	<td colspan="2">CAAET------<s:property value="zyh"/></td>
						</tr>
					</s:iterator>
					<tr>
					    <td>复印用途</td>
					    <td colspan="7" style="text-align:left;"><hi:select emu="BM-03-02fyyt" name="classifiedcopy.copyutility" isnull="no"  mes="请选择复印用途" isLabel="true"/></td>
					</tr>
					<tr>
					    <td>承制单位</td>
					    <td colspan="7" style="text-align:left;"><hi:select emu="BM-03-02czdw" name="classifiedcopy.mgunit" isnull="no"  mes="请选择承制单位" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="2">处室领导意见</td>
					    <td colspan="7" style="text-align:left;">（负责审批秘密级涉密载体复制；审核机密级载体复制）</td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="4" style="text-align:left;"><hi:select emu="yesNo" name="classifiedcopy.officesign" isnull="no"  mes="请选择处室领导签字意见" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="2">部门领导意见</td>
					    <td colspan="7" style="text-align:left;">（负责审批机密级及以下涉密载体复制）</td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="4" style="text-align:left;"><hi:select emu="yesNo" name="classifiedcopy.departmentsign" isnull="no"  mes="请选择部门领导签字意见" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="2">承办单位确认</td>
					    <td colspan="7" style="text-align:left;">已按申请单位需求完成涉密载体复制，并全部交付申请单位。</td>
					</tr>
					<tr>
					    <td colspan="2" >经办人签字：</td>
					    <td colspan="4" style="text-align:left;"><hi:select emu="yesNo" name="classifiedcopy.agentsign" isnull="no"  mes="请选择承办单位签字意见" isLabel="true"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/classifiedcopy/classifiedcopyList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>