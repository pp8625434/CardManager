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
					设备购置需求表
				</caption>
				<tr>
					<td width="7%">
						申请部门
					</td>
					<td colspan="2">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="1"  mes="申请部门不能为空" size="20"/>
					</td>
					<td width="11%">
						日期
					</td>
					<td colspan="2">
						<input type="text" name="applydate" id="applydate"  dtype="date(yyyy-MM-dd)"  isnull="no" dorder="2"  mes="日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						序号
					</td>
					<td width="22%">
						设备名称
					</td>
					<td width="20%">
						型号
					</td>
					<td>
						数量
					</td>
					<td width="20%">
						生产厂家
					</td>
					<td width="20%">
						预计金额
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num1" id="num1"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="devname1" id="devname1" size="20"/>
					</td>
					<td>
						<input type="text" name="version1" id="version1" size="20"/>
					</td>
					<td>
						<input type="text" name="number1" id="number1" dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="product1" id="product1" size="20"/>
					</td>
					<td>
						<input type="text" name="money1" id="money1" dtype="number(11,2)" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num2" id="num2"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="devname2" id="devname2" size="20"/>
					</td>
					<td>
						<input type="text" name="version2" id="version2" size="20"/>
					</td>
					<td>
						<input type="text" name="number2" id="number2" dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="product2" id="product2" size="20"/>
					</td>
					<td>
						<input type="text" name="money2" id="money2" dtype="number(11,2)" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num3" id="num3"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="devname3" id="devname3" size="20"/>
					</td>
					<td>
						<input type="text" name="version3" id="version3" size="20"/>
					</td>
					<td>
						<input type="text" name="number3" id="number3" dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="product3" id="product3" size="20"/>
					</td>
					<td>
						<input type="text" name="money3" id="money3" dtype="number(11,2)" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num4" id="num4"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="devname4" id="devname4" size="20"/>
					</td>
					<td>
						<input type="text" name="version4" id="version4" size="20"/>
					</td>
					<td>
						<input type="text" name="number4" id="number4" dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="product4" id="product4" size="20"/>
					</td>
					<td>
						<input type="text" name="money4" id="money4" dtype="number(11,2)" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num5" id="num5"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="devname5" id="devname5" size="20"/>
					</td>
					<td>
						<input type="text" name="version5" id="version5" size="20"/>
					</td>
					<td>
						<input type="text" name="number5" id="number5" dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="product5" id="product5" size="20"/>
					</td>
					<td>
						<input type="text" name="money5" id="money5" dtype="number(11,2)" size="20"/>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						购置原因（可分页）
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<textarea rows="3" name="puchersreasion" id="puchersreasion"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						本部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="deptopinion" id="deptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="leadersign" id="leadersign" isnull="no" dorder="8" mes="请本部门签字"/>
					</td>
				</tr>
			</table>
			
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
