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
					互联网信息发布审批表
				</caption>
				<tr>
					<td width="25%">
						申请部门或单位
					</td>
					<td width="25%">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="1"  mes="申请部门/单位不能为空" size="20"/>
					</td>
					<td width="25%">
						申请人
					</td>
					<td width="25%">
						<input type="text" name="applyer" id="applyer" isnull="no" dorder="2"  mes="申请人不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						发布信息内容
					</td>
					<td>
						<input type="text" name="pushcontent" id="pushcontent" isnull="no" dorder="3"  mes="发布信息内容不能为空" size="20"/>
					</td>
					<td>
						申请日期
					</td>
					<td>
						<input type="text" name="applydate" id="applydate"  dtype="date(yyyy-MM-dd)"   isnull="no" dorder="4"  mes="申请日期不能为空" />
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
					<td rowspan="3">
						保密管理部门审查意见
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
					<td colspan="3">
						（仅在院、航天电子公司互联网上发布信息时，保密处填写意见。）
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						证券部审查意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="zqdeptopinion" id="zqdeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="zqsign" id="zqsign" isnull="no" dorder="11" mes="请证券部签字" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						（仅在院、航天电子公司互联网上发布信息时，证券部填写意见。）
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						院主管领导意见
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
						<hi:select type="radio" emu="yesNo" name="leader" id="leader" isnull="no" dorder="12" mes="请院主管领导签字" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						（仅在院、航天电子公司互联网上发布信息时，填写此意见。）
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						信息化管理部门执行说明
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
					<td colspan="3">
						（仅在院、航天电子公司互联网上发布信息时，填写此意见。）
					</td>
				</tr>
				<tr>
					<td>
						备注
					</td>
					<td colspan="3">
						在院、航天电子公司互联网上发布信息的，此表由信息化管理部门留存备案；对外发送邮件信息的此表由业务部门留存；摆渡邮件审批在数据摆渡系统中，由导数员负责发送。
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
