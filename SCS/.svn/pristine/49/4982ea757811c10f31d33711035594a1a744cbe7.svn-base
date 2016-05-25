<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/smediumborrow/js/smediumborrow.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/smediumborrow/smediumborrowInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="smediumborrow.id" value="<s:property value="smediumborrow.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table>
						<tr>
							<td>申请日期：</td>
							<td><s:date name="smediumborrow.applydate" format="yyyy-MM-dd"/></td>
			 　　　　			<td>编号：</td>
			 				<td><s:property value="smediumborrow.scode"/></td>
						</tr>
					</table>
				</div>
				<table width="100%" class="bordered">
					<tr>
						<td width="14%">借用部门</td>
					    <td width="36%"><s:property value="smediumborrow.orgname"/></td>
					    <td width="14%">借用人</td>
					    <td colspan="2"><s:property value="smediumborrow.bname"/></td>
					</tr>
					<tr>
					    <td>借用原因</td>
					    <td colspan="4"><s:property value="smediumborrow.borrowreason"/></td>
					</tr>
					<tr>
					    <td>介质编号</td>
					    <td><s:property value="smediumborrow.mcode"/></td>
					    <td>介质密级</td>
					    <td colspan="2" style="text-align:left;"><hi:select emu="BM_05-03jzmj" name="smediumborrow.mclassifition" isnull="no"  mes="请选择介质密级" isLabel="true"/></td>
					</tr>
					<tr>
					    <td>使用时间</td>
					    <td><s:date name="smediumborrow.usedate" format="yyyy-MM-dd"/></td>
					    <td>连接设备编号</td>
					    <td colspan="2"><s:property value="smediumborrow.dcode"/></td>
					</tr>
					<tr>
					    <td>存储信息的主要内容</td>
					    <td colspan="2"><s:property value="smediumborrow.information"/></td>
					    <td width="16%">存储信息的最高密级</td>
					    <td width="20%"><s:property value="smediumborrow.imaxclassified"/></td>
					</tr>
					<tr>
					    <td>部门领导审批意见</td>
					    <td colspan="4"><s:property value="smediumborrow.departmentdesc"/></td>
					</tr>
					<tr>
					    <td>保密委员会办公室意见</td>
					    <td colspan="4"><s:property value="smediumborrow.officedesc"/></td>
					</tr>
					<tr>
					    <td>返回信息清除情况</td>
					    <td colspan="4"><s:property value="smediumborrow.cleardesc"/></td>
					</tr>
					<tr>
					    <td>备注</td>
					    <td colspan="4"><s:property value="smediumborrow.mark"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/smediumborrow/smediumborrowList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>