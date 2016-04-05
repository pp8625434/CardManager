<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/includes/main.jsp"%>
<%
	
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'info.jsp' starting page</title>
	<script type="text/javascript" charset="UTF-8" >
		function init(){
			var delStr = "<%=request.getAttribute("delStr") %>";
			var msg = "<%=request.getAttribute("msg") %>";
			if('true' != delStr){
				if(msg == "true"){
					parent.$.messager.alert('系统提示', '　　　　消息发送成功', 'info');
				}else{
		    		parent.$.messager.alert('系统提示', '信息保存成功', 'info');
				}
		    }
		    var str = ctx+"<%=request.getAttribute("url")%>"+"<%=request.getAttribute("params")==null?"":"?"+request.getAttribute("params")%>"
			var currTab = parent.$('#tabs').tabs('getSelected');
			parent.addTab("<%=request.getAttribute("title")%>",str,"icon icon-nav");
			var tabname = parent.$(currTab.panel('options').title).selector;
			parent.$('#tabs').tabs('close',tabname);
			return;
		}
	</script>
  </head>
  
  <body onload="init()">

  </body>
</html>
