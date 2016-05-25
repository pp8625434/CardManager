<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/menu/menuLink.js"></script>
		<script>
			function  menuLink_add(){
				parent.addTab("新增二级菜单",ctx+"/admin/menuLinkView.action?menuLink.id=-1","icon icon-nav");
			}
			function menuLink_edit(id){
				var para = pageInfo();
				parent.addTab("编辑二级菜单",ctx+"/admin/menuLinkView.action?menuLink.id="+id+"&"+para,"icon icon-nav");
			}
		
		</script>
	</head>	
	
	<body class="adminMain">
		
		<div class="mainTitle">
				二级菜单管理
		</div>
		
		<form name="formSearch" id="formSearch" method="post" action="${applicationScope.ctx}/admin/menuLinkList.action">
		<div class="tagTable">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					 	<tr>
					 		<td width="410">
					 			<span class="fLBox">二级菜单名称:</span>
					 			<hi:search name="pageInfo.f_displayRef" cssClass="inputtext2"  />
					 		</td>
					 		<td>
					 			<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()" />
								<s:if test="lookup==null"><%--
									&nbsp; <input type="button"  class="btnInput4" value="新建" onclick="menuLink_add()" />
								--%>
									<z:button rids="${sessionScope.rIDs}" mlinkid="4" cssClass="btnInput4" ></z:button>
								</s:if>
					 		</td>
					 	</tr>
						<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
						<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
				</table>
		</div>
		
			<div class="mainConText">
				<table class="tableCon">
							<tr class="TRtit">
								<td width="15">
									<input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox">
								</td>
								<td> <a href="javascript:sortBy('displayRef')" id="title_displayRef">二级菜单名称</a></td>
								<td> <a href="javascript:sortBy('linkUrl')" id="title_linkUrl">菜单URL</a></td>
								
								<!-- <td> <a href="javascript:sortBy('authority.id')" id="title_authority.id">权限</a></td>
								<td> <a href="javascript:sortBy('authority.authorityName')" id="title_authority.authorityName">权限名称</a></td>
								-->
								<td> <a href="javascript:sortBy('orderNum')" id="title_orderNum">序列</a></td>
								<td> <a href="javascript:sortBy('menu.name')" id="title_menu.name">一级菜单名称</a></td>
								<td>
									<s:if test="lookup==null">
										<a>操作</a>
										<!-- 
											<input name="chkall" value="checkbox" onclick="javascript:selectAll()" type="checkbox">
										 -->
									</s:if>
									<s:else>
										查找带回
									</s:else>
								</td>
							</tr>

							<s:iterator value="menuLinks" status="menuLink">
							<tr class="<s:if test="#menuLink.odd==false">trEven</s:if><s:else>trOdd</s:else>" >
								<td width="15">
									<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
								</td>
								<td> <s:property   value="displayRef" /></td>
								<td> <s:property   value="linkUrl" /></td>
								
								<!--<td> <s:property   value="authority" /></td>
								 <td> <s:property   value="authority.authorityName" /></td>  -->
								<td> <s:property   value="orderNum" /></td>
								<td> <s:property   value="menu.displayRef" /></td>
								<td>
									<s:if test="lookup==null">
										<%--<a href="javascript: menuLink_edit(<s:property   value="id"/>)">编辑</a> 
										<a href="#" onclick="menuLink_Delete(<s:property   value="id"/>);">删除</a>
										--%>
											<z:label rids="${sessionScope.rIDs}" mlinkid="4" parametervlue="id:${id}"></z:label>
										</s:if>
										<s:else>
											<span style="cursor: pointer" onclick="lookupMenuLink('<s:property  value="id"/>','<s:property   value="linkUrl"/>','<s:property   value="displayRef"/>','<s:property   value="authority"/>','<s:property   value="authorityName"/>','<s:property   value="sequence"/>','<s:property   value="menuName"/>','<s:property   value="userName"/>')">选择</span>								
										</s:else>
			  					</td>
							</tr>
							</s:iterator>				  																															</table>
				
			    
			    <table >
					<tr>
						<td align="left" class="pageBoxLeft">
							<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>/
							<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
							<%--<s:if test="lookup==null">
				 - <font id="delete" style="cursor: hand"
									onclick="javascript:deleteCheckedMenu();">删除选中</font>
							</s:if>
						--%>
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" url="${applicationScope.ctx}/admin/menuLinkList.action" />
							</dl>
						</td>
					</tr>
				</table>
			    
			</div>
	   </form>	   
	</body>
</html>