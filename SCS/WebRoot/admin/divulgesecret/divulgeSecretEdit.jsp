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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/divulgesecret/js/divulgeSecret.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增泄密事件报告登记
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/divulgesecret/divulgeSecretSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="divulgeSecret.id" id="id"/>
			<input type="hidden" name="divulgeSecret.version" id="version"/>
			<input type="hidden" name="divulgeSecret.username" id="username"/>
			<input type="hidden" name="divulgeSecret.userid" id="userid"/>
			<table width="100%" class="bordered">
				<caption>
					泄密事件报告登记表
				</caption>
				<tr>
					<td width="20%">
						填报部门或单位
					</td>
					<td colspan="4">
						<input type="text" name="divulgeSecret.deptname" id="deptname" isnull="no" dorder="1"  mes="填报部门或单位不能为空" size="25"/>
						<input type="hidden" name="divulgeSecret.deptid"/>
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						泄密事件发现过程
					</td>
					<td width="20%">
						发现时间
					</td>
					<td width="20%">
						<input type="text" name="divulgeSecret.finddate" id="finddate" isnull="no"
							dorder="2" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="发现时间不能为空" />
					</td>
					<td width="20%">
						发现地点
					</td>
					<td width="20%">
						<input type="text" name="divulgeSecret.findplace" id="findplace" isnull="no" dorder="2"  mes="发现地点不能为空" size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						发现人姓名
					</td>
					<td>
						<input type="text" name="divulgeSecret.finder" id="finder" isnull="no" dorder="3"  mes="发现人不能为空" size="25"/>
					</td>
					<td>
						发现人职务
					</td>
					<td>
						<input type="text" name="divulgeSecret.finderposition" id="finderposition" isnull="no" dorder="4"  mes="发现人职务不能为空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						简要经过
					</td>
					<td colspan="3">
						<textarea rows="3" name="divulgeSecret.briefproc" id="briefproc"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						泄密事件基本情况
					</td>
					<td>
						当事人姓名
					</td>
					<td>
						<input type="text" name="divulgeSecret.party" id="party" isnull="no" dorder="5"  mes="当事人姓名不能为空" size="25"/>
					</td>
					<td>
						职务
					</td>
					<td>
						<input type="text" name="divulgeSecret.partyposition" id="partyposition" isnull="no" dorder="6"  mes="职务不能为空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						发生时间
					</td>
					<td>
						<input type="text" name="divulgeSecret.happendate" id="happendate" isnull="no"
							dorder="7" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="发生时间不能为空" />
					</td>
					<td>
						发生地点
					</td>
					<td>
						<input type="text" name="divulgeSecret.happenplace" id="happenplace" isnull="no" dorder="8"  mes="发生地点不能为空" size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						泄密方式
					</td>
					<td>
						<input type="text" name="divulgeSecret.divulgetype" id="divulgetype" isnull="no" dorder="9"  mes="泄密方式不能为空" size="25"/>
					</td>
					<td>
						泄密密级
					</td>
					<td>
						<hi:select emu="BM-07-04psdj" name="divulgeSecret.divulgesec" id="divulgesec" isnull="no" dorder="10" mes="泄密密级不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						简要情况
					</td>
					<td colspan="3">
						<textarea rows="3" name="divulgeSecret.briefcondition" id="briefcondition"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						造成或可能造成的危害
					</td>
					<td colspan="4">
						<textarea rows="3" name="divulgeSecret.harm" id="harm"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						已进行的查找工作情况
					</td>
					<td colspan="4">
						<textarea rows="3" name="divulgeSecret.workcondition" id="workcondition"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						已采取或拟采取的补救措施
					</td>
					<td colspan="4">
						<textarea rows="3" name="divulgeSecret.measures" id="measures"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门或单位意见
					</td>
					<td colspan="4">
						<textarea rows="3" name="divulgeSecret.deptopinion" id="deptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						领导签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="divulgeSecret.deptleadersign" id="deptleadersign" isnull="no" dorder="11" mes="请领导签字" />
						<input type="hidden" name="divulgeSecret.deptleaderid"/>
					</td>
					<td>
						日期
					</td>
					<td>
						<input type="text" name="divulgeSecret.leadersigndate" id="leadersigndate" isnull="no"
							dorder="12" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="领导签字日期不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						院保密委员会意见
					</td>
					<td colspan="4">
						<textarea rows="3" name="divulgeSecret.sofficedesc" id="sofficedesc"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="divulgeSecret.sofficesign" id="sofficesign" isnull="no" dorder="11" mes="请签字" />
						<input type="hidden" name="divulgeSecret.sofficeid"/>
					</td>
					<td>
						日期
					</td>
					<td >
						<input type="text" name="divulgeSecret.sofficedate" id="sofficedate" isnull="no"
							dorder="13" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="日期不能为空" />
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
