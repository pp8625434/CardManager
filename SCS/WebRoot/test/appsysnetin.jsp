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
					应用系统入网审批表
				</caption>
				<tr>
					<td width="25%">
						应用系统名称
					</td>
					<td width="25%">
						<input type="text" name="sysname" id="sysname" isnull="no" dorder="1"  mes="应用系统名称不能空" size="20"/>
					</td>
					<td width="25%">
						项目负责人
					</td>
					<td width="25%">
						<input type="text" name="projprincipal" id="projprincipal" isnull="no" dorder="2"  mes="项目负责人不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						业务主管部门
					</td>
					<td>
						<input type="text" name="zgdept" id="zgdept" isnull="no" dorder="3"  mes="业务主管部门不能空" size="20"/>
					</td>
					<td>
						部门负责人
					</td>
					<td>
						<input type="text" name="deptprincipal" id="deptprincipal" isnull="no" dorder="4"  mes="部门负责人不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						系统开发单位
					</td>
					<td>
						<input type="text" name="devepdept" id="devepdept" isnull="no" dorder="5"  mes="系统开发单位不能空" size="50"/>
					</td>
					<td>
						开发单位联系人
					</td>
					<td>
						<input type="text" name="deveper" id="deveper" isnull="no" dorder="6"  mes="开发单位联系人不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						开发单位资质
					</td>
					<td colspan="3">
						<input type="text" name="deveperzz" id="deveperzz" isnull="no" dorder="7"  mes="开发单位资质不能空" size="100"/>
					</td>
				</tr>
				<tr>
					<td>
						系统密级
					</td>
					<td>
						<input type="text" name="syssecrity" id="syssecrity" isnull="no" dorder="8"  mes="系统密级不能空" size="20"/>
					</td>
					<td>
						接入位置
					</td>
					<td>
						<input type="text" name="inplace" id="inplace" isnull="no" dorder="9"  mes="接入位置不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						适用范围
					</td>
					<td colspan="3">
						<input type="text" name=applyscope id="applyscope" isnull="no" dorder="10"  mes="适用范围不能空" size="100"/>
					</td>
				</tr>
				<tr>
					<td>
						系统功能简述
					</td>
					<td colspan="3">
						<textarea rows="3" name="sysfunction" id="sysfunction"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						项目立项与验收资料
					</td>
					<td colspan="3">
						<textarea rows="3" name="prolx" id="prolx"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						系统运行所需软硬件环境
					</td>
					<td colspan="3">
						<textarea rows="3" name="softsolution" id="softsolution"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						系统安全策略
					</td>
					<td colspan="3">
						<textarea rows="3" name="safestrategy" id="safestrategy"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						（附件详述系统符合保密标准BMB17与BMB22的安全策略设置）
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						立项部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="lxdeptopinion" id="lxdeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="lxdeptsign" id="lxdeptsign" isnull="no" dorder="11" mes="请立项部门签字"/>
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
						<hi:select type="radio" emu="yesNo" name="secsign" id="secsign" isnull="no" dorder="12" mes="请保密管理部门签字" />
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
						<hi:select type="radio" emu="yesNo" name="infodeptsign" id="infodeptsign" isnull="no" dorder="18" mes="请签字"/>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
