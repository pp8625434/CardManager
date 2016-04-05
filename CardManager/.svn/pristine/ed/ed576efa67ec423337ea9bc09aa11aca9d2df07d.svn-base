<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"  %>
<%@ taglib uri="/WEB-INF/tld/hi.tld" prefix="hi" %>
<%@ page import="java.util.HashMap,java.util.Iterator,java.util.Map,java.util.ArrayList" %>
<%@ page import="com.manage.menu.model.Menu,com.manage.menu.model.MenuLink" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="${applicationScope.ctx}/admin/css/style.css" type="text/css" rel="stylesheet"/>

</head>

<body class="adminMenu">
<div>
	<ul class="adminMenu">
		<script language="JavaScript">
			//var begin = new Date();
			
		</script>
		<% java.util.HashMap map = (HashMap)request.getAttribute("map");
		%>
		<% 
		if(null != map && map.size()>0){
		//Map map = new HashMap();
		Iterator iter = map.entrySet().iterator();
		while (iter.hasNext()) {
			Map.Entry entry = (Map.Entry) iter.next();
			Menu key = (Menu)entry.getKey();
			ArrayList<MenuLink> val = (ArrayList<MenuLink>)entry.getValue();
		%>
		<li>
		
			<a href="#" 
				onClick="javascript:if(parentNode.className=='On')parentNode.className='';else parentNode.className='On'">
				<s:property value="displayRef" />
				<%=key.getDisplayRef()%> 
			</a>
			
		<%
				
			if(null != val && val.size()>0){
		%>
		<ul>
		<%
				for(int i=0,cnt=val.size();i<cnt;i++){
				MenuLink menuLink = (MenuLink)val.get(i);
			%>
			<li>
			<a href="<%=menuLink.getLinkUrl() %>" target="adminMain">
					<%=menuLink.getDisplayRef() %>
				</a>
			</li>
			<%
				}
			}
			%>
			
		</ul>
			<%
		}
		}
		%>
		</li>
		
		<!--  
		 <s:iterator value="map" id="column">     
	      <s:set name="total" value="#column.value.size"/>     
	      <s:iterator value="#column.value" status="s">     
	       <tr>     
	         <s:if test="#s.first">
	         	<td rowspan="${total}">
	         	<s:property value="#column.key"/></td>
	         </s:if>     
	         <td><s:property value="id"/></td>     
	         <td><s:property value="orderNum"/></td>     
	         <td><s:property value="name"/></td>     
  
	       </tr>     
		      </s:iterator>     
			</s:iterator> 
		-->
		<!-- 
		<s:iterator value="menuList" id="menuTemp" status="menuIndex" >
		<li>
			<a href="#" 
				onClick="javascript:if(parentNode.className=='On')parentNode.className='';else parentNode.className='On'">
				<s:property value="displayRef" /> 
			</a>
			<s:set name="menuId" value="id" />
			<s:if test ="null != menuLinkList && menuLinkList.size>0" >
			<ul>
			<s:iterator value="menuLinkList" id="menuLink" status="menuLinkIndex" >
				<s:if test="#menuId == menu.id" >
				<li>
				
				<s:if test="null != #application.ctx && (#application.ctx=='/' || #application.ctx=='' ) ">
					<a href="<s:property value="linkUrl" />" target="adminMain">
						<s:property value="displayRef" />
					</a>
				</s:if>
				<s:else>
					<a href="${applicationScope.ctx}/<s:property value="linkUrl" />" target="adminMain">
						<s:property value="displayRef" />
					</a>
				</s:else>
				</li>
				</s:if>
			</s:iterator>
			</ul>
			</s:if>
		</li>
		</s:iterator>
        -->
	</ul>	


<script language="JavaScript">
			/*
			var end = new Date();
			alert(end.getTime() - begin.getTime());
			alert(end.getTime());
			alert(begin.getTime());
			*/
</script>
</body>
</html>
