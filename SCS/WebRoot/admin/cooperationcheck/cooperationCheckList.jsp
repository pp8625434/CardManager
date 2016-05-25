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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/cooperationcheck/js/cooperationCheck.js"></script>
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			涉密协作配套单位保密监督检查表（样本）
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/cooperationcheck/cooperationCheckList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">单位名称：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_deptname" value="<s:property value="pageInfo.f_deptname"/>" size="25">
						 	<input type="hidden" name="pageInfo.f_deptname_op" value="">	
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="3050"></z:button>
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
						<td width="20%"> <a href="javascript:sortBy('deptname')" id="title_deptname">单位名称</a></td>
						<td width="20%"> <a href="javascript:sortBy('legalpers')" id="title_legalpers">法人代表或负责人</a></td>
						<td> <a href="javascript:sortBy('supedept')" id="title_supedept">上级主管单位</a></td>
						<td> <a href="javascript:sortBy('mailaddress')" id="title_mailaddress">通信地址</a></td>
						<td> <a href="javascript:sortBy('postcode')" id="title_postcode">邮政邮编</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="cooperationCheckList" status="cooperationCheck">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#cooperationCheck.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:property  value="deptname"/></td>
							<td> <s:property  value="legalpers"/></td>
							<td> <s:property  value="supedept"/></td>
							<td> <s:property  value="mailaddress" /></td>
							<td> <s:property  value="postcode" /></td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="3050" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/cooperationcheck/cooperationCheckList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 