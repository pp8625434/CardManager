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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/keypartundo/js/keypartundo.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/keypartundo/saveKeypartundo.action" method="post" name="formSearch" id="formSearch" onsubmit="saveKeypartundo();">
			<input type="hidden" id="cid" name="keypartundo.id" value="<s:property value="keypartundo.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		    		<strong>申报单位：<input type="text" name="keypartundo.notification" id="dw" value="<s:property value="keypartundo.notification"/>" isnull="no" mes="申报单位不能为空"/></strong>
		    	</div>
				<table width="100%" class="bordered">
					<tr>
						<td>申报部门、部位名称</td>
					    <td colspan="3"><input type="text" name="keypartundo.partname" id="mc" value="<s:property value="keypartundo.partname"/>" isnull="no" mes="申报部门、部位名称不能为空"/></td>
					</tr>
					<tr>
						<td>部门、部位负责人</td>
					    <td><input type="text" name="keypartundo.parthead" id="fzr" value="<s:property value="keypartundo.parthead"/>" isnull="no" mes="部门、部位负责人不能为空"/></td>
					    <td>涉密人员总数</td>
					    <td><input type="text" name="keypartundo.totalstaff" id="ryzs" value="<s:property value="keypartundo.totalstaff"/>" isnull="no" dtype="number" mes="涉密人员总数不能为空"/></td>
					</tr>
					<tr>
					    <td>部门、部位地理位置</td>
					    <td colspan="3"><input type="text" name="keypartundo.partlocation" id="wz" value="<s:property value="keypartundo.partlocation"/>" isnull="no" mes="部门、部位地理位置不能为空"/></td>
					</tr>
					<tr>
					    <td>原确定性质及理由</td>
					    <td colspan="3"><textarea name="keypartundo.naturereason" id="sbly" ><s:property value="keypartundo.naturereason"/></textarea></td>
					</tr>
					<tr>
					    <td>撤销理由</td>
					    <td colspan="3"><textarea name="keypartundo.undoreason" id="cxly" ><s:property value="keypartundo.undoreason"/></textarea></td>
					</tr>
					<tr>
					    <td>申报单位保密委员会意见</td>
					    <td colspan="3"><textarea name="keypartundo.uscomdesc" id="scyj" ><s:property value="keypartundo.uscomdesc"/></textarea></td>
					</tr>
					<tr>
					    <td>院保密委员会意见</td>
					    <td colspan="3"><textarea name="keypartundo.yscomdesc" id="sdyj" ><s:property value="keypartundo.yscomdesc"/></textarea></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/keypartundo/keypartundoList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>