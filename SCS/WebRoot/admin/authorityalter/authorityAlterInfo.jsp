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
			用户权限变更审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						用户权限变更审批表
					</caption>
					<tr>
						<td width="25%">
							姓名
						</td>
						<td width="25%">
							<s:property value="authorityAlter.name"/>
						</td>
						<td width="25%">
							岗位
						</td>
						<td width="25%">
							<s:property value="authorityAlter.position"/>
						</td>
					</tr>
					<tr>
						<td>
							部门
						</td>
						<td>
							<s:property value="authorityAlter.dept"/>
						</td>
						<td>
							密级
						</td>
						<td>
							<hi:select disabled="true"  emu="page_27_applyersecurity" name="authorityAlter.security" id="authorityAlter.security"/>
						</td>
					</tr>
					<tr>
						<td>
							工作地点
						</td>
						<td>
							<s:property value="authorityAlter.workplace"/>
						</td>
						<td>
							联系电话
						</td>
						<td>
							<s:property value="authorityAlter.cellphone"/>
						</td>
					</tr>
					<tr>
						<td>
							权限变更原因
						</td>
						<td colspan="3">
							<s:property value="authorityAlter.alterreason"/>
						</td>
					</tr>
					
					<tr>
						<td>
							申请人签字
						</td>
						<td>
							<hi:select disabled="true" type="radio" emu="yesNo" name="authorityAlter.applicantsign" id="authorityAlter.applicantsign"  />
						</td>
						<td>
							申请时间
						</td>
						<td>
							<s:date name="authorityAlter.applicantsigndate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							部门领导意见
						</td>
						<td colspan="3">	
							<s:property value="authorityAlter.deptleaderopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="authorityAlter.deptleadersign" id="authorityAlter.deptleadersign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							保密管理部门意见
						</td>
						<td colspan="3">
							<s:property value="authorityAlter.securityopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="authorityAlter.securitysign" id="authorityAlter.securitysign" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							信息化管理部门操作说明
						</td>
						<td colspan="2">
							是否完成操作
						</td>
						<td>
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="authorityAlter.isfinishoperate" id="authorityAlter.isfinishoperate" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							是否将完成操作结果告知申请人
						</td>
						<td>
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="authorityAlter.isinformapplicat" id="authorityAlter.isinformapplicat" />
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="authorityAlter.infordeptsign" id="authorityAlter.infordeptsign" />
						</td>
					</tr>
					<tr>
						<td>
							备注
						</td>
						<td colspan="3">
							此表审批完成后，交信息化管理部门处理
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