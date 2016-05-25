<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.manage.org.model.Org"%>
<%@ include file="/includes/main.jsp"%>
<%
	String isdeleted = "0";
	if(request.getAttribute("isdeleted")!=null && request.getAttribute("isdeleted").equals("1")){
		isdeleted ="1";
	}
	List<Org> orgflist = (List<Org>)request.getAttribute("orgFList");
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		

			
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/org/js/org.js"></script>		
		
		<script type="text/javascript" src="<%=request.getContextPath()%>/flowchart/js/fnconfig.js"></script>
		
		<script type="text/javascript">
    		

			function org_add(pa){
				var para = pageInfo();
				parent.addTab("添加机构",ctx+"/org/orgView.action?org.id=-1&isdeleted=<%=isdeleted %>&"+para+"&parent="+pa,"icon icon-nav");
			}
    		function org_edit(id,pa){
    				var para = pageInfo();
        			var str = ctx+"/org/orgView.action?org.id="+id+"&isdeleted=<%=isdeleted %>&"+para+"&parent="+pa;
					parent.addTab("编辑机构",str,"icon icon-nav");
        		}
        	$j(function(){
				$j("#view_delete").bind("click",function(){
					if($j(this).is(":checked")){
						$j("#isdeleted").val("1");
						$j("#formSearch").submit();
					}else{
						$j("#isdeleted").val("0");
						$j("#formSearch").submit();
					};
				})
        	})
		</script>
	
	</head>	
	
	<body class="adminMain" >
		<div class="mainTitle">
			机构管理
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/org/orgList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td width="370">
							<span class="fLBox">机构名称：</span>
							<input type="text"  class="inputtext2" name="pageInfo.f_name" value="<s:property value="pageInfo.f_name"/>" size="30">
						 	<input type="hidden" name="pageInfo.f_name_op" value="">
						 	<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
						  		<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}" mlinkid="8" parametervlue="id:'${pageInfo.f_parent}',type:'org'"></z:button>
					  		</s:if>
					  	</td>
					</tr>
				</table>
			</div>
			<%
				if(orgflist != null && orgflist.size()>0){
			%>
			<div class="tagTable">
				<ul class="tagUl">
					<a href="javascript:orgf('0');" style="color:#FFF;" ><li class="On">最上级</li></a>
					<li style="background:#f2f2f2;color:#000;padding:2px 4px 0;"> >> </li>
					<%
						for(int i=(orgflist.size()-1);i>-1;i--){
							Org orgf = orgflist.get(i);
					%>
				  		<a href="javascript:orgf('<%=orgf.getId() %>');" style="color:#FFF;" ><li class="On"><%=orgf.getName() %></li></a>
				  		<%
				  			if(i!=0){
				  		%>
				  		<li style="background:#f2f2f2;color:#000;padding:2px 4px 0;"> >> </li>
				  		<%
				  			}
				  		%>
				  	<%
						}
				  	%>
				  	
				</ul>						
			</div>
			<%
				}
			%>
			
			<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit">
						<td width="15"><input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox"></td>
						 
						<td> <a href="javascript:sortBy('name')" id="title_name">机构名称</a></td>
						 
						<!--<td> <a href="javascript:sortBy('name')" id="title_name">校区名称</a></td>-->
						<!-- 
						<td> <a href="javascript:sortBy('clickNum')" id="title_clickNum">点击量</a></td>
						 -->
						<!-- 
						<td> <a href="javascript:sortBy('address')" id="title_address">是否删除</a></td>
						 -->
						<td> <a href="javascript:sortBy('creatorName')" id="title_creatorName">创建人</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
				
	
					<s:iterator value="orgList" status="org">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#org.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td>
								<a href="<%=request.getContextPath() %>/org/orgList.action?pageInfo.f_parent=<s:property  value="id"/>"><s:property  value="name" /></a>
							</td>
							<!-- 
							<td> <s:property  value="parentName" /></td>
							 -->
							<!-- 
							<td> <s:property  value="clickNum" /></td>
							 -->
							<!-- 
							<td> <s:if test="deleted == 1">是</s:if><s:else >否</s:else></td>
							 -->
							<td> <s:property value="creatorName"/> </td>
							<td>
								<s:if test="lookup==null">
									<!-- <a href="/org/orgView.action?org.id=<s:property value="id"/>&pageInfo.f_name=<s:property value="pageInfo.f_name"/>">编辑</a> --><%--
									 <a href="javascript: org_edit('<s:property value="id"/>','<s:property value="pageInfo.f_parent"/>')">编辑</a>
									<a href="javascript:checkDataBeforeDelete('<s:property value="id" />','<s:property value="parent" />');">删除</a>
									--%>
									<z:label rids="${sessionScope.rIDs}" mlinkid="8" parametervlue="id:${id},pid:'${parent}',fpid:'${pageInfo.f_parent}'"></z:label>
								</s:if>
								<s:else>
									<a href="javascript:selectOrgConfig(${id},'${name}')">选择</a>
								</s:else>
		  					</td>
						</tr>
					</s:iterator>				  																															</table>

				
				<table >
					<tr>
						<td align="left" class="pageBoxLeft">
							<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font> /
							<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
							<s:if test="lookup==null">
				 			 <%--<font id="delete" style="cursor: hand" onclick="javascript:deleteCheckedOrg('org')">删除选中</font>
							--%>
								
							</s:if>
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" buttonClass="btnInput4"
									url="${applicationScope.ctx}/org/orgList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
			<input type="hidden" name="isdeleted" id="isdeleted" value="<%=isdeleted %>">
			<input type="hidden" name="pageInfo.f_parent" id="f_parent" value="<s:property value="pageInfo.f_parent"/>">
			<input type="hidden" name="org.parent" value="<s:property value="pageInfo.f_parent"/>">
		</form>
	</body>
</html> 