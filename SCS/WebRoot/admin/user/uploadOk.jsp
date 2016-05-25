<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>头像上传成功</title>
    <link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/yy.css" charset="UTF-8"/>
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/icon.css" charset="UTF-8"/>
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/demo.css" charset="UTF-8"/>

	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/jquery-1.8.0.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/jquery.yy.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/yy-lang-zh_CN.js" charset="UTF-8"></script>
	<script language="javascript">
		function init(){
			var headPicPath = "<%=request.getAttribute("headPicPath") %>";
			var displayPath = "<%=request.getAttribute("displayPath") %>";// + '?t= '+Math.random();
			if(headPicPath != null && headPicPath != '' && headPicPath != 'null'){
				window.opener.document.getElementById("headpicpath").value = headPicPath;
				window.opener.document.getElementById("displayPath").src = displayPath;
				$.messager.alert('友情提示', '上传成功!', 'info');
				setTimeout(function(){window.close(); },2000)
			}else{
				//$.messager.alert('友情提示', '您只能上传jpg、jpeg、png、gif、bmp、tif格式的图片', 'info');
			}
			//window.close();
		}
	</script>
  </head>
  
  <body onload="init()">
  </body>
</html>
