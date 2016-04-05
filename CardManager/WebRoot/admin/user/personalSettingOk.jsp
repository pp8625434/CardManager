<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>个人信息修改页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
 	<SCRIPT type="text/javascript">
 		function onSubmit(){
 			document.forms[0].submit();
 		}
 	</SCRIPT>
  </head>
  
	<body class="adminMain">
		<form name="personalSetting" method="post" action="${applicationScope.ctx}/user/personalSetting.action">
			<div class="mainConText">
				<span style="margin-left:30px; margin-top:10px; font-weight: bold; color:#ccc;">
					<s:property value="%{#request.msg}"/>
					<input type="button" value="确定" onclick="onSubmit();" class="btnInput4"/>
				</span>
			</div>
		</form>
	</body>
</html>
