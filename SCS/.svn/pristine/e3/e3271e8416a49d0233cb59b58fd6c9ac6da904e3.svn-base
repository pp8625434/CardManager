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
		<form action="${applicationScope.ctx}/statesecrets/saveStatesecrets.action" method="post" name="formSearch" id="formSearch" onsubmit="saveStatesecrets();">
			<input type="hidden" id="sid" name="sStatesecretsTab.id" value="<s:property value="sStatesecretsTab.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
    				<span style="text-align: left;">部门：<input type="text" name="sStatesecretsTab.orgname" id="bm" value="<s:property value="sStatesecretsTab.orgname"/>" isnull="no" mes="部门不能为空" /></span>　　　　　　　　　　　　
    				<span>填报日期：<input type="text" name="sStatesecretsTab.filltime" id="rq" dtype="date(yyyy-MM-dd)" isnull="no" mes="填报日期不能为空" format="yyyy-MM-dd" value="<s:date name="sStatesecretsTab.filltime" format="yyyy-MM-dd"/>" /></span>
    			</div>
				<table class="bordered">
					<tr>
						<td width="25%">承办人</td>
					    <td width="25%"><input type="text" name="sStatesecretsTab.pname" id="cbr" value="<s:property value="sStatesecretsTab.pname"/>" isnull="no" mes="承办人不能为空" /></td>
					    <td width="25%">联系电话</td>
					    <td width="25%"><input type="text" name="sStatesecretsTab.cellphone" id="lxdh" value="<s:property value="sStatesecretsTab.cellphone"/>" isnull="no"  mes="联系电话不能为空" dtype="number"/></td>
					</tr>
					<tr>
						<td>事项名称</td>
					    <td colspan="3"><input type="text" name="sStatesecretsTab.mname" id="sxmc" value="<s:property value="sStatesecretsTab.mname"/>" isnull="no" mes="事项名称不能为空" /></td>
					</tr>
					<tr>
					    <td>调整目的</td>
					    <td colspan="3" style="text-align: left;">
					    	<hi:select type="radio" emu="BM-01-01_change" name="sStatesecretsTab.adjustpurpose" isnull="no"  mes="请选择调整目的" />
			    		</td>
					</tr>
					<tr>
					    <td>原密级</td>
					    <td><input type="text" name="sStatesecretsTab.oclassification" id="ymj" value="<s:property value="sStatesecretsTab.oclassification"/>" isnull="no" mes="原密级不能为空" /></td>
					    <td>拟变更密级</td>
					    <td><input type="text" name="sStatesecretsTab.newclassification" id="nbgmj" value="<s:property value="sStatesecretsTab.newclassification"/>" isnull="no" mes="拟变更密级不能为空" /></td>
					</tr>
					<tr>
					    <td>原保密期限</td>
					    <td><input type="text" name="sStatesecretsTab.orperiod" id="ybmqx" value="<s:property value="sStatesecretsTab.orperiod"/>" isnull="no" mes="原保密期限不能为空" /></td>
					    <td>拟变更保密期限</td>
					    <td><input type="text" name="sStatesecretsTab.newperiod" id="nbgbmqx" value="<s:property value="sStatesecretsTab.newperiod"/>" isnull="no" mes="拟变更保密期限不能为空" /></td>
					</tr>
					<tr>
					    <td>原控制范围</td>
					    <td><input type="text" name="sStatesecretsTab.orcontrolrange" id="ykzfw" value="<s:property value="sStatesecretsTab.orcontrolrange"/>" isnull="no" mes="原控制范围不能为空" /></td>
					    <td>拟变更控制范围</td>
					    <td><input type="text" name="sStatesecretsTab.newcontrolrange" id="nbgkzfw" value="<s:property value="sStatesecretsTab.newcontrolrange"/>" isnull="no" mes="拟变更控制范围不能为空" /></td>
					</tr>
					<tr>
					    <td>变更或解密理由</td>
					    <td colspan="3"><input type="text" name="sStatesecretsTab.chdecryption" id="bgjmly" value="<s:property value="sStatesecretsTab.chdecryption"/>" isnull="no" mes="变更或解密理由不能为空" /></td>
					</tr>
				</table>
				<div>
					<span>注：调整目的为解密的不填写相关拟变更栏</span>
				</div>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存"  />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/statesecrets/statesecretsList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>