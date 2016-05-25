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
			系统失泄密记录详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<table width="100%" class="bordered">
					<caption>
						系统失泄密记录表
					</caption>
					<tr>
						<td width="25%">
							事件类型
						</td>
						<td colspan="3">
							<hi:select disabled="true" emu="page_44_telltaleRecord" name="telltaleRecord.eventtype" id="telltaleRecord.eventtype"  />
						</td>
					</tr>
					<tr>
						<td>
							发生时间
						</td>
						<td colspan="3">
							<s:date name="telltaleRecord.happendate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td>
							发生原因
						</td>
						<td colspan="3">
							<s:property value="telltaleRecord.happenreason"/>
						</td>
					</tr>
					<tr>
						<td>
							影响范围
						</td>
						<td colspan="3">
							<s:property value="telltaleRecord.effectrange"/>
						</td>
					</tr>
					<tr>
						<td>
							补救措施
						</td>
						<td colspan="3">
							<s:property value="telltaleRecord.measures"/>
						</td>
					</tr>
					<tr>
						<td>
							最终结果
						</td>
						<td colspan="3">
							<s:property value="telltaleRecord.result"/>
						</td>
					</tr>
					<tr>
						<td>
							填报人
						</td>
						<td width="25%">
							<s:property value="telltaleRecord.informant"/>
						</td>
						<td width="25%">
							部门审核人
						</td>
						<td width="25%">
							<s:property value="telltaleRecord.checker"/>
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