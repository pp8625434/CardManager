<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.base.memcached.MemcachedUtils"%>
<%
//MemcachedUtils.flashAll();
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <body>
    <table width="100%" border="0">
    	<tr>
    		<td colspan="3" align="center">孝易达惠民大集</td>
    	</tr>
    	<tr>
    		<td colspan="3" align="right">
    			<img>
    		</td>
    	</tr>
    	<tr>
    		<td width="60%">商品名称</td>
    		<td width="20%">数量</td>
    		<td width="20%">单价</td>
    	</tr>
    	<tr>
    		<td>大白菜</td>
    		<td>1.2</td>
    		<td>3.1</td>
    	</tr>
    	<tr>
    		<td>大白菜</td>
    		<td>1.2</td>
    		<td>3.1</td>
    	</tr>
    	<tr>
    		<td>大白菜</td>
    		<td>1.2</td>
    		<td>3.1</td>
    	</tr>
    	<tr>
    		<td>
    			累计价格
    		</td>
    		<td colspan="2">
    			100.0
    		</td>
    	</tr>
    	<tr>
    		<td>
    			使用积分
    		</td>
    		<td colspan="2">
    			100
    		</td>
    	</tr>
    	<tr>
    		<td>
    			支付现金
    		</td>
    		<td colspan="2">
    			99.0
    		</td>
    	</tr>
    	<tr>
    		<td>
    			本次消费获得积分
    		</td>
    		<td colspan="2">
    			99.0
    		</td>
    	</tr>
    </table>
  </body>
</html>
