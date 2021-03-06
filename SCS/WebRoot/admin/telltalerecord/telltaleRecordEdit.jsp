<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/telltalerecord/js/telltaleRecord.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="telltaleRecord.id !=null">
			<div class="mainTitle">
				编辑系统失泄密记录
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建系统失泄密记录
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/telltalerecord/telltaleRecordSave.action" onsubmit="">
			<input type="hidden" name="telltaleRecord.id" id="id" value="<s:property value="telltaleRecord.id" />"/>
			<input type="hidden" name="telltaleRecord.version" id="version" value="<s:property value="telltaleRecord.version" />"/>
			<input type="hidden" name="telltaleRecord.firstperson" id="firstperson" value="<s:property value="telltaleRecord.firstperson" />"/>
			<input type="hidden" name="telltaleRecord.firstpid" id="firstpid" value="<s:property value="telltaleRecord.firstpid" />"/>
			<input type="hidden" name="telltaleRecord.firstsubdate" id="firstsubdate" value="<s:property value="telltaleRecord.firstsubdate" />"/>
			<table width="100%" class="bordered">
				<caption>
					系统失泄密记录表
				</caption>
				<tr>
					<td width="25%">
						事件类型
					</td>
					<td colspan="3">
						<hi:select emu="page_44_telltaleRecord" name="telltaleRecord.eventtype" id="eventtype"  isnull="no" dorder="1"  mes="事件类型不能为空"/>
					</td>
				</tr>
				<tr>
					<td>
						发生时间
					</td>
					<td colspan="3">
						<input type="text" name="telltaleRecord.happendate" id="happendate" value="<s:date name="telltaleRecord.happendate" format="yyyy-MM-dd hh:mm:ss"/>" isnull="no" dorder="2" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="发生时间不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						发生原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="telltaleRecord.happenreason" id="happenreason" isnull="no" dorder="3"  mes="发生原因不能为空"><s:property value="telltaleRecord.happenreason" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						影响范围
					</td>
					<td colspan="3">
						<textarea rows="3" name="telltaleRecord.effectrange" id="effectrange" isnull="no" dorder="4"  mes="影响范围不能为空"><s:property value="telltaleRecord.effectrange" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						补救措施
					</td>
					<td colspan="3">
						<textarea rows="3" name="telltaleRecord.measures" id="measures" isnull="no" dorder="5"  mes="补救措施不能为空"><s:property value="telltaleRecord.measures" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						最终结果
					</td>
					<td colspan="3">
						<textarea rows="3" name="telltaleRecord.result" id="result" isnull="no" dorder="6"  mes="最终结果不能为空"><s:property value="telltaleRecord.result" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						填报人
					</td>
					<td width="25%">
						<input type="text" name="telltaleRecord.informant" id="informant" value="<s:property value="telltaleRecord.informant" />" isnull="no" dorder="10"  mes="填报人不能为空" size="20"/>
						<input type="hidden" name="telltaleRecord.informantid" id="informantid" value="<s:property value="telltaleRecord.informantid" />"/>
					</td>
					<td width="25%">
						部门审核人
					</td>
					<td width="25%">
						<input type="text" name="telltaleRecord.checker" id="checker" value="<s:property value="telltaleRecord.checker" />" isnull="no" dorder="11"  mes="部门审核人不能为空" size="20"/>
						<input type="hidden" name="telltaleRecord.checkerid" id="checkerid" value="<s:property value="telltaleRecord.checkerid" />"/>
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
