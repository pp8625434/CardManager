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
					更换USBKEY申请表
				</caption>
				<tr>
					<td width="25%">
						姓名
					</td>
					<td width="25%">
						<input type="text" name="name" id="name" isnull="no" dorder="1"  mes="姓名不能空" size="20"/>
					</td>
					<td width="25%">
						岗位
					</td>
					<td width="25%">
						<input type="text" name="position" id="position" isnull="no" dorder="2"  mes="岗位不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						所属部门、单位
					</td>
					<td>
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="3"  mes="所属部门、单位不能空" size="20"/>
					</td>
					<td>
						密级
					</td>
					<td>
						<input type="text" name="security" id="security" isnull="no" dorder="4"  mes="密级不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						工作地点
					</td>
					<td>
						<input type="text" name="workplace" id="workplace" isnull="no" dorder="5"  mes="工作地点不能空" size="20"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="6"  mes="联系电话不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						更换USBKEY原因
					</td>
					<td>
						更换原因
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="page_36_alterreasion" name="alterreasion" id="alterreasion" />
					</td>
				</tr>
				<tr>
					<td>
						具体情况描述
					</td>
					<td colspan="2">
						<textarea rows="3" name="solution" id="solution"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						申请人签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="applysign" id="applysign" isnull="no" dorder="7" mes="请申请人签字"/>
					</td>
					<td>
						申请时间
					</td>
					<td>
						<input type="text" name="sqrq" id="sqrq" isnull="no" dorder="8" dtype="date(yyyy-MM-dd)" mes="申请时间不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门负责人意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="leaderopinion" id="leaderopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="leadersign" id="leadersign" isnull="no" dorder="9" mes="请部门负责人签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="secdeptopinion" id="secdeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="secsign" id="secsign" isnull="no" dorder="10" mes="请保密管理部门签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="infodeptopinion" id="infodeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="infodeptsign" id="infodeptsign" isnull="no" dorder="11" mes="请信息化管理部门签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						安全保密管理员办理情况
					</td>
					<td colspan="3">
						<textarea rows="3" name="secmanagesolu" id="secmanagesolu"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="managersign" id="managersign" isnull="no" dorder="12" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td>
						备注
					</td>
					<td colspan="3">
						USBKEY丢失需要保密部门签字，USBKEY损坏不需要保密部门签字。
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
