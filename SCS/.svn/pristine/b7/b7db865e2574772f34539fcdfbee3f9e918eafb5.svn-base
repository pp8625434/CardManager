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
			外网邮箱开通、撤销申请审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						外网邮箱开通、撤销申请审批表
					</caption>
					<tr>
						<td width="25%">
							申请人所在单位（部门）
						</td>
						<td width="25%">
							<s:property value="emailExamine.deptname"/>
						</td>
						<td width="25%">
							申请人
						</td>
						<td width="25%">
							<s:property value="emailExamine.applicant"/>
						</td>
					</tr>
					<tr>
						<td>
							申请人所在处室
						</td>
						<td>
							<s:property value="emailExamine.offices"/>
						</td>
						<td>
							联系方式
						</td>
						<td>
							<s:property value="emailExamine.linktype"/>
						</td>
					</tr>
					<tr>
						<td rowspan="1">
							申请开通外网邮箱原因
						</td>
						<td colspan="3">
							<s:property value="emailExamine.openreason"/>
						</td>
					</tr>
					<tr>
						<td rowspan="1">
							申请撤销外网邮箱原因
						</td>
						<td colspan="3">	
							<s:property value="emailExamine.revokereason"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="emailExamine.applicantsign" id="emailExamine.applicantsign" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请人所在部门或单位意见
						</td>
						<td colspan="3">
							<s:property value="emailExamine.applydeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="emailExamine.applydeptsign" id="emailExamine.applydeptsign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息档案部审查意见
						</td>
						<td colspan="3">
							<s:property value="emailExamine.archivesdept"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="emailExamine.archivessign" id="emailExamine.archivessign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							网管操作结果记录
						</td>
						<td colspan="3">
							<s:property value="emailExamine.operatrecord"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="emailExamine.webmaster" id="emailExamine.webmaster" />
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