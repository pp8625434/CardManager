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
			本部接受采访审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<tr>
						<td width="25%">
							受访人
						</td>
						<td width="25%">
							<s:property value="interview.interviewer"/>
						</td>
						<td width="25%">
							受访人所在部门
						</td>
						<td width="25%">
							<s:property value="interview.dept"/>
						</td>
					</tr>
					<tr>
						<td>
							受访内容范围
						</td>
						<td>
							<s:property value="interview.contentscope"/>
						</td>
						<td>
							受访时间
						</td>
						<td>
							<s:date name="interview.interviewdate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td>
							采访人
						</td>
						<td>
							<s:property value="interview.interviewee"/>
						</td>
						<td>
							采访人所在单位
						</td>
						<td>
							<s:property value="interview.interdept"/>
						</td>
					</tr>
					<tr>
						<td>
							采访目的
						</td>
						<td colspan="3">
							<s:property value="interview.purpose"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							受访人所在部门意见
						</td>
						<td colspan="3">
							<s:property value="interview.sfdeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="interview.sfsign"
								/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							保密委员会办公室意见
						</td>
						<td colspan="3">
							<s:property value="interview.sofficedesc"/>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="interview.sofficesign"
								/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							院保密委员会意见
						</td>
						<td colspan="3">
							<s:property value="interview.ysofficedesc"/>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="interview.ysofficesign"
								/>
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