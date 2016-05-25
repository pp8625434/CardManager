<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/pantchrecord/js/pantchRecord.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增配线间周检查记录
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/pantchrecord/pantchRecordSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="pantchRecord.id" id="id"/>
			<input type="hidden" name="pantchRecord.version" id="version"/>
			<input type="hidden" name="pantchRecord.firstperson" id="firstperson"/>
			<input type="hidden" name="pantchRecord.firstpid" id="firstpid"/>
			<input type="hidden" name="pantchRecord.firstsubdate" id="firstsubdate"/>
			<table width="100%" class="bordered">
				<tr>
					<td width="80px">
						检查日期:
					</td>
					<td>
						<input type="text" name="pantchRecord.checkdate" id="checkdate"  dtype="date(yyyy-MM-dd HH:mm:ss)" isnull="no" dorder="1"  mes="检查日期不能空" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						检查地点:
					</td>
					<td>
						<input type="text" name="pantchRecord.checkplace" id="checkplace"  isnull="no" dorder="2"  mes="检查地点不能空" size="50" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						检查情况:
					</td>
					<td>
						<textarea rows="3" name="pantchRecord.checkcondition" id="checkcondition"></textarea>
					</td>
				</tr>
				<tr>
					<td width="80px">
						检查人:
					</td>
					<td>
						<input type="text" name="pantchRecord.checker" id="checker"  isnull="no" dorder="4"  mes="检查人不能空" size="25" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						备注:
					</td>
					<td>
						<textarea rows="3" name="pantchRecord.remark" id="remark"></textarea>
					</td>
				</tr>
			
			</table>
			<br />
			<div class="btnBox">
				<input type="submit" id="addBut" value="保存"  class="btnInput1" />
				&nbsp;
				<input type="button" class="btnInput2 chancleButton" value="取消" 
					onclick="cancelBtn();"/>
			</div>
		</form>
		</div>
	</body>
</html>
