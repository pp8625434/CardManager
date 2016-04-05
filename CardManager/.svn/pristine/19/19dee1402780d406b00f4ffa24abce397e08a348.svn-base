<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/menu/menu.js"></script>
	</head>

	<body class="adminMain">

		<div class="mainTitle">
			菜单管理
		</div>
		
		<form action="${applicationScope.ctx}/admin/menuSave.action" method="post" >
		<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>	 
    	<input type="hidden" id="menu.id" name="menu.id" value="<s:property value="menu.id" />">		
			<div class="mainConText">		
			<table class="tableEdit">
				<tbody>
					<tr>
						<td width="10%">英文名称:</td>
						<td  >
							<input type="text" maxlength="25" id="menu.name" name="menu.name" onblur="check_menu_name();" 
							value="<s:property value="menu.name"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_menu_name" class="fontCom"></span>
							<input type="hidden" id="oldName" name="oldName" value="<s:property value="menu.name"/>">
						</td>
					</tr>
				
					<tr>
						<td width="10%">一级菜单名称:</td>
						<td >
							<input type="text" maxlength="25" id="menu.displayRef" name="menu.displayRef" onblur="checkMenu();"
							value="<s:property value="menu.displayRef"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_menu_dis" class="fontCom"></span> 
						</td>
					</tr>
				  	
					
					<input type="hidden" id="menu.parentMenu.id" name="menu.parentMenu.id" value="<s:property value="menu.parentMenu.id"/>">
					<input type="hidden" id="menu.parentMenu.name"  name="menu.parentMenu.name" value="<s:property value="menu.parentMenu.name"/>">
					<%--<tr>
						<td width="10%">父菜单项名称:</td>
						<td >
							<input type="hidden" id="menu.parentMenu.id" name="menu.parentMenu.id" value="<s:property value="menu.parentMenu.id"/>">
							<input type="text" id="menu.parentMenu.name"  name="menu.parentMenu.name" value="<s:property value="menu.parentMenu.name"/>">
							     <span onclick="menu_lookupPOP('parentMenu')">查找带回</span>
						</td>
					</tr>
					--%>
					<tr>
						<td width="10%">排序:</td>
						<td >
							<input type="text" maxlength="10" id="menu.orderNum" name="menu.orderNum"
							onblur="check_menu_num();" value="<s:property value="menu.orderNum"/>">
							<span id="check_menu_num" class="fontCom"></span>
						</td>
					</tr>
					<tr>
						<td width="10%">描述:</td>
						<td >
							<input type="text" maxlength="100" id="menu.description" name="menu.description" value="<s:property value="menu.description"/>">
						</td>
					</tr>	
				</tbody>
		</table>  
			

	<script language="JavaScript">
		var detailNames = Array();
		var detailTabButtons = Array();
	</script>
    	
    	<div class="btnBox">
			<input type="button" class="btnInput1" value="保存" onclick="onSubmit();"/>
			&nbsp;
			<input type="button" class="btnInput2 chancleButton" value="取消"
				onclick="javascript:window.location='${applicationScope.ctx}/admin/menuList.action'" />
			</div>
    	
    	</div>
		</form>
	</body>
</html>