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
			OA系统组织结构变更详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<table width="100%" class="bordered">
					<caption>
						OA系统组织结构变更单
					</caption>
					<tr>
						<td colspan="2">
							日期
						</td>
						<td colspan="2">
							<s:date name="oaSysAlter.formdate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td width="25%">
							经办人
						</td>
						<td width="25%">
							<s:property value="oaSysAlter.agent"/>
						</td>
						<td width="25%">
							联系电话
						</td>
						<td width="25%">
							<s:property value="oaSysAlter.cellphone"/>
						</td>
					</tr>

					<tr>
						<td rowspan="1">
							办理类型
						</td>
						<td colspan="3">
							<div align="left">
								部门新增或变更名称：
								<s:property value="oaSysAlter.deptalter"/>
							</div>
							<div align="left">
								处室新增或变更名称：
								<s:property value="oaSysAlter.chushialter"/>
							</div>
							<div align="left">
								其他内容：
								<s:property value="oaSysAlter.typeelse"/>
							</div>
						</td>
					</tr>


					<tr>
						<td>
							办理要求
						</td>
						<td colspan="3">
							<s:property value="oaSysAlter.askfor"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请部门意见
						</td>
						<td colspan="3">
							<s:property value="oaSysAlter.applydeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="oaSysAlter.applydeptsign"
								id="oaSysAlter.applydeptsign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							办公室意见
						</td>
						<td colspan="3">
							<s:property value="oaSysAlter.officeopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="oaSysAlter.officesign"
								id="oaSysAlter.officesign" />
							
						</td>
					</tr>
					<tr>
						<td colspan="3">
							（如部门新增需提供部门机关代字、分发单排序。）
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							经营投资部意见
						</td>
						<td colspan="3">
							<s:property value="oaSysAlter.investopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="oaSysAlter.investsign"
								id="oaSysAlter.investsign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							办理情况
						</td>
						<td colspan="3">
							<s:property value="oaSysAlter.trancondition"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="oaSysAlter.transign"
								id="oaSysAlter.transign"  />
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