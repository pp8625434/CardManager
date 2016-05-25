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
			建立摆渡中心申请详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						建立摆渡中心申请表
					</caption>
					<tr>
						<td width="25%">
							申请部门
						</td>
						<td width="25%">
							<s:property value="ferryCentre.applydept"/>
						</td>
						<td width="25%">
							处理信息最高密级
						</td>
						<td width="25%">
							<hi:select disabled="true" emu="page_43_security" name="ferryCentre.security" id="ferryCentre.security" />
						</td>
					</tr>
					<tr>
						<td>
							联系人
						</td>
						<td>
							<s:property value="ferryCentre.linkman"/>
						</td>
						<td>
							联系电话
						</td>
						<td>
							<s:property value="ferryCentre.cellphone"/>
						</td>
					</tr>
					<tr>
						<td>
							建立地点
						</td>
						<td>
							<s:property value="ferryCentre.createplace"/>
						</td>
						<td>
							申请时间
						</td>
						<td>
							<s:date name="ferryCentre.applydate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td>
							摆渡员姓名
						</td>
						<td>
							<s:property value="ferryCentre.ferryer"/>
						</td>
						<td>
							摆渡员密级
						</td>
						<td>
							<hi:select disabled="true"  emu="page_43_ferryerSecurity" name="ferryCentre.ferryersecurity" id="ferryCentre.ferryersecurity" />
						</td>
					</tr>
					<tr>
						<td>
							申请原因
						</td>
						<td colspan="3">
							<s:property value="ferryCentre.applyreason"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请部门意见
						</td>
						<td colspan="3">
							<s:property value="ferryCentre.applydeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="ferryCentre.applydeptsign" id="ferryCentre.applydeptsign" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							保密管理部门意见
						</td>
						<td colspan="3">
							<s:property value="ferryCentre.securityopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="ferryCentre.securitysign" id="ferryCentre.securitysign" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="3">
							<s:property value="ferryCentre.infordeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="ferryCentre.infordeptsign" id="ferryCentre.infordeptsign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							安全保密管理员办理情况
						</td>
						<td colspan="3">
							<s:property value="ferryCentre.trancondition"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="ferryCentre.transign" id="ferryCentre.transign" />
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