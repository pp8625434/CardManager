<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css"
			href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css"
			href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript"
			src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" 
			src="${applicationScope.ctx}/admin/statesecrets/js/statesecrets.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/statesecrets/statesecretsInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="sid" name="sStatesecretsTab.id" value="<s:property value="sStatesecretsTab.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
    				<span style="text-align: left;">部门：<s:property value="sStatesecretsTab.orgname"/></span>　　　　　　　　　　　　　　　　　　　　　　　　
    				<span style="text-align: right;">填报日期：<s:date name="sStatesecretsTab.filltime" format="yyyy-MM-dd"/></span>
    			</div>
				<table class="bordered">
					<tr>
						<td width="25%">承办人</td>
					    <td width="25%"><s:property value="sStatesecretsTab.pname"/></td>
					    <td width="25%">联系电话</td>
					    <td width="25%"><s:property value="sStatesecretsTab.cellphone"/></td>
					</tr>
					<tr>
						<td>事项名称</td>
					    <td colspan="3"><s:property value="sStatesecretsTab.mname"/></td>
					</tr>
					<tr>
					    <td>调整目的</td>
					    <td colspan="3" style="text-align: left;">
					    	<hi:select type="radio" emu="BM-01-01_change" name="sStatesecretsTab.adjustpurpose" isnull="no"  mes="请选择调整目的" isLabel="true"/>
			    		</td>
					</tr>
					<tr>
					    <td>原密级</td>
					    <td><s:property value="sStatesecretsTab.oclassification"/></td>
					    <td>拟变更密级</td>
					    <td><s:property value="sStatesecretsTab.newclassification"/></td>
					</tr>
					<tr>
					    <td>原保密期限</td>
					    <td><s:property value="sStatesecretsTab.orperiod"/></td>
					    <td>拟变更保密期限</td>
					    <td><s:property value="sStatesecretsTab.newperiod"/></td>
					</tr>
					<tr>
					    <td>原控制范围</td>
					    <td><s:property value="sStatesecretsTab.orcontrolrange"/></td>
					    <td>拟变更控制范围</td>
					    <td><s:property value="sStatesecretsTab.newcontrolrange"/></td>
					</tr>
					<tr>
					    <td>变更或解密理由</td>
					    <td colspan="3"><s:property value="sStatesecretsTab.chdecryption"/></td>
					</tr>
				</table>
				<div>
					<span>注：调整目的为解密的不填写相关拟变更栏</span>
				</div>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/statesecrets/statesecretsList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>