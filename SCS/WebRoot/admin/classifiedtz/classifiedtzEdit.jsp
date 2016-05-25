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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedtz/js/classifiedtz.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/classifiedtz/saveClassifiedtz.action" method="post" name="formSearch" id="formSearch" onsubmit="saveClassifiedtz();">
			<input type="hidden" id="cid" name="classifiedtz.id" value="<s:property value="classifiedtz.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		     		<span>
		     			所属部门：<input type="text" name="classifiedtz.orgname" id="bm" value="<s:property value="classifiedtz.orgname"/>" isnull="no" mes="所属部门不能为空"/>　　　　　　　　　　
		     			登记日期：<input type="text" name="classifiedtz.registdate" id="djrq" dtype="date(yyyy-MM-dd)" value="<s:date name="classifiedtz.registdate" format="yyyy-MM-dd"/>" isnull="no" mes="登记日期不能为空"/>
		     		</span>
     			</div>
		    	<table class="bordered">
					<tr>
						<td width="5%">序号</td>
					    <td width="10%">文件资料名称</td>
					    <td width="10%">制作发文单位</td>
					    <td width="20%">载体类别</td>
					    <td width="10%">文号或编号</td>
					    <td width="15%">密级</td>
					    <td width="5%">页数或容量</td>
					    <td width="5%">份数</td>
					    <td width="10%">使用范围</td>
					    <td width="10%">备注</td>
					</tr>
				</table>
				<div>
					<table style="text-align:center;">
						<tr>
							<td>保管人签字：</td>
							<td><hi:select type="radio" emu="yesNo" name="classifiedtz.depsign" isnull="no"  mes="请选择保管人签字" /></td>
			 　　　　			<td>批准人签字：</td>
			 				<td><hi:select type="radio" emu="yesNo" name="classifiedtz.approvesign" isnull="no"  mes="请选择批准人签字" /></td>
						</tr>
					</table>
				</div>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/classifiedtz/classifiedtzList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>