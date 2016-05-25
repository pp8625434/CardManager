<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/keypartundo/js/keypartundo.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/keypartundo/keypartundoInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="keypartundo.id" value="<s:property value="keypartundo.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		    		<strong>申报单位：<s:property value="keypartundo.notification"/></strong>
		    	</div>
				<table width="100%" class="bordered">
					<tr>
						<td>申报部门、部位名称</td>
					    <td colspan="3"><s:property value="keypartundo.partname"/></td>
					</tr>
					<tr>
						<td>部门、部位负责人</td>
					    <td><s:property value="keypartundo.parthead"/></td>
					    <td>涉密人员总数</td>
					    <td><s:property value="keypartundo.totalstaff"/></td>
					</tr>
					<tr>
					    <td>部门、部位地理位置</td>
					    <td colspan="3"><s:property value="keypartundo.partlocation"/></td>
					</tr>
					<tr>
					    <td>原确定性质及理由</td>
					    <td colspan="3"><s:property value="keypartundo.naturereason"/></td>
					</tr>
					<tr>
					    <td>撤销理由</td>
					    <td colspan="3"><s:property value="keypartundo.undoreason"/></td>
					</tr>
					<tr>
					    <td>申报单位保密委员会意见</td>
					    <td colspan="3"><s:property value="keypartundo.uscomdesc"/></td>
					</tr>
					<tr>
					    <td>院保密委员会意见</td>
					    <td colspan="3"><s:property value="keypartundo.yscomdesc"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/keypartundo/keypartundoList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>