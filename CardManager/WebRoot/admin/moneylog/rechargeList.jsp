<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/moneylog/js/moneyLog.js"></script>		
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			充值记录
		</div>
		<form name="formSearch" id="formSearch" onsubmit="checkCondition()" method="post" action="<%=request.getContextPath()%>/moneylog/rechargeLog.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">卡号：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_cardnum" value="<s:property value="pageInfo.f_cardnum"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_cardnum_op" value="">	
						</td>
						<td style="padding:0px">
							<span class="fLBox">金额：</span>
							<input type="text" id="startMoney" class="inputtext1"  name="startMoney" value="<s:property value="startMoney"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" size="50" style="width:96px;">
						 	&nbsp;-&nbsp;
						 	<input type="text" id="endMoney" class="inputtext1" name="endMoney" value="<s:property value="endMoney"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" size="50" style="width:96px;" >
						</td>
						<td style="padding:0px">
							<span class="fLBox">充值时间：</span>
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
					  		<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
					  	</td>
					</tr>
				</table>
			</div>
			<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit">
						<td width="20%"> <a href="javascript:sortBy('cardnum')" id="title_cardnum">卡号</a></td>
						<td> <a href="javascript:sortBy('money')" id="title_money">充值金额</a></td>
						<td> <a href="javascript:sortBy('creatorname')" id="title_creatorname">操作人姓名</a></td>
						<td> <a href="javascript:sortBy('addtime')" id="title_addtime">充值时间</a></td>
					</tr>
					<s:iterator value="moneyLogList" status="moneyLog">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#moneyLog.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td> <s:property  value="cardnum"/></td>
							<td> <s:property  value="money"/></td>
							<td> <s:property  value="creatorname"/></td>
							<td> <s:date name="addtime" format="yyyy-MM-dd HH:mm:ss"/></td>
						</tr>
					</s:iterator>				  																															
				</table>
				<table>
					<tr>
						<td align="left" class="pageBoxLeft">
						</td>	
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" buttonClass="btnInput4"
									url="${applicationScope.ctx}/moneylog/rechargeLog.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 