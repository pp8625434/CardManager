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
			src="<%=request.getContextPath()%>/admin/subsidiesdetain/js/subsidiesDetain.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<div class="mainTitle">
			新增保密补贴扣发通知单（保密办留存）
		</div>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/subsidiesdetain/subsidiesDetainSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="subsidiesDetain.id" id="id" />
				<input type="hidden" name="subsidiesDetain.version" id="version" />
				<input type="hidden" name="subsidiesDetain.username" id="username" />
				<input type="hidden" name="subsidiesDetain.userid" id="userid" />
				<div>
					<span> 编号：<input type="text" name="subsidiesDetain.code"
							id="code" isnull="no" mes="编号不能为空" /> </span>
					<span> 日期：<input type="text"
							name="subsidiesDetain.noticedate" id="noticedate"
							dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"
							mes="日期不能为空" /> </span>
				</div>
				<table class="bordered">
					<tr>
						<td width="15%">
							部门
						</td>
						<td width="35%">
							<input type="text" name="subsidiesDetain.orgname" id="bm"
								isnull="no" mes="部门不能为空" />
							<input type="hidden" name="subsidiesDetain.orgid"/>
						</td>
						<td width="15%">
							姓名
						</td>
						<td width="35%">
							<input type="text" name="subsidiesDetain.name" id="name"
								isnull="no" mes="姓名不能为空" />
						</td>
					</tr>
					<tr>
						<td>
							扣发意见
						</td>
						<td colspan="3">
							<textarea name="subsidiesDetain.detaindesc" id="detaindesc"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							被扣发人签字
						</td>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select type="radio" emu="yesNo" name="subsidiesDetain.detainsign"
								isnull="no" mes="请选择部门负责人签字" />
							<input type="hidden" name="subsidiesDetain.dsid"/>
							<input type="hidden" name="subsidiesDetain.signdate"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							扣发执行情况
						</td>
						<td colspan="3" style="text-align: left;">
							人力资源部扣发
							<input type="text" name="subsidiesDetain.deductamount" id="deductamount" dtype="number(11,2)"  mes="请填写正确金额" />
							，
							<input type="text" name="subsidiesDetain.detainstartdate" id="detainstartdate"
								dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no" mes="请选择扣发起始日期" />
							至
							<input type="text" name="subsidiesDetain.detainenddate" id="detainenddate" dtype="date(yyyy-MM-dd HH:mm:ss)"
								value="" isnull="no" mes="请选择扣发截止日期" />
							保密补贴。
						</td>
					</tr>
					<tr>
						<td>
							承办人：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select type="radio" emu="yesNo" name="subsidiesDetain.promoter"
								isnull="no" mes="请选择承办人签字" />
							<input type="hidden" name="subsidiesDetain.promoterid"/>
							<input type="hidden" name="subsidiesDetain.promoterdate"/>
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
