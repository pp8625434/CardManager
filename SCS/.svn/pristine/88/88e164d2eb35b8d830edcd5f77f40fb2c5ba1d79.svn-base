﻿<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/user/js/user.js"></script>
		
		<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/user/js/orgtree.js"></script>
		<!-- 机构选择的js/css 结束 -->
		
		<script type="text/javascript">
		function obj_add(){
			var para = pageInfo();
			parent.addTab("添加个人用户",ctx+"/user/toAddUser.action?" + para,"icon icon-nav");
		}
		function user_edit(id){
			var para = pageInfo();
			para = para + getPara();
			parent.addTab("编辑个人用户信息",ctx+"/user/toEditUser.action?user.id="+id+"&"+para,"icon icon-nav");
		}
		//删除提示
		function user_Delete(id){
			
			parent.$.messager.confirm('友情提示', '删除该学员后，该用户所有相关资料都将被删除且无法恢复，您确定此操作吗？', function (r) {
		    if (r) {
				document.getElementById("formSearch").action=ctx+"/user/deleteUser.action?user.id="+id;
				document.getElementById("formSearch").submit();
			}
			})
		}
		
		function getPara(){
			var customerPara = "&uinfo=";
			var uinfo = $j("#uinfo").val();
			customerPara = customerPara+uinfo;
			var searchName = $j("#searchName").val();
			if(""!=searchName){
				customerPara = customerPara+"&searchName="+searchName;
			}
			var isopen = $j("#isopen").val();
			customerPara = customerPara+"&isopen="+isopen;
			var orgName = $j("#orgName").val();
			if(""!=orgName){
				customerPara = customerPara+"&orgName="+orgName;
			}
			var orgId = $j("#orgId").val();
			if(""!=orgId){
				customerPara = customerPara+"&orgId="+orgId;
			}
			customerPara = encodeURI(customerPara);
			customerPara = encodeURI(customerPara);
			return customerPara;
		}
		
		function  importUser_add(id){
			parent.addTab("学员批量导入",ctx + "/admin/user/importUser.jsp","icon icon-nav");
		}
		
		function exportUser(){
			var para = pageInfo();
			para = para + getPara();
			document.exportUserForm.action=ctx+"/user/exportUser.action?"+para;
			document.exportUserForm.submit();
			
			//document.getElementById("exportUserForm").submit();
				
		}	
		
		</script>
	</head>	
	<body class="adminMain">
		<div class="mainTitle">
			个人用户管理
		</div>
		<form id="formSearch" name="listUser" method="post" action="<%=request.getContextPath()%>/user/userList.action">
		<div class="tagTable" style="margin-top:15px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="300">
						<span> 
							<select name="uinfo" id="uinfo">
								<option value="realname" <s:if test="'realname' == uinfo">selected</s:if>>用户姓名</option>
								<option value="name" <s:if test="'name' == uinfo">selected</s:if>>帐号名称</option>
								
							</select>
						</span>
						<input type="text" class="inputtext1" name="searchName" value="<s:property value="searchName"/>" id="searchName">
					 	<input type="hidden" name="pageInfo.f_name_op" value="">
					 	<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
						<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
						<input type="hidden" name="pageInfo.f_isManager" id="pageInfo.f_isManager" value="<s:property value="pageInfo.f_isManager"/>" />
					</td>
					
					
				  	<td>
				  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
				  		<input type="button" value="添加用户" class="btnInput4" onclick="javascript:obj_add();"/>
				  		<input type="button" value="开通用户" class="btnInput4" onclick="javascript:edit_user(1,'开通');"/>
				  		<input type="button" value="停用用户" class="btnInput4" onclick="javascript:edit_user(2,'停用');"/> 
				  		<!-- <input type="button" value="重置密码" class="btnInput4" onclick="javascript:edit_user(3,'重置密码');"/> -->
				  		<input type="button" value="导入用户" class="btnInput4" onclick="javascript:importUser_add();" >
						<input type="button" value="导出用户" class="btnInput4" onclick="javascript:exportUser();" >
				  	</td>
				</tr>
			</table>
		</div>
		<div class="mainConText">
			<table width="100%" cellspacing="0" cellpadding="0" class="tableCon">
				<tr class="TRtit">
					<td width="15"><input name="chkall" value="checkbox" type="checkbox" onclick="javascript:selectAll()"></td>
					<td><a href="javascript:sortBy('realname')" id="title_realname">用户姓名</a></td>
					<td><a href="javascript:sortBy('name')" id="title_name">帐号名称</a></td>
					
					
					<td><a>电话</a></td>
					<td><a href="javascript:sortBy('createdate')" id="title_createdate">注册时间</a></td>
					
					
					<td><a>操作</a></td>
				</tr>
				<s:iterator value="userList" status="user">
				<tr id="tr_<s:property value='id'/>" class="<s:if test="#user.odd==false">trEven</s:if><s:else>trOdd</s:else>">
					<td width="15">
					<s:if test="id == #session.user.id">
					<input name="orderId" value="<s:property value="id"/>" type="checkbox" disabled="disabled">
					</s:if>
					<s:else>
					<input name="orderId" value="<s:property value="id"/>" type="checkbox">
					</s:else>
					</td>
					<td><s:property  value="realname" /></td>
					<td><s:property  value="name" /></td>
					<td><s:property value="cellphone"/> </td>
					<td>
						<s:date name="createdate" format="yyyy-MM-dd"/>
					</td>
					
					<td>
						<a href="javascript: user_edit(<s:property value="id"/>)">编辑</a>
						<a href="javascript:user_Delete(<s:property value="id"/>)">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			<table >
				<tr>
					<td align="left" class="pageBoxLeft">
						<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>/
						<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
						<s:if test="lookup==null">
							- <font id="delete" style="cursor: hand" onclick="javascript:deleteObj();">删除选中</font>
						</s:if>
					</td>
					<td align="right" class="pageBoxRight">
						<dl class="pageBox">
							<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" url="${applicationScope.ctx}/user/userList.action" />
						</dl>
					</td>
				</tr>
			</table>	
		</div>
	   </form>
	   
	   <form id="exportUserForm" name="exportUserForm" method="post" action="<%=request.getContextPath()%>/user/exportUser.action"> 
	   </form>
	   
	</body>
</html>
