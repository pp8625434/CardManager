<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/statesecrets/js/statesecrets.js"></script>
	</head>	
	
	<body class="adminMain">
		<div class="mainTitle">
			国家秘密事项的变更或解密审批
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/statesecrets/statesecretsList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">事项名称：</span>
							<input type="text"  class="inputtext2" name="pageInfo.f_mname" value="<s:property value="pageInfo.f_mname"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_mname_op" value="">	
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="1100"></z:button>
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
						<td> <a href="javascript:sortBy('mname')" id="title_mname">事项名称</a></td>
						<td> <a href="javascript:sortBy('pname')" id="title_pname">承办人</a></td>
						<td> <a href="javascript:sortBy('orgname')" id="title_orgname">部门</a></td>
						<td> <a href="javascript:sortBy('cellphone')" id="title_cellphone">联系电话</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="sList" status="statesecrets">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#merchant.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox"/>
							</td>
							<td> <s:property  value="mname" /></td>
							<td> <s:property  value="pname" /></td>
							<td> <s:property  value="orgname" /></td>
							<td> <s:property  value="cellphone" /></td>
							<td>
								<s:if test="lookup==null">
									<z:label rids="${sessionScope.rIDs}" mlinkid="1100" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/statesecrets/statesecretsList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 