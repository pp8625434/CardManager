<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/changemedium/js/changemedium.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/changemedium/changemediumInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="changemedium.id" value="<s:property value="changemedium.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table style="text-align:left;" width="100%">
						<tr>
							<td width="25%">部门（盖章）：</td>
							<td width="25%"><s:property value="changemedium.orgname"/></td>
			 　　　　			<td width="35%">编号</td>
			 				<td width="15%"><s:property value="changemedium.code"/></td>
						</tr>
					</table>
				</div>
		    	<table class="bordered">
		    		<tr>
						<td width="2%" rowspan="2">序号</td>
					    <td width="8%" rowspan="2">类型</td>
					    <td width="10%" rowspan="2">型号及规格</td>
					    <td colspan="4">变更前情况</td>
					    <td colspan="4">变更后情况</td>
					    <td width="10%" rowspan="2">变更原因</td>
					</tr>
					<tr>
					    <td width="10%">责任部门</td>
					    <td width="10%">保管人</td>
					    <td width="10%">涉密级别</td>
					    <td width="5%">保密编号</td>
					    <td width="10%">责任部门</td>
					    <td width="10%">保管人</td>
					    <td width="10%">涉密级别</td>
					    <td width="5%">保密编号</td>
					</tr>
					<s:iterator value="cminfoList" status="cminfo">
						<tr id="mytable<s:property value='#cminfo.index+1'/>">
						    <td><s:property value="#cminfo.index+1"/></td>
						    <td><s:property value="mtype"/></td>
						   	<td><s:property value="specifications"/></td>
						    <td><s:property value="bcorgname"/></td>
						    <td><s:property value="bcdepository"/></td>
						    <td>
						    	<s:if test="bcclassification == 0">机密</s:if>
						    	<s:elseif test="bcclassification == 1">秘密</s:elseif>
						    	<s:elseif test="bcclassification == 2">内部</s:elseif>
						    	<s:elseif test="bcclassification == 3">上网</s:elseif>
						    </td>
						    <td><s:property value="bcscode"/></td>
						    <td><s:property value="acorgname"/></td>
						    <td><s:property value="acdepository"/></td>
						    <td>
						    	<s:if test="acclassification == 0">机密</s:if>
						    	<s:elseif test="acclassification == 1">秘密</s:elseif>
						    	<s:elseif test="acclassification == 2">内部</s:elseif>
						    	<s:elseif test="acclassification == 3">上网</s:elseif>
						    </td>
						    <td><s:property value="acscode"/></td>
						    <td><s:property value="changereason"/></td>
						</tr>
					</s:iterator>
					<tr>
					    <td colspan="3">部门领导意见</td>
					    <td colspan="4"><s:property value="changemedium.departdesc"/></td>
					    <td colspan="2">保密办公室意见</td>
					    <td colspan="3"><s:property value="changemedium.officedesc"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/changemedium/changemediumList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>