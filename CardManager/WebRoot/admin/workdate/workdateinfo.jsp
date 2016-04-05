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
			src="${applicationScope.ctx}/admin/workdate/js/workdate.js"></script>
	</head>
	<body class="adminMain">
		<div class="mainTitle">工作日信息详情</div>
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/workdate/workdateInfo.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<input type="hidden" id="id" name="workdate.id" value="<s:property value="workdate.id" />"> 
				<table class="tableEdit">
					<tr>
						<td width="80px">日期:</td>
						<td>
							<s:date name="workdate.thedate" format="yyyy-MM-dd"/>
						</td>							
					</tr>
					<tr>
						<td>
							日期类型:
						</td>
						<td>
							<s:if test="workdate.dtype ==0">休息日</s:if> 
							<s:if test="workdate.dtype ==1">工作日</s:if>
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