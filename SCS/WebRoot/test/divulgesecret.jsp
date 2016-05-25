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
					泄密事件报告登记表
				</caption>
				<tr>
					<td width="20%">
						填报部门或单位
					</td>
					<td colspan="4">
						<input type="text" name="formdept" id="formdept" isnull="no" dorder="1"  mes="填报部门或单位不能为空" size="20"/>
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
						<input type="text" name="finddate" id="finddate" isnull="no"
							dorder="2" dtype="date(yyyy-MM-dd)" mes="发现时间不能为空" />
					</td>
					<td width="20%">
						发现地点
					</td>
					<td width="20%">
						<input type="text" name="findplace" id="findplace" isnull="no" dorder="2"  mes="发现地点不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						发现人姓名
					</td>
					<td>
						<input type="text" name="finder" id="finder" isnull="no" dorder="3"  mes="发现人不能为空" size="20"/>
					</td>
					<td>
						发现人职务
					</td>
					<td>
						<input type="text" name="finderduty" id="finderduty" isnull="no" dorder="4"  mes="发现人职务不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						简要经过
					</td>
					<td colspan="3">
						<textarea rows="3" name="simplepro" id="simplepro"></textarea>
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
						<input type="text" name="happener" id="happener" isnull="no" dorder="5"  mes="当事人姓名不能为空" size="20"/>
					</td>
					<td>
						职务
					</td>
					<td>
						<input type="text" name="happenerduty" id="happenerduty" isnull="no" dorder="6"  mes="职务不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						发生时间
					</td>
					<td>
						<input type="text" name="happendate" id="happendate" isnull="no"
							dorder="7" dtype="date(yyyy-MM-dd)" mes="发生时间不能为空" />
					</td>
					<td>
						发生地点
					</td>
					<td>
						<input type="text" name="happenplace" id="happenplace" isnull="no" dorder="8"  mes="发生地点不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						泄密方式
					</td>
					<td>
						<input type="text" name="outsectype" id="outsectype" isnull="no" dorder="9"  mes="泄密方式不能为空" size="20"/>
					</td>
					<td>
						泄密密级
					</td>
					<td>
						<input type="text" name="outsec" id="outsec" isnull="no" dorder="10"  mes="泄密密级不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						简要情况
					</td>
					<td colspan="3">
						<textarea rows="3" name="outsimplepro" id="outsimplepro"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						造成或可能造成的危害
					</td>
					<td colspan="4">
						<textarea rows="3" name="effect" id="effect"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						已进行的查找工作情况
					</td>
					<td colspan="4">
						<textarea rows="3" name="findwork" id="findwork"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						已采取或拟采取的补救措施
					</td>
					<td colspan="4">
						<textarea rows="3" name="measure" id="measure"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门或单位意见
					</td>
					<td colspan="4">
						<textarea rows="3" name="deptopinion" id="deptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						领导签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="leadersign" id="leadersign" isnull="no" dorder="11" mes="请领导签字" />
					</td>
					<td>
						日期
					</td>
					<td>
						<input type="text" name="deptdate" id="deptdate" isnull="no"
							dorder="12" dtype="date(yyyy-MM-dd)" mes="领导签字日期不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						院保密委员会意见
					</td>
					<td colspan="4">
						<textarea rows="3" name="outsimplepro" id="outsimplepro"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						日期
					</td>
					<td colspan="3">
						<input type="text" name="secdate" id="secdate" isnull="no"
							dorder="13" dtype="date(yyyy-MM-dd)" mes="日期不能为空" />
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
