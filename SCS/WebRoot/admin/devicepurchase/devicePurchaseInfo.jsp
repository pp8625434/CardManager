<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/common/validator.js"></script>
		<script type="text/javascript"
			src="${applicationScope.ctx}/uploader/jquery-1.8.0.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			<s:date name="devicePurchase.niandu" format="yyyy"/>年度设备购置需求详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						<s:date name="devicePurchase.niandu" format="yyyy"/>年度设备购置需求表
					</caption>
					
					<tr>
						<td width="7%">
							申请部门
						</td>
						<td colspan="2">
							<s:property value="devicePurchase.applydept"/>
						</td>
						<td width="11%">
							日期
						</td>
						<td colspan="2">
							<s:date name="devicePurchase.applydate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					
					<tr >
						<td width="20%"> 设备名称</td>
						<td width="20%"> 型号</td>
						<td> 数量</td>
						<td> 生产厂家</td>
						<td> 预计金额</td>
					</tr>
					<s:iterator value="deviceInfoList" status="deviceInfo">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#deviceInfo.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td> <s:property  value="device"/></td>
							<td> <s:property  value="devversion"/></td>
							<td> <s:property  value="number"/></td>
							<td> <s:property  value="producer"/></td>
							<td> <s:property  value="budget"/></td>
						</tr>
					</s:iterator>
					
					<tr>
						<td colspan="6">
							购置原因（可分页）
						</td>
					</tr>
					<tr>
						<td colspan="6">
							<s:property value="devicePurchase.purchasereason"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							本部门意见
						</td>
						<td colspan="5">
							<s:property value="devicePurchase.deptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select type="radio" disabled="true" emu="yesNo" name="devicePurchase.deptsign" id="devicePurchase.deptsign"/>
						</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>