<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/workdate/js/workdate.js"></script>		
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			工作日管理
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/workdate/workdateList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">日期：</span>
							<s:textfield name="thedate" id="thedate" onclick="WdatePicker({isShowWeek:true,dateFmt:'yyyy-MM-dd'})" 
					 		cssClass="Wdate" cssStyle="width:96px;" readonly="true" disabled='mark in {"view"}?true:false' title="起始时间" >
					 		<s:param name="value">
								<s:property value="thedate" />
							</s:param>
					 	</s:textfield>
						</td>
						
						<td style="padding:0px">
						日期类型:
						<select name="dtype" id="dtype">
							<option value="" >全部</option>
				  			<option value="0" <s:if test="dtype.equals(\"0\")"> selected </s:if> >休息日 </option>
				  			<option value="1" <s:if test="dtype.equals(\"1\")"> selected </s:if> >工作日</option>	
						</select>
						</td>
						
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="1300"></z:button>
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
						 
						<td> <a href="javascript:sortBy('thedate')" id="title_thedate">日期</a></td>
						<td> <a href="javascript:sortBy('dtype')" id="title_dtype">日期类型</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="wList" status="workdate">
						<tr>
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:date name="thedate" format="yyyy-MM-dd"/></td>
							<td> 
								<s:if test='dtype=="0"'>休息日</s:if> 
								<s:if test='dtype=="1"'>工作日</s:if>
							</td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="1300" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/workdate/workdateList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 