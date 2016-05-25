<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/menu/menuLink.js"></script>
	</head>
	<script type="text/javascript">
	
	
	</script>
	<body class="adminMain">

		<div class="mainTitle">
			二级菜单管理
		</div>
		
		<form action="${applicationScope.ctx}/admin/menuLinkSave.action" method="post"   >
		<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>	 
		<div class="mainConText">
    	<input type="hidden" id="menuLink.id" name="menuLink.id" value="<s:property value="menuLink.id" />">
			<table class="tableEdit">
				<thead>
				</thead>
				<tbody>
					<tr>
						<td  width="10%">二级菜单信息:</td>
						<td  >
							<input type="text" maxlength="25" id="menuLink.displayRef" name="menuLink.displayRef" onblur="check_mLink();"
							 value="<s:property value="menuLink.displayRef"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_mLink_dis" class="fontCom"></span> 
						</td>
					</tr>
				  	<tr>
						<td  width="10%">菜单URL:</td>
						<td >
							<input type="text" maxlength="100" id="menuLink.linkUrl" name="menuLink.linkUrl" onblur="checkURl();"
							value="<s:property value="menuLink.linkUrl"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_mLink_url" class="fontCom"></span>
							<input type="hidden" id="oldLinkUrl" name="oldLinkUrl" value="<s:property value="menuLink.linkUrl"/>">
						</td>
					</tr>
				
					<tr>
						<td >一级菜单:</td>
						<td >
							<input type="hidden" id="menuLink.menu.id" name="menuLink.menu.id" value="<s:property value="menuLink.menu.id"/>">
							<input type="text" readonly="readonly" id="menuLink.name" name="menuLink.name" value="<s:property value="menuLink.menu.name"/>">
							    <input type="button" class="btnInput4" value="选择"  onclick="menuLink_lookupPOP('menu')" />&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_eId" class="fontCom"></span>
						</td>
						<!--
						<td class="EditTableTDLabel">序列:</td>
						<td class="EditTableTDData" >
							<input type="text" id="menuLink.orderNum" name="menuLink.orderNum" value="<s:property value="menuLink.orderNum"/>">
						</td>
						<td class="EditTableTDLabel">权限名称:</td>
						<td class="EditTableTDData" >
							<input type="hidden" id="menuLink.authority.id" name="menuLink.authority.id" value="<s:property value="menuLink.authority.id"/>">
							<input type="text" id="menuLink.authorityName" name="menuLink.authorityName" value="<s:property value="menuLink.authority.authorityName"/>">
							     <span onclick="menuLink_lookupPOP('authority')">查找带回</span>
						</td>
						-->
					</tr>
					<tr>
						<td  width="10%">排序:</td>
						<td  >
							<input type="text" maxlength="10" id="menuLink.orderNum" name="menuLink.orderNum" 
							onblur="check_mLink_num();" value="<s:property value="menuLink.orderNum"/>">
							<span id="check_mLink_num" class="fontCom"></span>
						</td>
					</tr>
					<tr>
						<td  width="10%">描述:</td>
						<td  >
							<input type="text" maxlength="100" id="menuLink.description" name="menuLink.description" value="<s:property value="menuLink.description"/>">
						</td>
					</tr>
					<!--  暂时隐藏掉
					<tr>
						<td >权限:</td>
						<td >
							<input type="text" id="menuLink.authority" name="menuLink.authority" value="<s:property value="menuLink.authority"/>">
						</td>
					</tr>
					-->
					
					<tr>
					<input type="hidden" id="menuLink.creator" name="menuLink.creator" value="<s:property value="menuLink.creator"/>">
					<!--
						<td class="EditTableTDLabel">创建人:</td>
						<td class="EditTableTDData" >
							<input type="hidden" id="menuLink.creator.id" name="menuLink.creator.id" value="<s:property value="menuLink.creator.id"/>">
							<input type="text" id="menuLink.userName" name="menuLink.userName" value="<s:property value="menuLink.creator.fullName"/>">
							     <span onclick="menuLink_lookupPOP('creator')">查找带回</span>
						</td>
					<input type="hidden" id="menuLink.userName" name="menuLink.userName" value="<s:property value="menuLink.userName"/>">
					-->
				</tbody>
			
		</table> 
			<br/>

	<script language="JavaScript">
		var detailNames = Array();
		var detailTabButtons = Array();
	</script>
    	
    	<div class="btnBox">
			<input type="button" class="btnInput1" value="保存" onclick="onSubmitMenuLink();" />
			&nbsp;
			<input type="button" class="btnInput2 chancleButton" value="取消"
				onclick="javascript:window.location='${applicationScope.ctx}/admin/menuLinkList.action'" />
			</div>
    	
    	</div>
		</form>
	</body>
</html>