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
					建立摆渡中心申请表
				</caption>
				<tr>
					<td width="25%">
						申请部门
					</td>
					<td width="25%">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="1"  mes="申请部门不能为空" size="20"/>
					</td>
					<td width="25%">
						处理信息最高密级
					</td>
					<td width="25%">
						<input type="text" name="bestsec" id="bestsec" isnull="no" dorder="2"  mes="处理信息最高密级不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						联系人
					</td>
					<td>
						<input type="text" name="linkman" id="linkman" isnull="no" dorder="3"  mes="联系人不能为空" size="20"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="4"  mes="联系电话不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						建立地点
					</td>
					<td>
						<input type="text" name="createplace" id="createplace" isnull="no" dorder="5"  mes="建立地点不能为空" size="20"/>
					</td>
					<td>
						申请时间
					</td>
					<td>
						<input type="text" name="applydate" id="applydate"  dtype="date(yyyy-MM-dd)"   isnull="no" dorder="6"  mes="申请日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						摆渡员姓名
					</td>
					<td>
						<input type="text" name="ferryer" id="ferryer" isnull="no" dorder="7"  mes="摆渡员姓名不能为空" size="20"/>
					</td>
					<td>
						摆渡员密级
					</td>
					<td>
						<input type="text" name="ferryersec" id="ferryersec" isnull="no" dorder="8"  mes="摆渡员密级不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						申请原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="applyreasion" id="applyreasion"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="applydept" id="applydept"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="applydeptsign" id="applydeptsign" isnull="no" dorder="9" mes="请申请部门签字" />
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
						<hi:select type="radio" emu="yesNo" name="infosign" id="infosign" isnull="no" dorder="11" mes="请信息化管理部门签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						安全保密管理员办理情况
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
						<hi:select type="radio" emu="yesNo" name="manager" id="manager" isnull="no" dorder="12" mes="请签字" />
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
