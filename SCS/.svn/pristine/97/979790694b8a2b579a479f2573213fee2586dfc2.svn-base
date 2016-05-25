<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<jsp:directive.page import="java.io.File"/>
<%@ include file="/includes/main.jsp"%>
<%
	File[] dbfiles = (File[])request.getAttribute("dbfiles");
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript">
			function aaa(fn){
				window.open('<%=request.getContextPath()+"/dbfile/" %>'+fn);
			}
		</script>
	</head>	
	<body class="adminMain">
		<div class="mainTitle">
			数据备份下载
		</div>
		<div class="tagTable" style="margin-top:15px;">
			
		</div>
		<div class="mainConText">
			<table width="100%" cellspacing="0" cellpadding="0" class="tableCon">
				<tr class="TRtit">
					
					<td><a href="javascript:sortBy('realname')" id="title_realname">备份文件</a></td>
					
					<td><a>操作</a></td>
				</tr>
				<%
					if(dbfiles != null && dbfiles.length>0){
						for(int i=(dbfiles.length-1);i>=0;i--){
				%>
				<tr>					
					<td><%=dbfiles[i].getName() %></td>
					
					<td>
						<a href="#" onclick="aaa('<%=dbfiles[i].getName() %>')">下载</a>
					</td>
				</tr>
				<%
						}
					}
				%>
			</table>
		</div>
	   
	</body>
</html>
