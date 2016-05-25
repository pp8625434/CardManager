<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedprint/js/classifiedprint.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
	</head>
	<body class="adminMain">	
		<div class="mainTitle">查看涉密信息打印输出审批登记</div>	
		<form action="${applicationScope.ctx}/classifiedprint/classifiedprintInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cpid" name="classifiedprint.id" value="<s:property value="classifiedprint.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table class="tableEdit">
					<tr>
						<td width="80px">日期:</td>
						<td>
							<s:date name="classifiedprint.registdate" format="yyyy-MM-dd"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">文件资料名称或标题:</td>
						<td>
							<s:property value="classifiedprint.filename"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">密级:</td>
						<td>
							<hi:select emu="BM-02-03procls" name="classifiedprint.classification" isLabel="true"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">页数（单份）:</td>
						<td>
							<s:property value="classifiedprint.pages"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">份数:</td>
						<td>
							<s:property value="classifiedprint.copies"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">去向或用途:</td>
						<td>
							<s:property value="classifiedprint.qxyt"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">打印人:</td>
						<td>
							<s:property value="classifiedprint.printername"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">批准人:</td>
						<td>
							<s:property value="classifiedprint.approver"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">打印时间:</td>
						<td>
							<s:date name="classifiedprint.printerdate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">登记编号:</td>
						<td>
							<s:property value="classifiedprint.rcode"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">领取人:</td>
						<td>
							<s:property value="classifiedprint.gname"/>
						</td>							
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/classifiedprint/classifiedprintList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>