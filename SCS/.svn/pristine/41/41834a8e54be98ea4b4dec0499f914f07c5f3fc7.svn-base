<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.net.URLEncoder"%> 
<%@page import="java.io.*"%> 
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
			应用系统入网审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<table width="100%" class="bordered">
					<caption>
						应用系统入网审批表
					</caption>
					<tr>
						<td width="25%">
							应用系统名称
						</td>
						<td width="25%">
							<s:property value="appSysNetIn.sysname"/>
						</td>
						<td width="25%">
							项目负责人
						</td>
						<td width="25%">
							<s:property value="appSysNetIn.projectprincipal"/>
						</td>
					</tr>
					<tr>
						<td>
							业务主管部门
						</td>
						<td>
							<s:property value="appSysNetIn.executivedept"/>
						</td>
						<td>
							部门负责人
						</td>
						<td>
							<s:property value="appSysNetIn.deptprincipal"/>
						</td>
					</tr>
					<tr>
						<td>
							系统开发单位
						</td>
						<td>
							<s:property value="appSysNetIn.sysdevelopdept"/>
						</td>
						<td>
							开发单位联系人
						</td>
						<td>
							<s:property value="appSysNetIn.developor"/>
						</td>
					</tr>
					<tr>
						<td>
							开发单位资质
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.developdeptzizhi"/>
						</td>
					</tr>
					<tr>
						<td>
							系统密级
						</td>
						<td>
							<hi:select disabled="true" emu="page_33_sysSec" name="appSysNetIn.security" id="appSysNetIn.security" />
						</td>
						<td>
							接入位置
						</td>
						<td>
							<s:property value="appSysNetIn.accesspoint"/>
						</td>
					</tr>
					<tr>
						<td>
							适用范围
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.applicationrange"/>
						</td>
					</tr>
					<tr>
						<td>
							系统功能简述
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.functionsketch"/>
						</td>
					</tr>
					<tr>
						<td>
							项目立项与验收资料
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.projectdata"/>
						</td>
					</tr>
					<tr>
						<td>
							系统运行所需软硬件环境
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.environment"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							系统安全策略
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.securitypolicy"/>
							<a href="<s:property value='appSysNetIn.filePath'/>">附件下载（超链接方法不安全，待改！且为单一附件）</a>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							（附件详述系统符合保密标准BMB17与BMB22的安全策略设置）
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							立项部门意见
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.setupdept"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" disabled="true" emu="yesNo" name="appSysNetIn.setupdeptsign" id="appSysNetIn.setupdeptsign" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							保密管理部门意见
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.securityopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" disabled="true" emu="yesNo" name="appSysNetIn.securitysign" id="appSysNetIn.securitysign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="3">
							<s:property value="appSysNetIn.infordeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" disabled="true" emu="yesNo" name="appSysNetIn.infordeptsign" id="appSysNetIn.infordeptsign"/>
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