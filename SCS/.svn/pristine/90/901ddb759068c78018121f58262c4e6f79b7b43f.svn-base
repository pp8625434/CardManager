<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/borrowmedium/js/borrowmedium.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
	</head>
	<body class="adminMain">	
		<div class="mainTitle">查看涉密信息打印输出审批登记</div>	
		<form action="${applicationScope.ctx}/borrowmedium/borrowmediumInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cpid" name="borrowmedium.id" value="<s:property value="borrowmedium.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table class="tableEdit">
					<tr>
						<td width="80px">
							日期:
						</td>
						<td>
							<s:date name="borrowmedium.borrowdate" format="yyyy-MM-dd"/>
						</td>
					</tr>
					<tr>
						<td>
							类型:
						</td>
						<td>
							<hi:select emu="BM-03-04ztlb" name="borrowmedium.mediumtype" isLabel="true" />
						</td>
					</tr>
					<tr>
						<td>
							涉密级别:
						</td>
						<td>
							<hi:select emu="BM-05-04jzmj" name="borrowmedium.mclassified" isLabel="true" />
						</td>
					</tr>
					<tr>
						<td>
							保密编号:
						</td>
						<td>
							<s:property value="borrowmedium.scode"/>
						</td>
					</tr>
					<tr>
						<td>
							连接设备编号:
						</td>
						<td>
							<s:property value="borrowmedium.devicecode"/>
						</td>
					</tr>
					<tr>
						<td>
							连接设备密级:
						</td>
						<td>
							<hi:select emu="page_27_devsecurity" name="borrowmedium.dclassified" isLabel="true"/>
						</td>
					</tr>
					<tr>
						<td>
							借用期限:
						</td>
						<td>
							<s:property value="borrowmedium.ulimite"/>
						</td>
					</tr>
					<tr>
						<td>
							使用人签字:
						</td>
						<td>
							<s:property value="borrowmedium.usesign"/>
						</td>
					</tr>
					<tr>
						<td>
							返回时间:
						</td>
						<td>
							<s:date name="borrowmedium.receivedate" format="yyyy-MM-dd"/>
						</td>
					</tr>
					<tr>
						<td>
							检查情况:
						</td>
						<td>
							<s:property value="borrowmedium.checkdesc"/>
						</td>
					</tr>
					<tr>
						<td>
							检查人:
						</td>
						<td>
							<s:property value="borrowmedium.cname"/>
						</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/borrowmedium/borrowmediumList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>