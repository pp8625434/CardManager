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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/videomeeting/js/videoMeeting.js"></script>
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			视频会议系统使用申请
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/videomeeting/videoMeetingList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">申请部门：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_meetingname" value="<s:property value="pageInfo.f_meetingname"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_meetingname_op" value="">	
						</td>
						<td style="padding:0px">
							<span class="fLBox">发生时间：</span>
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
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="2000"></z:button>
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
						<td width="20%"> <a href="javascript:sortBy('meetingname')" id="title_meetingname">会议名称</a></td>
						<td width="20%"> <a href="javascript:sortBy('applyorgname')" id="title_applyorgname">申请部门（单位）</a></td>
						<td> <a href="javascript:sortBy('applicant')" id="title_applicant">申请人</a></td>
						<td> <a href="javascript:sortBy('cellphone')" id="title_cellphone">联系电话</a></td>
						<td> <a href="javascript:sortBy('meetingtime')" id="title_meetingtime">会议时间</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="videoMeetingList" status="videoMeeting">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#videoMeeting.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:property  value="meetingname"/></td>
							<td> <s:property  value="applyorgname"/></td>
							<td> <s:property  value="applicant"/></td>
							<td> <s:property  value="cellphone" /></td>
							<td> 
								<s:date name="meetingtime" format="yyyy-MM-dd HH:mm:ss"/>
							</td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="2000" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/videomeeting/videoMeetingList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 