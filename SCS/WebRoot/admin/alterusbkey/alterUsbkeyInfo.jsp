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
			更换USBKEY申请详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						更换USBKEY申请表
					</caption>
					<tr>
						<td width="25%">
							姓名
						</td>
						<td width="25%">
							<s:property value="alterUsbkey.name"/>
						</td>
						<td width="25%">
							岗位
						</td>
						<td width="25%">
							<s:property value="alterUsbkey.position"/>
						</td>
					</tr>
					<tr>
						<td>
							所属部门、单位
						</td>
						<td>
							<s:property value="alterUsbkey.deptname"/> 
						</td>
						<td>
							密级
						</td>
						<td>
							<hi:select disabled="true" emu="page_36_security" name="alterUsbkey.security" id="alterUsbkey.security" />
						</td>
					</tr>
					<tr>
						<td>
							工作地点
						</td>
						<td>
							<s:property value="alterUsbkey.workplace"/>
						</td>
						<td>
							联系电话
						</td>
						<td>
							<s:property value="alterUsbkey.cellphone"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							更换USBKEY原因
						</td>
						<td>
							更换原因
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="page_36_alterreasion" name="alterUsbkey.alterreason" id="alterUsbkey.alterreason" />
						</td>
					</tr>
					<tr>
						<td>
							具体情况描述
						</td>
						<td colspan="2">
							<s:property value="alterUsbkey.definitereason"/>
						</td>
					</tr>
					<tr>
						<td>
							申请人签字
						</td>
						<td>
							<hi:select disabled="true" type="radio" emu="yesNo" name="alterUsbkey.applicantsign" id="alterUsbkey.applicantsign" />
						</td>
						<td>
							申请时间
						</td>
						<td>
							<s:date name="alterUsbkey.applydate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							部门负责人意见
						</td>
						<td colspan="3">
							<s:property value="alterUsbkey.deptopinion"/> 
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="alterUsbkey.deptsign" id="alterUsbkey.deptsign" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							保密管理部门意见
						</td>
						<td colspan="3">
							<s:property value="alterUsbkey.securityopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="alterUsbkey.securitysign" id="alterUsbkey.securitysign"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="3">
							<s:property value="alterUsbkey.infordeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="alterUsbkey.infordeptsign" id="alterUsbkey.infordeptsign" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							安全保密管理员办理情况
						</td>
						<td colspan="3">
							<s:property value="alterUsbkey.trancondition"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="alterUsbkey.transign" id="alterUsbkey.transign" />
						</td>
					</tr>
					<tr>
						<td>
							备注
						</td>
						<td colspan="3">
							USBKEY丢失需要保密部门签字，USBKEY损坏不需要保密部门签字。
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