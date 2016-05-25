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
					用户权限变更审批表
				</caption>
				<tr>
					<td width="25%">
						姓名
					</td>
					<td width="25%">
						<input type="text" name="name" id="name" isnull="no" dorder="1"  mes="姓名不能为空" size="20"/>
					</td>
					<td width="25%">
						岗位
					</td>
					<td width="25%">
						<input type="text" name="position" id="position" isnull="no" dorder="2"  mes="岗位不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						部门
					</td>
					<td>
						<input type="text" name="dept" id="dept" isnull="no" dorder="3"  mes="部门不能为空" size="20"/>
					</td>
					<td>
						密级
					</td>
					<td>
						<input type="text" name="security" id="security" isnull="no" dorder="4"  mes="密级不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						工作地点
					</td>
					<td>
						<input type="text" name="workplace" id="workplace" isnull="no" dorder="5"  mes="工作地点不能为空" size="20"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="6"  mes="联系电话不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						权限变更原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterreasion" id="alterreasion"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						应用系统权限变更内容
					</td>
					<td>
						应用系统名称
					</td>
					<td>
						现有用户权限
					</td>
					<td>
						变更后的用户权限
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="sysname1" id="sysname1" size="20"/>
					</td>
					<td>
						<input type="text" name="nowuserauto1" id="nowuserauto1" size="20"/>
					</td>
					<td>
						<input type="text" name="afterauto1" id="afterauto1" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="sysname2" id="sysname2" size="20"/>
					</td>
					<td>
						<input type="text" name="nowuserauto2" id="nowuserauto2" size="20"/>
					</td>
					<td>
						<input type="text" name="afterauto2" id="afterauto2" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="sysname3" id="sysname3" size="20"/>
					</td>
					<td>
						<input type="text" name="nowuserauto3" id="nowuserauto3" size="20"/>
					</td>
					<td>
						<input type="text" name="afterauto3" id="afterauto3" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						申请人签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="applysign" id="applysign" isnull="no" dorder="7" mes="请申请人签字" />
					</td>
					<td>
						申请时间
					</td>
					<td>
						<input type="text" name="sqrq" id="sqrq" isnull="no" dorder="8" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="申请时间不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门领导意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="applydeptopinion" id="applydeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="leadersign" id="leadersign" isnull="no" dorder="9" mes="请部门领导签字" />
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
					<td rowspan="3">
						信息化管理部门操作说明
					</td>
					<td colspan="2">
						是否完成操作
					</td>
					<td>
						<hi:select type="radio" emu="yesOrNo" name="isfinish" id="isfinish" isnull="no" dorder="11" mes="是否完成操作"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否将完成操作结果告知申请人
					</td>
					<td>
						<hi:select type="radio" emu="yesOrNo" name="isinform" id="isinform" isnull="no" dorder="12" mes="是否将完成操作结果告知申请人"/>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="infosign" id="infosign" isnull="no" dorder="13" mes="请信息化管理部门签字" />
					</td>
				</tr>
				<tr>
					<td>
						备注
					</td>
					<td colspan="3">
						此表审批完成后，交信息化管理部门处理
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
