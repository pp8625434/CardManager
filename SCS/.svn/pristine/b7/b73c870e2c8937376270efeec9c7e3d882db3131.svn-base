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
			
			function connection(id){
				parent.addTab("添加联系记录",ctx+"/user/toAddConnection.action?tempUser.id="+id,"icon icon-nav");
			}
		</script>
	</head>	
	<body class="adminMain">
		<div class="mainTitle">
			试用管理
		</div>
		<form id="formSearch" name="formSearch" method="post" action="<%=request.getContextPath()%>/user/tempUserList.action">
			<div class="tagTable" style="width:1185px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="370">
							<span class="fLBox">称呼:</span>
							<hi:search name="pageInfo.f_name" cssClass="inputtext2"   />
							<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
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
						
						<td> <a href="javascript:sortBy('name')" id="title_name">称呼</a></td>
						<td> <a href="javascript:sortBy('phonenum')" id="title_phonenum">电话</a></td>
						<td> <a href="javascript:sortBy('lockusername')" id="title_lockusername">锁定人</a></td>
						<td align="center">
							<a>操作</a>
						</td>
					</tr>
					
					<s:iterator value="tempUserList" status="tempUser">
						<tr class="<s:if test="#tempUser.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							
							<td> 
								<s:property  value="name" />
							</td>
							<td> 
								<s:property  value="phonenum" />
							</td>
							<td> 
								<s:property  value="lockusername" />
							</td>
							<td>
								<s:if test="islock==2" >
									<a href="#" onClick="javascript:lock('<s:property  value="id"/>');">锁定</a>
									联系
									转换
								</s:if>
								<s:if test="islock==1" >
									锁定
									<s:if test="ischange==2" >
										<s:if test="lockuserid==user.id">
											<a href="#" onClick="javascript:connection('<s:property  value="id"/>');">联系</a>
											<a href="#" onClick="javascript:tochangeUser('<s:property  value="id"/>');">转换</a>
										</s:if>
										<s:else>
											联系
											转换
										</s:else>
									</s:if>
									<s:else>
										联系
										已转换
									</s:else>
								</s:if>
			  				</td>
						</tr>
					</s:iterator>
				</table>
				
				<table >
					<tr>
						<td align="left" class="pageBoxLeft">
							
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" url="${applicationScope.ctx}/user/tempUserList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
	   	</form>
	</body>
</html>