<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ include file="/includes/main.jsp"%>
<html>
<head>
		<title>选择机构</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/org/js/org.js"></script>
	</head>	
	<body>
		<div class="mainTitle">
			选择机构
		</div>
		<form name="formSearch" id="formSearch" method="post" action="${applicationScope.ctx}/org/selOrg1.action">
			<div class="tagTable" style="margin-top:15px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="260">
							<span class="fLBox">机构名称：</span>
							<input name="pageInfo.f_name" class="inputtext2" type="text"/>
						 	<input type="hidden" name="pageInfo.f_name_op" value="">
						 	<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<input type="button" value="确认" class="btnInput4" onclick="javascript:confirmSel();">
					  	</td>
					</tr>
				</table>
			</div>
			
			<div class="mainConText">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableCon">
				<tr class="TRtit">
					<td> <a href="javascript:sortBy('name')" id="title_name">机构名称</a></td>
					<td> <a href="javascript:sortBy('parentOrg')" id="title_parentOrg">父级机构</a></td>
					<td> <a href="javascript:sortBy('address')" id="title_address">地址</a></td>
				</tr>
				<s:iterator value="orgList" status="org">
				<tr class="ListTableBody">
					<td> <input name="orgids" value="<s:property value="id"/>,<s:property  value="name"/>" type="checkbox"><s:property  value="name" /></td>
					<td> <s:property  value="parentOrg.name" /></td>
					<td> <s:property  value="address" /></td>
				</tr>
				</s:iterator>
			</table>
			<table>
				<tr>
					<td align="right">
						<dl class="pageBox">
							<hi:page pageBeanName="pageInfo" currentPage="1" url="${applicationScope.ctx}/org/selOrg1.action"  buttonClass="btnInput4"/>
						</dl>
					</td>
				</tr>
			</table>	
		</div>
	   </form>
	</body>
</html>