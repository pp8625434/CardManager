<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/internetdeclear/js/internetdeclear.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/internetdeclear/internetdeclearInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="internetdeclear.id" value="<s:property value="internetdeclear.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		     		<span>
		     			<span>申报单位：<s:property value="internetdeclear.unit"/></span>
		     		</span>
     			</div>
		    	<table class="bordered">
					<tr>
						<td width="25%">申报部门或单位保密负责人</td>
					    <td width="25%"><s:property value="internetdeclear.shead"/></td>
					    <td width="25%">联网计算机所在处、室</td>
					    <td width="25%"><s:property value="internetdeclear.office"/></td>
					</tr>
					<tr>
					    <td>联网机型</td>
					    <td><s:property value="internetdeclear.models"/></td>
					    <td>主机（MAC）地址</td>
					    <td><s:property value="internetdeclear.haddress"/></td>
					</tr>
					<tr>
					    <td>硬盘序列号</td>
					    <td><s:property value="internetdeclear.serialnum"/></td>
					    <td>是否专机专用</td>
					    <td style="text-align:left;"><hi:select emu="yesOrNo" name="internetdeclear.isspecial" isLabel="true" /></td>
					</tr>
					<tr>
					    <td>联网计算机保密责任人</td>
					    <td><s:property value="internetdeclear.sresponsible"/></td>
					    <td>计算机联网许可证编号</td>
					    <td><s:property value="internetdeclear.licensenum"/></td>
					</tr>
					<tr>
					    <td>联网目的及上网主要事项</td>
					    <td colspan="3"><s:property value="internetdeclear.mainmatter"/></td>
					</tr>
					<tr>
					    <td>安全保密措施</td>
					    <td colspan="3"><s:property value="internetdeclear.smeasures"/></td>
					</tr>
					<tr>
					    <td>申报部门或单位领导审查意见</td>
					    <td colspan="3"><s:property value="internetdeclear.departmentdesc"/></td>
					</tr>
					<tr>
					    <td>公司（院、基地）主管部门审批意见</td>
					    <td colspan="3"><s:property value="internetdeclear.comdepartdesc"/></td>
					</tr>
					<tr>
					    <td>备注</td>
					    <td colspan="3" style="text-align:left;">此表须申报单位和公司（院、基地）保密主管部门备案</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/internetdeclear/internetdeclearList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>