<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户导入</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
    <link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/yy.css" charset="UTF-8"/>
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/icon.css" charset="UTF-8"/>
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/demo.css" charset="UTF-8"/>
	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/jquery-1.8.0.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/jquery.yy.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/yy-lang-zh_CN.js" charset="UTF-8"></script>
	<script language="javascript">
		function init(){
			var flag = '<%=request.getAttribute("flag")%>';
			var result = '<%=request.getAttribute("result")%>';
			var userCount = '<%=request.getAttribute("userCount")%>';
			if(flag != null && flag != '' && flag != 'null'){
				if(result != null && result != '' && result != 'null'){
					parent.$.messager.alert('友情提示', result, 'info');
				}else{
					parent.$.messager.alert('友情提示', '批量导入用户成功！共' + userCount + '用户', 'info');
				}
			}else{
				parent.$.messager.alert('友情提示', '导入失败！文件上传失败', 'info');
			}
			parent.addTab("在线学员管理",ctx+"/user/userList.action","icon icon-nav");
			parent.$('#tabs').tabs('close', "学员批量导入");
		}
	</script>
  </head>
  <body onload="init()">
  </body>
</html>
