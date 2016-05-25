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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/cancelinternet/js/cancelinternet.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/cancelinternet/cancelinternetInfo.action" method="post" name="formSearch" id="formSearch" >
			<input type="hidden" id="cid" name="cancelinternet.id" value="<s:property value="cancelinternet.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
    				<span>申请单位：<s:property value="cancelinternet.unit"/></span>
    			</div>
				<table width="100%" class="bordered">
					<tr>
						<td width="25%">申请部门或单位保密负责人</td>
					    <td width="25%"><s:property value="cancelinternet.shead"/></td>
					    <td width="25%">联网计算机所在处、室</td>
					    <td width="25%"><s:property value="cancelinternet.office"/></td>
					</tr>
					<tr>
					    <td>联网机型</td>
					    <td><s:property value="cancelinternet.models"/></td>
					    <td>主机（MAC）地址</td>
					    <td><s:property value="cancelinternet.haddress"/></td>
					</tr>
					<tr>
					    <td>硬盘序列号</td>
					    <td><s:property value="cancelinternet.serialnum"/></td>
					    <td>是否专机专用</td>
					    <td style="text-align:left;"><hi:select emu="yesOrNo" name="cancelinternet.isspecial" isLabel="true" /></td>
					</tr>
					<tr>
					    <td>联网计算机保密责任人</td>
					    <td><s:property value="cancelinternet.sresponsible"/></td>
					    <td>计算机联网许可证编号</td>
					    <td><s:property value="cancelinternet.licensenum"/></td>
					</tr>
					<tr>
					    <td>注销原因</td>
					    <td colspan="3"><s:property value="cancelinternet.cancelreason"/></td>
					</tr>
					<tr>
					    <td>注销后原设备去向</td>
					    <td colspan="3"><s:property value="cancelinternet.equipto"/></td>
					</tr>
					<tr>
					    <td>申报部门或单位领导审查意见</td>
					    <td colspan="3"><s:property value="cancelinternet.departmentdesc"/></td>
					</tr>
					<tr>
					    <td>公司（院、基地）主管部门审批意见</td>
					    <td colspan="3"><s:property value="cancelinternet.comdepartdesc"/></td>
					</tr>
					<tr>
					    <td>备注</td>
					    <td colspan="3" style="text-align:left;">此表须申报单位和公司（院、基地）保密主管部门备案</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/cancelinternet/cancelinternetList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>