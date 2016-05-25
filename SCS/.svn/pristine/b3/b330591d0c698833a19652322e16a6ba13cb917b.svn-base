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
			<table width="100%"  class="bordered">
				<caption>
					应用系统业务模块增加、删除、配置变更审批表
				</caption>
				<tr>
					<td width="16%">
						业务系统名称
					</td>
					<td colspan="5">
						<input type="text" name="sysname" id="sysname" isnull="no" dorder="1"  mes="业务系统名称不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						申请单位
					</td>
					<td width="16%">
						<input type="text" name="applydept" id="applydept" isnull="no" dorder="2"  mes="申请单位不能为空" size="20"/>
					</td>
					<td width="16%">
						申请人员
					</td>
					<td width="16%">
						<input type="text" name="sqr" id="sqr" isnull="no" dorder="3"  mes="申请人员不能空" size="20"/>
					</td>
					<td width="16%">
						申请日期
					</td>
					<td width="18%">
						<input type="text" name="sqrq" id="sqrq" isnull="no" dorder="4" dtype="date(yyyy-MM-dd)" mes="申请日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						业务系统变更原因
					</td>
					<td colspan="5">
						<textarea rows="3" name="alterreason" id="alterreason"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						增加（删除）模块名称/配置变更内容（包括业务模块的功能和流程，可附页）
					</td>
					<td colspan="5">
						<textarea rows="3" name="altercontent" id="altercontent"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="applydeptopinion" id="applydeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="applydeptsign" id="applydeptsign" isnull="no" dorder="5" mes="请申请部门签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="infodeptopinion" id="infodeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="infodeptsign" id="infodeptsign" isnull="no" dorder="6" mes="请信息化管理部门签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						配置变更操作结果（有系统管理员填写）
					</td>
					<td colspan="5">
						<textarea rows="3" name="opresult" id="opresult"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						系统管理员签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="managersign" id="managersign" isnull="no" dorder="7" mes="请系统管理员签字"/>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
