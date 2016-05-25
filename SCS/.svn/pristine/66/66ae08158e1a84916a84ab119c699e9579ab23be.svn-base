<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/sysauthoralter/js/sysAuthorAlter.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新建应用系统权限变更内容
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/sysauthoralter/sysAuthorAlterSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="sysAuthorAlter.id" id="sysAuthorAlter.id"/>
			<input type="hidden" name="sysAuthorAlter.version" id="sysAuthorAlter.version"/>
			
			<input type="hidden" name="sysAuthorAlter.did" id="sysAuthorAlter.did"/>
			<table width="100%" class="bordered">
				<tr>
					<td width="80px">
						应用系统名称:
					</td>
					<td>
						<input type="text" name="sysAuthorAlter.sysname" id="sysAuthorAlter.sysname"  isnull="no" dorder="2"  mes="应用系统名称不能空" size="25" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						现有用户权限:
					</td>
					<td>
						<input type="text" name="sysAuthorAlter.nowauthor" id="sysAuthorAlter.nowauthor"  isnull="no" dorder="3"  mes="现有用户权限不能空" size="125" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						变更后的用户权限:
					</td>
					<td>
						<input type="text" name="sysAuthorAlter.afterauthor" id="sysAuthorAlter.afterauthor"  isnull="no" dorder="4"  mes="变更后的用户权限不能空" size="125" />
					</td>
				</tr>
			
			</table>
			<br />
			<div class="btnBox">
				<input type="submit" id="addBut" value="保存"  class="btnInput1" />
				&nbsp;
				<input type="button" class="btnInput2 chancleButton" value="取消" 
					onclick="cancelBtn();"/>
			</div>
		</form>
		</div>
	</body>
</html>
