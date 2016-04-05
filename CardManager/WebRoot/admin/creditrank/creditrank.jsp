<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/doubledate/js/doubledate.js"></script>		
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			积分排行
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/creditrank/toCreditRank.action">
		<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">姓名：</span>
							<input type="text"  class="inputtext1" name="realname" value="<s:property value="realname"/>" size="100">
							
						 	
						</td>
						<td>
							<span class="fLBox">手机：</span>
							<input type="text"  class="inputtext1" name="cellphone" value="<s:property value="cellphone"/>" size="100">
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
					  	</td>
					</tr>
				</table>
			</div>
			<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit"> 
						<td> <a href="javascript:sortBy('realname')" id="title_realname">姓名</a></td>
						<td> <a href="javascript:sortBy('cellphone')" id="title_cellphone">手机号</a></td>
						<td> <a href="javascript:sortBy('sumcredit')" id="title_sumcredit">积分</a></td>
						
						
					</tr>
					<s:iterator value="cList" status="credit">
						<tr>
							
							<td> <s:property  value="realname"/></td>
							
							<td> <s:property  value="cellphone"/></td>
							<td> <s:property  value="sumcredit"/></td>
						
						</tr>
					</s:iterator>				  																															
				</table>
				<table>
					<tr>
						<td align="left" class="pageBoxLeft">
							
						
						</td>	
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" buttonClass="btnInput4"
									url="${applicationScope.ctx}/creditrank/toCreditRank.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 