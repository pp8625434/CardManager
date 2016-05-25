<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@page import="java.util.List"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/appsysnetin/js/appSysNetIn.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>

	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			应用系统入网审批
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/appsysnetin/appSysNetInList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">系统密级：</span>
							<hi:select emu="page_33_sysSec" name="pageInfo.f_security" id="pageInfo.f_security" />
						 	<input type="hidden" name="pageInfo.f_security_op" value="">	
						</td>
						
					 	<td style="padding:0px">
							<span class="fLBox">应用系统名称：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_sysname" value="<s:property value="pageInfo.f_sysname"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_sysname_op" value="">	
						</td>						
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="2020"></z:button>
					  		</s:if>
					  		<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
					  	</td>
					</tr>
				</table>
			</div>
			<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit">
						<td width="15"><input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox"></td>
						<td width="20%"> <a href="javascript:sortBy('sysname')" id="title_sysname">应用系统名称</a></td>
						<td width="20%"> <a href="javascript:sortBy('projectprincipal')" id="title_projectprincipal">项目负责人</a></td>
						<td> <a href="javascript:sortBy('executivedept')" id="title_executivedept">业务主管部门</a></td>
						<td> <a href="javascript:sortBy('deptprincipal')" id="title_deptprincipal">部门负责人</a></td>
						<td> <a href="javascript:sortBy('sysdevelopdept')" id="title_sysdevelopdept">系统开发单位</a></td>
						<td> <a href="javascript:sortBy('developor')" id="title_developor">开发单位联系人</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="appSysNetInList" status="appSysNetIn">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#appSysNetIn.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							
							<td> <s:property  value="sysname"/></td>
							<td> <s:property  value="projectprincipal"/></td>
							<td> <s:property  value="executivedept"/></td>
							<td> <s:property  value="deptprincipal"/></td>
							<td> <s:property  value="sysdevelopdept"/></td>
							<td> <s:property  value="developor"/></td>
							
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="2020" parametervlue="id:${id}"></z:label>
								</s:if>
		  					</td>
						</tr>
					</s:iterator>				  																															
				</table>
				<table>
					<tr>
						<td align="left" class="pageBoxLeft">
							<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>
							<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
						
						</td>	
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" buttonClass="btnInput4"
									url="${applicationScope.ctx}/appsysnetin/appSysNetInList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 