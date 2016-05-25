<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="../js/util/jquery-2.2.3.js"></script>
		<script type="text/javascript" src="../js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript"
			src="../js/util/formUtil.js"></script>
		<link rel="stylesheet" type="text/css" href="../style/style.css">
		<script type="text/javascript">
			
		</script>
	</head>
	<body>
		<form id="testForm" action="asdasdas" onsubmit="onForm_Submits();">
			<table width="100%" class="bordered">
				<caption>
					系统失泄密记录表
				</caption>
				<tr>
					<td width="25%">
						事件类型
					</td>
					<td colspan="3">
						<input type="text" name="eventtype" id="eventtype" isnull="no" dorder="1"  mes="事件类型不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						发生时间
					</td>
					<td colspan="3">
						<input type="text" name="happendate" id="happendate"  dtype="date(yyyy-MM-dd HH:mm:ss)"   isnull="no" dorder="2"  mes="发生时间不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						发生原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="happenreasion" id="happenreasion" isnull="no" dorder="3"  mes="发生原因不能为空"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						影响范围
					</td>
					<td colspan="3">
						<textarea rows="3" name="effectscope" id="effectscope" isnull="no" dorder="4"  mes="影响范围不能为空"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						补救措施
					</td>
					<td colspan="3">
						<textarea rows="3" name="measure" id="measure" isnull="no" dorder="5"  mes="补救措施不能为空"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						最终结果
					</td>
					<td colspan="3">
						<textarea rows="3" name="result" id="result" isnull="no" dorder="6"  mes="最终结果不能为空"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						填报人
					</td>
					<td width="25%">
						<input type="text" name="name" id="name" isnull="no" dorder="10"  mes="填报人不能为空" size="20"/>
					</td>
					<td width="25%">
						部门审核人
					</td>
					<td width="25%">
						<input type="text" name="checker" id="checker" isnull="no" dorder="11"  mes="部门审核人不能为空" size="20"/>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
