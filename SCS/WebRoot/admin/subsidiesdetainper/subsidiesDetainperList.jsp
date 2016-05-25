<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@page import="java.util.List"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/subsidiesdetainper/js/subsidiesDetainper.js"></script>
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			保密补贴扣发通知单
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/subsidiesdetainper/subsidiesDetainperList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">编号：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_pcode" value="<s:property value="pageInfo.f_pcode"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_pcode_op" value="">	
						</td>
						
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="3120"></z:button>
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
						<td width="20%"> <a href="javascript:sortBy('pcode')" id="title_pcode">编号</a></td>
						<td width="20%"> <a href="javascript:sortBy('pnoticedate')" id="title_pnoticedate">通知日期</a></td>
						<td> <a href="javascript:sortBy('orgname')" id="title_orgname">部门</a></td>
						<td> <a href="javascript:sortBy('pname')" id="title_pname">姓名</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="subsidiesDetainperList" status="subsidiesDetainper">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#subsidiesDetainper.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:property  value="pcode"/></td>
							<td> <s:date name="pnoticedate" format="yyyy-MM-dd HH:mm:ss"/></td>
							<td> <s:property  value="orgname"/></td>
							<td> <s:property  value="pname"/></td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="3120" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/subsidiesdetainper/subsidiesDetainperList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 