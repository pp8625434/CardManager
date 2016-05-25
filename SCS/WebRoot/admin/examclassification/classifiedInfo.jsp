<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/examclassification/js/examclassification.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/examclassification/classifiedInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="eclassification.id" value="<s:property value="eclassification.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
						<td colspan="2" width="10%">姓名</td>
					    <td width="30%"><s:property value="eclassification.ecname"/></td>
					    <td width="10%">性别</td>
					    <td width="20%"><hi:select emu="sex" name="eclassification.sex" isLabel="true"/></td>
					    <td width="10%">年龄</td>
					    <td colspan="2" width="20%"><s:property value="eclassification.age"/></td>
					 </tr>
					 <tr>
					    <td colspan="2">所在部门</td>
					    <td><s:property value="eclassification.oriname"/></td>
					    <td colspan="2">岗位名称</td>
					    <td colspan="3"><s:property value="eclassification.position"/></td>
					 </tr>
					 <tr>
					    <td colspan="2">原岗位名称</td>
					    <td><s:property value="eclassification.oposition"/></td>
					    <td colspan="2">原岗位密级</td>
					    <td colspan="3"><s:property value="eclassification.oclassification"/></td>
					 </tr>
					 <tr>
					    <td width="10%" >序号</td>
					    <td colspan="4" >涉密项目</td>
					    <td colspan="3">密级</td>
					 </tr>
					<s:iterator value="cpList"  status="cp">
						<tr>
							<td><s:property value="#cp.index+1"/></td>
							<td colspan="4"><s:property value="proname"/></td>
							<td colspan="3">
								<hi:select emu="BM-02-03procls" name="cpList[${cp.count-1}].classification" isLabel="true" />
							</td>
						</tr>
					</s:iterator>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/examclassification/classifiedList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>