<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/interview/js/interview.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<div class="mainTitle">
			新增本部接受采访审批
		</div>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/interview/interviewSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="interview.id" id="id" />
				<input type="hidden" name="interview.version" id="version" />
				<input type="hidden" name="interview.username" id="username" />
				<input type="hidden" name="interview.userid" id="userid" />
				<table width="100%" class="bordered">
					<tr>
						<td width="25%">
							受访人
						</td>
						<td width="25%">
							<input type="text" name="interview.interviewer" id="interviewer" isnull="no"
								mes="受访人不能为空" size="25"/>
						</td>
						<td width="25%">
							受访人所在部门
						</td>
						<td width="25%">
							<input type="text" name="interview.dept" id="dept"
								isnull="no" mes="受访人所在部门不能为空" size="25"/>
						</td>
					</tr>
					<tr>
						<td>
							受访内容范围
						</td>
						<td>
							<input type="text" name="interview.contentscope" id="contentscope"
								isnull="no" mes="受访内容范围不能为空" size="50"/>
						</td>
						<td>
							受访时间
						</td>
						<td>
							<input type="text" name="interview.interviewdate" id="interviewdate"
								dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"
								mes="受访时间不能为空" />
						</td>
					</tr>
					<tr>
						<td>
							采访人
						</td>
						<td>
							<input type="text" name="interview.interviewee" id="interviewee" isnull="no"
								mes="采访人不能为空" size="25"/>
						</td>
						<td>
							采访人所在单位
						</td>
						<td>
							<input type="text" name="interview.interdept" id="interdept"
								isnull="no" mes="采访人所在单位不能为空" size="25"/>
						</td>
					</tr>
					<tr>
						<td>
							采访目的
						</td>
						<td colspan="3">
							<textarea name="interview.purpose" id="purpose" isnull="no"
								mes="采访目的不能为空"></textarea>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							受访人所在部门意见
						</td>
						<td colspan="3">
							<textarea name="interview.sfdeptopinion" id="sfdeptopinion" isnull="no"
								mes="受访人所在部门意见不能为空"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select type="radio" emu="yesNo" name="interview.sfsign"
								isnull="no" mes="请选择受访人所在部门签字" />
							<input type="hidden" name="interview.sfsignid"/>
							<input type="hidden" name="interview.sfsigndate"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							保密委员会办公室意见
						</td>
						<td colspan="3">
							<textarea name="interview.sofficedesc" id="sofficedesc" isnull="no"
								mes="保密委员会办公室意见不能为空"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select type="radio" emu="yesNo" name="interview.sofficesign"
								isnull="no" mes="请选择保密委员会办公室签字" />
							<input type="hidden" name="interview.sofficeid"/>
							<input type="hidden" name="interview.sofficedate"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							院保密委员会意见
						</td>
						<td colspan="3">
							<textarea name="interview.ysofficedesc" id="ysofficedesc" isnull="no"
								mes="院保密委员会意见不能为空"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select type="radio" emu="yesNo" name="interview.ysofficesign"
								isnull="no" mes="请选择院保密委员会签字" />
							<input type="hidden" name="interview.ysofficeid"/>
							<input type="hidden" name="interview.ysofficedate"/>
						</td>
					</tr>
				</table>
				<br />
				<div class="btnBox">
					<input type="submit" id="addBut" value="保存" class="btnInput1" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消"
						onclick="cancelBtn();" />
				</div>
			</form>
		</div>
	</body>
</html>
