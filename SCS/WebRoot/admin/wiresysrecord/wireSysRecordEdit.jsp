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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/wiresysrecord/js/wireSysRecord.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="wireSysRecord.id !=null">
			<div class="mainTitle">
				编辑布线系统季度检查记录
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新增布线系统季度检查记录
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/wiresysrecord/wireSysRecordSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="wireSysRecord.id" id="id" value="<s:property value="wireSysRecord.id" />" />
			<input type="hidden" name="wireSysRecord.version" id="version" value="<s:property value="wireSysRecord.version" />" />
			<input type="hidden" name="wireSysRecord.firstperson" id="firstperson" value="<s:property value="wireSysRecord.firstperson" />" />
			<input type="hidden" name="wireSysRecord.firstpid" id="firstpid" value="<s:property value="wireSysRecord.firstpid" />" />
			<input type="hidden" name="wireSysRecord.firstsubdate" id="firstsubdate" value="<s:property value="wireSysRecord.firstsubdate" />" />
			<table width="100%" class="bordered">
				<tr>
					<td width="80px">
						检查日期:
					</td>
					<td>
						<input type="text" name="wireSysRecord.checkdate" id="checkdate"  dtype="date(yyyy-MM-dd HH:mm:ss)" value="<s:date name="wireSysRecord.checkdate" format="yyyy-MM-dd hh:mm:ss"/>" isnull="no" dorder="1"  mes="检查日期不能空" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						检查地点:
					</td>
					<td>
						<input type="text" name="wireSysRecord.checkplace" id="checkplace" value="<s:property value="wireSysRecord.checkplace" />"  isnull="no" dorder="2"  mes="检查地点不能空" size="50" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						检查情况:
					</td>
					<td>
						<textarea rows="3" name="wireSysRecord.checkcondition" id="checkcondition"><s:property value="wireSysRecord.checkcondition" /></textarea>
					</td>
				</tr>
				<tr>
					<td width="80px">
						检查人:
					</td>
					<td>
						<input type="text" name="wireSysRecord.checker" id="checker" value="<s:property value="wireSysRecord.checker" />"  isnull="no" dorder="4"  mes="检查人不能空" size="25" />
					</td>
				</tr>
				<tr>
					<td width="80px">
						备注:
					</td>
					<td>
						<textarea rows="3" name="wireSysRecord.remark" id="remark"><s:property value="wireSysRecord.remark" /></textarea>
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
