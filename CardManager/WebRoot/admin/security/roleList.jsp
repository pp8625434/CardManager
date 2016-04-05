<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" %>
<%@page import="com.manage.user.model.User"%>
<%@ include file="/includes/main.jsp"%>
<%
	User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css"/>
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/security/role.js"></script>
		<script type="text/javascript">
			function role_add(){
				parent.addTab("新增角色",ctx+"/admin/roleView.action?role.id=-1","icon icon-nav");
		
				}
			function role_edit(id){
				var para = pageInfo();
				parent.addTab("编辑角色",ctx+"/admin/roleView.action?role.id="+id+"&"+para,"icon icon-nav");	
				}
			//删除提示
			function role_Delete(id){
				
				parent.$.messager.confirm('友情提示', '您确定删除该角色吗？', function (r) {
			    if (r) {
					document.formSearch.action=ctx+"/admin/roleRemove.action?role.id="+id;
					document.formSearch.submit();
				}
				})
			}
		</script> 
	</head>	
	
	<body class="adminMain">

		<div class="mainTitle">
			角色管理
		</div>
		
	<form name="formSearch" id="formSearch"  method="post" action="${applicationScope.ctx}/admin/roleList.action">
	<div class="tagTable">
				<table >
					 	<tr class="searchFromTR" width="100%" >
					 		<td  width="370">
					 			<span class="fLBox">角色名称:</span>
					 		<input type="text" class="inputtext2" name="pageInfo.f_name" value="<s:property value="pageInfo.f_name"/>" />
					 		</td>
					 		<td >
					 			<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()" />
								<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="5"></z:button>
								<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
								<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
					 		</td>
					 	</tr>
							 	
						
				</table>
	</div>
	
	<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit">
								<td width="15">
									<input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox" />
								</td>
								<td> <a href="javascript:sortBy('name')" id="title_roleName">角色名称</a></td>
								<td> <a href="javascript:sortBy('displayRef')" id="title_displayRef">显示信息</a></td>
								<!-- <td> <a href="javascript:sortBy('description')" id="title_description">描述</a></td>-->
								<td>
									<s:if test="lookup==null">
										操作
									</s:if>
									<s:else>
										查找带回
									</s:else>
								</td>
							</tr>

							<s:iterator value="roles" status="role">
							<tr  class="<s:if test="#role.odd==false">trEven</s:if><s:else> trOdd</s:else>" >
								<td width="15">
									<s:if test="id !=1">
									<input name="orderId" value="<s:property  value="id"/>" type="checkbox" />
									</s:if>
								</td>
								<td> <s:property   value="name" /></td>
								<td> <s:property   value="displayRef" /></td>
								<!-- <td> <s:property   value="description" /></td>-->
								<td>
									<s:if test="id !=1">
										<z:label rids="${sessionScope.rIDs}" mlinkid="5" parametervlue="id:${id}"></z:label>
									</s:if>
			  					</td>
							</tr>
							</s:iterator>				  																															
						</table>
			    <table>
					<tr>
						<td align="left" class="pageBoxLeft">
							<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>/
							<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
							<s:if test="lookup==null">
				 - <font id="delete" style="cursor: hand"
									onclick="javascript:deleteCheckedRole('role')">删除选中</font>
							</s:if>
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
	  								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}"  url="${applicationScope.ctx}/admin/roleList.action" />
							</dl>
						</td>
					</tr>
				</table>
			    
			    
	</div>
	   </form>
	</body>
</html>