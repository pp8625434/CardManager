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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/meetsecrecy/js/meetSecrecy.js"></script>
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			本部涉密会议保密管理审批
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/meetsecrecy/meetSecrecyList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">会议名称：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_meetname" value="<s:property value="pageInfo.f_meetname"/>" size="25">
						 	<input type="hidden" name="pageInfo.f_meetname_op" value="">	
						</td>
						<td style="padding:0px">
							<span class="fLBox">会议时间：</span>
							<s:textfield name="startDate" id="startDate" onclick="WdatePicker({isShowWeek:true,dateFmt:'yyyy-MM-dd'})" 
					 			cssClass="Wdate" cssStyle="width:96px;" readonly="true" disabled='mark in {"view"}?true:false' title="起始时间" >
					 		<s:param name="value">
								<s:property value="startDate" />
							</s:param>
						 	</s:textfield>
						 	&nbsp;-&nbsp;
						 	<s:textfield name="endDate" id="endDate" onclick="WdatePicker({isShowWeek:true,dateFmt:'yyyy-MM-dd'})" 
						 		cssClass="Wdate" cssStyle="width:96px;" readonly="true" disabled='mark in {"view"}?true:false' title="结束时间" >
						 		<s:param name="value">
									<s:property value="endDate" />
								</s:param>
						 	</s:textfield>
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="3020"></z:button>
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
						<td width="20%"> <a href="javascript:sortBy('meetname')" id="title_meetname">会议名称</a></td>
						<td width="20%"> <a href="javascript:sortBy('orgname')" id="title_orgname">承办部门</a></td>
						<td> <a href="javascript:sortBy('meetdate')" id="title_meetdate">会议时间</a></td>
						<td> <a href="javascript:sortBy('meetplace')" id="title_meetplace">会议地点</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="meetSecrecyList" status="meetSecrecy">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#meetSecrecy.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:property  value="meetname"/></td>
							<td> <s:property  value="orgname"/></td>
							<td> <s:date name="meetdate" format="yyyy-MM-dd HH:mm:ss"/></td>
							<td> <s:property  value="meetplace"/></td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="3020" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/meetsecrecy/meetSecrecyList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 