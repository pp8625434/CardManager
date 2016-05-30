<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/changeinternet/js/changeinternet.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/changeinternet/changeinternetInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="changeinternet.id" value="<s:property value="changeinternet.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table style="text-align:left;">
						<tr>
							<td width="20%">单位/部门（盖章）：</td>
							<td width="30%"><s:property value="changeinternet.orgname"/></td>　　　　　　　　
			 　　　　			<td width="35%"></td>
			 				<td width="15%"><s:date name="changeinternet.cdate" format="yyyy-MM-dd"/></td>
						</tr>
					</table>
				</div>
		    	<table class="bordered" id="mytable">
					<tr>
						<td width="2%" rowspan="2">序号</td>
					    <td width="8%" rowspan="2">许可证编号</td>
					    <td colspan="4">变更前情况</td>
					    <td colspan="4">变更后情况</td>
					    <td width="10%" rowspan="2">变更原因</td>
					</tr>
					<tr>
					    <td width="10%">责任部门</td>
					    <td width="10%">责任人</td>
					    <td width="10%">硬盘序列号</td>
					    <td width="10%">MAC地址</td>
					    <td width="10%">责任部门</td>
					    <td width="10%">责任人</td>
					    <td width="10%">硬盘序列号</td>
					    <td width="10%">MAC地址</td>
					</tr>
					<s:iterator value="cinfoList" status="cinfo">
						<tr>
					    <td><s:property value="#cinfo.index+1"/></td>
					    <td><s:property value="licensenum"/></td>
					    <td><s:property value="bcorgname"/></td>
					    <td><s:property value="bcsresponsible"/></td>
					    <td><s:property value="bcserialnum"/></td>
					    <td><s:property value="haddress"/></td>
					    <td><s:property value="acorgname"/></td>
					    <td><s:property value="acsresponsible"/></td>
					    <td><s:property value="acserialnum"/></td>
					    <td><s:property value="achaddress"/></td>
					    <td><s:property value="changereason"/></td>
					</tr>
					</s:iterator>
					<tr>
					    <td colspan="2">单位/部门领导意见</td>
					    <td colspan="4"><s:property value="changeinternet.depdesc"/></td>
					    <td colspan="2">院主管部门审批意见</td>
					    <td colspan="3"><s:property value="changeinternet.mdepdesc"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/changeinternet/changeinternetList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>