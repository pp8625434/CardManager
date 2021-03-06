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
			系统配置变更审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						系统配置变更审批表
					</caption>
					<tr>
						<td width="25%">
							系统配置变更申请人
						</td>
						<td width="25%">
							<s:property value="sysConfigAlter.applicant"/>
						</td>
						<td width="25%">
							申请日期
						</td>
						<td width="25%">
							<s:date name="sysConfigAlter.applydate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td>
							变更设备或系统名称
						</td>
						<td colspan="3">
							<s:property value="sysConfigAlter.devorsysname"/>
						</td>
					</tr>
					<tr>
						<td>
							配置变更原因
						</td>
						<td colspan="3">
							<s:property value="sysConfigAlter.alterreason"/>
						</td>
					</tr>
					<tr>
						<td>
							配置变更内容及影响情况分析
						</td>
						<td colspan="3">
							<s:property value="sysConfigAlter.contentanalyze"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="3">
							<s:property value="sysConfigAlter.infordeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sysConfigAlter.infordeptsign" id="sysConfigAlter.infordeptsign" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							保密管理部门意见
						</td>
						<td colspan="3">
							<s:property value="sysConfigAlter.securityopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sysConfigAlter.securitysign" id="sysConfigAlter.securitysign" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							注：是否需保密部门签署意见，信息化部门要在意见栏中明确指出。
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							配置变更操作结果及影响情况分析
						</td>
						<td colspan="3">
							<s:property value="sysConfigAlter.resultanalyze"/>
						</td>
					</tr>
					<tr>
						<td>
							操作人员签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sysConfigAlter.operatorsign" id="sysConfigAlter.operatorsign"  />
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