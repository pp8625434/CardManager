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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/appsysalter/js/appSysAlter.js"></script>
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			应用系统业务模块增加、删除、配置变更审批
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/appsysalter/appSysAlterList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">申请人员：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_applicant" value="<s:property value="pageInfo.f_applicant"/>" size="25">
						 	<input type="hidden" name="pageInfo.f_applicant_op" value="">	
						</td>
						<td style="padding:0px">
							<span class="fLBox">申请日期：</span>
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
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="2100"></z:button>
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
						<td width="20%"> <a href="javascript:sortBy('sysname')" id="title_sysname">业务系统名称</a></td>
						<td width="20%"> <a href="javascript:sortBy('applydept')" id="title_applydept">申请单位</a></td>
						<td> <a href="javascript:sortBy('applicant')" id="title_applicant">申请人员</a></td>
						<td> <a href="javascript:sortBy('appliydate')" id="title_appliydate">申请日期</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="appSysAlterList" status="appSysAlter">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#appSysAlter.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:property  value="sysname"/></td>
							<td> <s:property  value="applydept"/></td>
							<td> <s:property  value="applicant"/></td>
							<td> 
								<s:date name="appliydate" format="yyyy-MM-dd HH:mm:ss"/>
							</td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="2100" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/appsysalter/appSysAlterList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 