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
		<script type="text/javascript" 
			src="${applicationScope.ctx}/admin/merchant/js/merchant.js"></script>
	</head>
	<body class="adminMain">
		<div class="mainTitle">商铺信息详情</div>
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/merchant/merchantInfo.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<input type="hidden" id="mid" name="merchant.id" value="<s:property value="merchant.id" />"> 
				<table class="tableEdit">
					<tr>
						<td width="80px">商铺名称:</td>
						<td>
							<s:property value="merchant.mname"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">商铺简介:</td>
						<td>
							<s:property value="merchant.mdesc"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">法人:</td>
						<td>
							<s:property value="merchant.leader"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">联系电话:</td>
						<td>
							<s:property value="merchant.phone"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">地址:</td>
						<td>
							<s:property value="merchant.address"/>
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