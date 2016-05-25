<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/user/js/tempuser.js"></script>
		<script type="text/javascript">
			function tochangeUser(id){
				var para = pageInfo();
				parent.addTab("试用转换",ctx+"/user/viewtempUser.action?tempUser.id="+id+"&"+para,"icon icon-nav");
			}
		</script>
	</head>	
	<body class="adminMain">
		<div class="mainTitle">
			联系记录
		</div>
		<form id="formSearch" name="formSearch" method="post" action="<%=request.getContextPath()%>/user/tempUserConnectionList.action">
			<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
			<input type="hidden" name="pageInfo1.f_tempuserid" value="<s:property value="pageInfo1.f_tempuserid"/>"/>
			<div class="tagTable" style="width:1185px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="370">
							<span class="fLBox">记录:</span>
							<hi:search name="pageInfo1.f_description" cssClass="inputtext2"   />
							<input type="hidden" name="pageInfo1.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo1.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo1.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo1.sorterDirection" default="ASC"/>" />
						</td> 
		
						
				 		
						 <td >
						 	<input type="button" class="btnInput3" value="查询" onclick="javascript:formSearchSubmit()" />
			     		 </td>
						
					</tr>
				</table>
			</div>
			<div class="mainConText" style="width:1210px;">
				<table class="tableCon" >
					<tr class="TRtit">
						<td width="15"><input name="chkall" value="checkbox" type="checkbox" onclick="javascript:selectAll()"></td>
						<td> <a href="javascript:sortBy('creatorname')" id="title_creatorname">联系人</a></td>
						<td> <a href="javascript:sortBy('description')" id="title_description">记录</a></td>
						<td> <a href="javascript:sortBy('createdate')" id="title_createDate">锁定人</a></td>
						<td align="center">
							<a>操作</a>
						</td>
					</tr>
					
					<s:iterator value="tempUserConnectionList" status="tempUserConnection">
						<tr class="<s:if test="#tempUserConnection.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
							
							<input name="orderId" value="<s:property value="id"/>" type="checkbox">
							
							</td>
							<td> 
								<s:property  value="creatorname" />
							</td>
							<td> 
								<s:property  value="description" />
							</td>
							<td> 
								<s:date format="yyyy-MM-dd hh:mm:ss" name="createdate" />
							</td>
							<td>
								<a href="#" onClick="javascript:deleteConnnection('<s:property  value="id"/>');">删除</a>
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
								- <font id="delete" style="cursor: hand" onclick="javascript:deleteAll();">删除选中</font>
							</s:if>
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo1" currentPage="${pageInfo1.currentPage}" url="${applicationScope.ctx}/user/tempUserConnectionList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
	   	</form>
	</body>
</html>