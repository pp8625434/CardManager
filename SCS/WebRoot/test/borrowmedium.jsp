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
					部门存储介质借用登记表
				</caption>
				<tr>
					<td width="5%">
						序号
					</td>
					<td width="7%">
						日期
					</td>
					<td width="5%">
						类型
					</td>
					<td width="9%">
						涉密级别
					</td>
					<td width="13%">
						保密编号
					</td>
					<td width="13%">
						连接设备编号/密级
					</td>
					<td width="9%">
						借用期限
					</td>
					<td width="11%">
						使用人签字
					</td>
					<td width="20%">
						返回时间及检查情况
					</td>
					<td width="8%">
						检查人
					</td>
				</tr>
				<tr>
					<td>
						1
					</td>
					<td>
						<input type="text" name="date1" id="date1" dtype="date(yyyy-MM-dd)" />
					</td>
					<td>
						<input type="text" name="type1" id="type1" size="20"/>
					</td>
					<td>
						<input type="text" name="secclass1" id="secclass1" size="20"/>
					</td>
					<td>
						<input type="text" name="secindex1" id="secindex1" size="20"/>
					</td>
					<td>
						<input type="text" name="linksec1" id="linksec1" size="50"/>
					</td>
					<td>
						<input type="text" name="lastdate1" id="lastdate1" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="usersign1" id="usersign1" />
					</td>
					<td>
						<input type="text" name="comedate1" id="comedate1" dtype="date(yyyy-MM-dd)" />
						<input type="text" name="checksolution1" id="checksolution1" size="100"/>
					</td>
					<td>
						<input type="text" name="checker1" id="checker1" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						2
					</td>
					<td>
						<input type="text" name="date2" id="date2" dtype="date(yyyy-MM-dd)" />
					</td>
					<td>
						<input type="text" name="type2" id="type2" size="20"/>
					</td>
					<td>
						<input type="text" name="secclass2" id="secclass2" size="20"/>
					</td>
					<td>
						<input type="text" name="secindex2" id="secindex2" size="20"/>
					</td>
					<td>
						<input type="text" name="linksec2" id="linksec2" size="50"/>
					</td>
					<td>
						<input type="text" name="lastdate2" id="lastdate2" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="usersign2" id="usersign2" />
					</td>
					<td>
						<input type="text" name="comedate2" id="comedate2" dtype="date(yyyy-MM-dd)" />
						<input type="text" name="checksolution2" id="checksolution2" size="100"/>
					</td>
					<td>
						<input type="text" name="checker2" id="checker2" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						3
					</td>
					<td>
						<input type="text" name="date3" id="date3" dtype="date(yyyy-MM-dd)" />
					</td>
					<td>
						<input type="text" name="type3" id="type3" size="20"/>
					</td>
					<td>
						<input type="text" name="secclass3" id="secclass3" size="20"/>
					</td>
					<td>
						<input type="text" name="secindex3" id="secindex3" size="20"/>
					</td>
					<td>
						<input type="text" name="linksec3" id="linksec3" size="50"/>
					</td>
					<td>
						<input type="text" name="lastdate3" id="lastdate3" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="usersign3" id="usersign3" />
					</td>
					<td>
						<input type="text" name="comedate3" id="comedate3" dtype="date(yyyy-MM-dd)" />
						<input type="text" name="checksolution3" id="checksolution3" size="100"/>
					</td>
					<td>
						<input type="text" name="checker3" id="checker3" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						4
					</td>
					<td>
						<input type="text" name="date4" id="date4" dtype="date(yyyy-MM-dd)" />
					</td>
					<td>
						<input type="text" name="type4" id="type4" size="20"/>
					</td>
					<td>
						<input type="text" name="secclass4" id="secclass4" size="20"/>
					</td>
					<td>
						<input type="text" name="secindex4" id="secindex4" size="20"/>
					</td>
					<td>
						<input type="text" name="linksec4" id="linksec4" size="50"/>
					</td>
					<td>
						<input type="text" name="lastdate4" id="lastdate4" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="usersign4" id="usersign4" />
					</td>
					<td>
						<input type="text" name="comedate4" id="comedate4" dtype="date(yyyy-MM-dd)" />
						<input type="text" name="checksolution4" id="checksolution4" size="100"/>
					</td>
					<td>
						<input type="text" name="checker4" id="checker4" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						5
					</td>
					<td>
						<input type="text" name="date5" id="date5" dtype="date(yyyy-MM-dd)" />
					</td>
					<td>
						<input type="text" name="type5" id="type5" size="20"/>
					</td>
					<td>
						<input type="text" name="secclass5" id="secclass5" size="20"/>
					</td>
					<td>
						<input type="text" name="secindex5" id="secindex5" size="20"/>
					</td>
					<td>
						<input type="text" name="linksec5" id="linksec5" size="50"/>
					</td>
					<td>
						<input type="text" name="lastdate5" id="lastdate5" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="usersign5" id="usersign5" />
					</td>
					<td>
						<input type="text" name="comedate5" id="comedate5" dtype="date(yyyy-MM-dd)" />
						<input type="text" name="checksolution5" id="checksolution5" size="100"/>
					</td>
					<td>
						<input type="text" name="checker5" id="checker5" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						6
					</td>
					<td>
						<input type="text" name="date6" id="date6" dtype="date(yyyy-MM-dd)" />
					</td>
					<td>
						<input type="text" name="type6" id="type6" size="20"/>
					</td>
					<td>
						<input type="text" name="secclass6" id="secclass6" size="20"/>
					</td>
					<td>
						<input type="text" name="secindex6" id="secindex6" size="20"/>
					</td>
					<td>
						<input type="text" name="linksec6" id="linksec6" size="50"/>
					</td>
					<td>
						<input type="text" name="lastdate6" id="lastdate6" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="usersign6" id="usersign6" />
					</td>
					<td>
						<input type="text" name="comedate6" id="comedate6" dtype="date(yyyy-MM-dd)" />
						<input type="text" name="checksolution6" id="checksolution6" size="100"/>
					</td>
					<td>
						<input type="text" name="checker6" id="checker6" size="20"/>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
