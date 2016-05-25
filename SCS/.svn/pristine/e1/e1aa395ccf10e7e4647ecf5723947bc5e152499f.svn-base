<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/keypartexam/js/keypartexam.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/keypartexam/keypartexamInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="keypartexam.id" value="<s:property value="keypartexam.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		    		<strong>申报单位：<s:property value="keypartexam.notification"/></strong>
		    	</div>
				<table width="100%" class="bordered">
					<tr>
						<td>申报部门、部位名称</td>
					    <td colspan="3"><s:property value="keypartexam.partname"/></td>
					</tr>
					<tr>
						<td>部门、部位负责人</td>
					    <td><s:property value="keypartexam.parthead"/></td>
					    <td>涉密人员总数</td>
					    <td><s:property value="keypartexam.totalstaff"/></td>
					</tr>
					<tr>
					    <td>部门、部位所处位置</td>
					    <td colspan="3"><s:property value="keypartexam.partlocation"/></td>
					</tr>
					<tr>
					    <td>申报理由</td>
					    <td colspan="3"><s:property value="keypartexam.declarationreason"/></td>
					</tr>
					<tr>
					    <td>已采取防护措施的情况</td>
					    <td colspan="3"><p style="text-align:left;">&#9670; 人工防护措施：<s:property value="keypartexam.apmeasures"/></p>      
					    <p style="text-align:left;">&#9670; 物理防护措施：<s:property value="keypartexam.ppmeasures"/></p>
					    <p style="text-align:left;">&#9670;技术防护措施：<s:property value="keypartexam.tpmeasures"/></p></td>
					</tr>
					<tr>
					    <td>申报单位保密委员会审查意见</td>
					    <td colspan="3">（应明确申报为保密要害部门或保密要害部位。）<s:property value="keypartexam.uscomdesc"/></td>
					</tr>
					<tr>
					    <td>院保密委员会审定意见</td>
					    <td colspan="3"><s:property value="keypartexam.yscomdesc"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/keypartexam/keypartexamList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>