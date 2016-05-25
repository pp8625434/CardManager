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
					系统配置变更审批表
				</caption>
				<tr>
					<td width="25%">
						系统配置变更申请人
					</td>
					<td width="25%">
						<input type="text" name="sqr" id="sqr" isnull="no" dorder="1"  mes="申请人不能空" size="20"/>
					</td>
					<td width="25%">
						申请日期
					</td>
					<td width="25%">
						<input type="text" name="sqrq" id="sqrq" isnull="no" dorder="2" dtype="date(yyyy-MM-dd)" mes="申请日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						变更设备或系统名称
					</td>
					<td colspan="3">
						<input type="text" name="sbmc" id="sbmc" isnull="no" dorder="3"  mes="设备或系统名称不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						配置变更原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="confreason" id="confreason"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						配置变更内容及影响情况分析
					</td>
					<td colspan="3">
						<textarea rows="3" name="confcontent" id="confcontent"></textarea>
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
						<hi:select type="radio" emu="yesNo" name="infosign" id="infosign" isnull="no" dorder="4" mes="请信息化管理部门签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="3">
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
						<hi:select type="radio" emu="yesNo" name="secsign" id="secsign" isnull="no" dorder="5" mes="请保密管理部门签字" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						注：是否需保密部门签署意见，信息化部门要在意见栏中明确指出。
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						配置变更操作结果及影响情况分析
					</td>
					<td colspan="3">
						<textarea rows="3" name="resultcondition" id="resultcondition"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						操作人员签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="operatorsign" id="operatorsign" isnull="no" dorder="6" mes="请操作员签字" />
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
