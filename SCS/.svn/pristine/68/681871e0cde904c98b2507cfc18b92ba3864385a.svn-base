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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/changeinternet/js/changeinternet.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/changeinternet/saveChangeinternet.action" method="post" name="formSearch" id="formSearch" onsubmit="saveChangeinternet()">
			<input type="hidden" id="cid" name="changeinternet.id" value="<s:property value="changeinternet.id" />">
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table style="text-align:left;" width="100%">
						<tr>
							<td width="25%">单位/部门（盖章）：</td>
							<td width="25%"><input type="text" name="changeinternet.orgname" id="bm" value="<s:property value="changeinternet.orgname"/>" isnull="no" mes="单位/部门不能为空"/></td>
			 　　　　			<td width="35%"></td>
			 				<td width="15%"><input type="text" name="changeinternet.cdate" id="sqrq" dtype="date(yyyy-MM-dd)" value="<s:date name="changeinternet.cdate" format="yyyy-MM-dd"/>" isnull="no"  mes="变更日期不能为空"/></td>
						</tr>
					</table>
				</div>
		    	<table class="bordered">
					<tr>
						<td width="2%" rowspan="2">序号</td>
					    <td width="8%" rowspan="2">许可证编号</td>
					    <td colspan="4">变更前情况</td>
					    <td colspan="4">变更后情况</td>
					    <td width="10%" rowspan="2">变更原因</td>
					</tr>
					<tr id="mytable">
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
						<tr id="mytable<s:property value='#cinfo.index+1'/>">
						    <td><s:property value="#cinfo.index+1"/></td>
						    <td><input type="text" name="licensenum" id="licensenum" value="<s:property value="licensenum"/>"/></td>
						    <td><input type="text" name="bcorgname" id="bcorgname" value="<s:property value="bcorgname"/>"/></td>
						    <td><input type="text" name="bcsresponsible" id="bcsresponsible" value="<s:property value="bcsresponsible"/>"/></td>
						    <td><input type="text" name="bcserialnum" id="bcserialnum" value="<s:property value="bcserialnum"/>"/></td>
						    <td><input type="text" name="haddress" id="haddress" value="<s:property value="haddress"/>"/></td>
						    <td><input type="text" name="acorgname" id="acorgname" value="<s:property value="acorgname"/>"/></td>
						    <td><input type="text" name="acsresponsible" id="acsresponsible" value="<s:property value="acsresponsible"/>"/></td>
						    <td><input type="text" name="acserialnum" id="acserialnum" value="<s:property value="acserialnum"/>"/></td>
						    <td><input type="text" name="achaddress" id="achaddress" value="<s:property value="achaddress"/>"/></td>
						    <td><input type="text" name="changereason" id="changereason" value="<s:property value="changereason"/>"/></td>
						</tr>
					</s:iterator>
					<tr >
					    <td colspan="2">单位/部门领导意见</td>
					    <td colspan="4"><s:textarea name="changeinternet.depdesc" id="bmldyj" ></s:textarea></td>
					    <td colspan="2">院主管部门审批意见</td>
					    <td colspan="3"><s:textarea name="changeinternet.mdepdesc" id="bgsyj" ></s:textarea></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput5" value="添加变更详情" onclick="addCinfo()" />
					&nbsp;
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/changeinternet/changeinternetList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>