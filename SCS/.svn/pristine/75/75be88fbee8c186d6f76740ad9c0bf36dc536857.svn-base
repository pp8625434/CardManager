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
			保密补贴扣发通知单（保密办留存）详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<div>
					<span> 编号：
						<s:property value="subsidiesDetain.code"/>
					</span>
					<span> 日期：
						<s:date name="subsidiesDetain.noticedate" format="yyyy-MM-dd HH:mm:ss"/>
					</span>
				</div>
				<table class="bordered">
					<tr>
						<td width="15%">
							部门
						</td>
						<td width="35%">
							<s:property value="subsidiesDetain.orgname"/>
						</td>
						<td width="15%">
							姓名
						</td>
						<td width="35%">
							<s:property value="subsidiesDetain.name"/>
						</td>
					</tr>
					<tr>
						<td>
							扣发意见
						</td>
						<td colspan="3">
							<s:property value="subsidiesDetain.detaindesc"/>
						</td>
					</tr>
					<tr>
						<td>
							被扣发人签字
						</td>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="subsidiesDetain.detainsign"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							扣发执行情况
						</td>
						<td colspan="3" style="text-align: left;">
							人力资源部扣发
							<s:property value="subsidiesDetain.deductamount"/>
							，
							<s:date name="subsidiesDetain.detainstartdate" format="yyyy-MM-dd HH:mm:ss"/>
							至
							<s:date name="subsidiesDetain.detainenddate" format="yyyy-MM-dd HH:mm:ss"/>
							保密补贴。
						</td>
					</tr>
					<tr>
						<td>
							承办人：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="subsidiesDetain.promoter"/>
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