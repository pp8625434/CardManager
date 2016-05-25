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
					OA系统组织结构变更单
				</caption>
				<tr>
					<td width="25%">
						经办人
					</td>
					<td width="25%">
						<input type="text" name="agenter" id="agenter" isnull="no" dorder="1"  mes="经办人不能空" size="20"/>
					</td>
					<td width="25%">
						联系电话
					</td>
					<td width="25%">
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="2"  mes="联系电话不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						办理类型
					</td>
					<td>
						<input type="checkbox" name="deptadd" id="deptadd"/>部门新增或变更
					</td>
					<td colspan="2">
						名称：<input type="text" name="deptaddname" id="deptaddname"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="chushiadd" id="chushiadd"/>处室新增或变更
					</td>
					<td colspan="2">
						名称:
						<input type="text" name="csaddname" id="csaddname"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="qt" id="qt"/>其他
					</td>
					<td colspan="2">
						<input type="text" name="qtcontent" id="qtcontent"/>
					</td>
				</tr>
				<tr>
					<td>
						办理要求
					</td>
					<td colspan="3">
						<textarea rows="3" name="managerequire" id="managerequire"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请部门意见
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
						<hi:select type="radio" emu="yesNo" name="applydeptsign" id="applydeptsign" isnull="no" dorder="5" mes="请申请部门签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						办公室意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="officeopinion" id="officeopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="officesign" id="officesign" isnull="no" dorder="6" mes="请办公室签字" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						（如部门新增需提供部门机关代字、分发单排序。）
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						经营投资部意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="tzopinion" id="tzopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="tzsign" id="tzsign" isnull="no" dorder="7" mes="请经营投资部签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						办理情况
					</td>
					<td colspan="3">
						<textarea rows="3" name="managesolution" id="managesolution"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="managersign" id="managersign" isnull="no" dorder="9" mes="请签字" />
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
