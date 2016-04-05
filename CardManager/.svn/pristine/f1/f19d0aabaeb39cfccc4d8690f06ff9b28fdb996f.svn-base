<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		  <base href="<%=basePath%>">

		<title></title>
		
	</head>

	<body>
		<!-- <div class="topHeadBox"></div> -->
		<div class="headLineBox">
			<div class="path">
				<a href="../index.action">平台首页</a>
				<!-- 
				<a href="http://localhost:8080/jforum/" target="_blank">论坛</a>
				-->
			</div>
			<div class="userInfo">
				<strong><s:property value="#session.user.name" />   您好!</strong>&nbsp;&nbsp;<a href="${applicationScope.ctx}/admin/logout.action" target="_parent">退出登陆</a>
			</div>
		</div>
	</body>
</html>
