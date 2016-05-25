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
			配线间周检查记录详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<tr>
						<td width="80px">
							检查日期:
						</td>
						<td>
							<s:date name="pantchRecord.checkdate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td width="80px">
							检查地点:
						</td>
						<td>
							<s:property value="pantchRecord.checkplace"/>
						</td>
					</tr>
					<tr>
						<td width="80px">
							检查情况:
						</td>
						<td>
							<s:property value="pantchRecord.checkcondition"/>
						</td>
					</tr>
					<tr>
						<td width="80px">
							检查人:
						</td>
						<td>
							<s:property value="pantchRecord.checker"/>
						</td>
					</tr>
					<tr>
						<td width="80px">
							备注:
						</td>
						<td>
							<s:property value="pantchRecord.remark"/>
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