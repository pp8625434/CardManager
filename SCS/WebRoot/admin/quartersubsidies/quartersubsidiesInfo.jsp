<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/quartersubsidies/js/quartersubsidies.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/quartersubsidies/quartersubsidiesInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="quartersubsidies.id" value="<s:property value="quartersubsidies.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" >
						<tr >
							<td style="padding:0px"><span class="fLBox">部门:（盖章）</span><s:property value="quartersubsidies.orgname"/></td>
						</tr>
					</table>
				</div>
				<table class="bordered" width="100%">
					<tr id="mytr">
		    			<td width="8%">序号</td>
					    <td width="12%">姓名</td>
					    <td width="20%">岗位密级</td>
					    <td width="10%">应发金额（季）</td>
					    <td width="10%">扣补发金额</td>
					    <td width="10%">实发金额（季）</td>
					    <td width="10%">金额变动原因</td>
					    <td width="10%">履行保密管理制度情况</td>
						<td width="10%">备注</td>
					</tr>
					<s:iterator value="infoList" status="info">
						<tr id="mytr<s:property value="#info.index+1"/>">
					    <td><s:property value="#info.index+1"/></td>
					    <td><s:property value="name"/></td>
					    <td><s:property value="classification"/></td>
					    <td><s:property value="yfmoney"/></td>
					    <td><s:property value="brmoney"/></td>
					    <td><s:property value="sfmoney"/></td>
					    <td><s:property value="moneybdreason"/></td>
					    <td>
					    	<s:if test="isperform==0">符合</s:if>
					    	<s:elseif test="isperform==1">不符合</s:elseif>
					    </td>
						<td><s:property value="remark"/></td>
					</tr>
					</s:iterator>
					<tr>
					    <td>实发金额总计（元）</td>
					    <td><s:property value="totalSf"/></td>
					    <td>部门领导意见</td>
					    <td colspan="3"><s:property value="quartersubsidies.departmentdesc"/></td>
					    <td>保密办公室审核意见</td>
					    <td colspan="2"><s:property value="quartersubsidies.sofficedesc"/></td>
					</tr>
				</table>
				<div>
					<span style="text-align: left;">注：1.每季度末25日前交至行政保卫部保密处<br/>2.单位内部人员不填写“岗位密级”栏</span>
				</div>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/quartersubsidies/quartersubsidiesList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>