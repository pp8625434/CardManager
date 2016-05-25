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
					来访人员登记簿（样本）
				</caption>
				<tr>
					<td colspan="8">
						<p align="left">
							妥&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;善&nbsp;&nbsp;&nbsp;&nbsp;保&nbsp;&nbsp;&nbsp;&nbsp;管
						</p>
						<p align="left">
							使用完毕部门归档
						</p>
					</td>
				</tr>

				<tr>
					<td colspan="8">
						<span>保密要害部门部位来访人员登记薄</span>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<div align="right">
							部门部位名称：
						</div>
					</td>
					<td colspan="4">
						<div align="left"><input type="text" name="deptname" id="deptname" isnull="no" dorder="1"  mes="部门部位名称不能空" size="20"/></div>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<div align="right">
							房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
						</div>
					</td>
					<td colspan="4">
						<div align="left"><input type="text" name="roomnum" id="roomnum" isnull="no" dorder="2"  mes="房间号不能空" size="20"/></div>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<div align="right">
							<input type="text" name="datebegin" id="datebegin" isnull="no" dorder="3" dtype="date(yyyy-MM-dd HH:mm)" mes="起始日期不能为空" />
						</div>
					</td>
					<td colspan="4">
						<div align="left">
							起
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<div align="right">
							<input type="text" name="dateend" id="dateend" isnull="no" dorder="4" dtype="date(yyyy-MM-dd HH:mm)" mes="结束日期不能为空" />
						</div>
					</td>
					<td colspan="4">
						<div align="left">
							至
						</div>
					</td>
				</tr>
				<tr>
					<td width="12%">
						日期
					</td>
					<td width="12%">
						来访人员单位
					</td>
					<td width="12%">
						姓名
					</td>
					<td width="12%">
						来访目的
					</td>
					<td width="12%">
						陪同人员
					</td>
					<td width="12%">
						来访时间
					</td>
					<td width="12%">
						离开时间
					</td>
					<td width="16%">
						备注
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="date1" id="date1"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="fromdept1" id="fromdept1" size="50"/>
					</td>
					<td>
						<input type="text" name="name1" id="name1"  size="50"/>
					</td>
					<td>
						<input type="text" name="purpose1" id="purpose1" size="50"/>
					</td>
					<td>
						<input type="text" name="company1" id="company1" size="50"/>
					</td>
					<td>
						<input type="text" name="comedate1" id="comedate1"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="leavedate1" id="leavedate1"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<textarea rows="3" name="remark1" id="remark1"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="date2" id="date2"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="fromdept2" id="fromdept2" size="50"/>
					</td>
					<td>
						<input type="text" name="name2" id="name2"  size="50"/>
					</td>
					<td>
						<input type="text" name="purpose2" id="purpose2" size="50"/>
					</td>
					<td>
						<input type="text" name="company2" id="company2" size="50"/>
					</td>
					<td>
						<input type="text" name="comedate2" id="comedate2"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="leavedate2" id="leavedate2"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<textarea rows="3" name="remark2" id="remark2"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="date3" id="date3"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="fromdept3" id="fromdept3" size="50"/>
					</td>
					<td>
						<input type="text" name="name3" id="name3"  size="50"/>
					</td>
					<td>
						<input type="text" name="purpose3" id="purpose3" size="50"/>
					</td>
					<td>
						<input type="text" name="company3" id="company3" size="50"/>
					</td>
					<td>
						<input type="text" name="comedate3" id="comedate3"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="leavedate3" id="leavedate3"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<textarea rows="3" name="remark3" id="remark3"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="date4" id="date4"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="fromdept4" id="fromdept4" size="50"/>
					</td>
					<td>
						<input type="text" name="name4" id="name4"  size="50"/>
					</td>
					<td>
						<input type="text" name="purpose4" id="purpose4" size="50"/>
					</td>
					<td>
						<input type="text" name="company4" id="company4" size="50"/>
					</td>
					<td>
						<input type="text" name="comedate4" id="comedate4"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="leavedate4" id="leavedate4"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<textarea rows="3" name="remark4" id="remark4"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="date5" id="date5"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="fromdept5" id="fromdept5" size="50"/>
					</td>
					<td>
						<input type="text" name="name5" id="name5"  size="50"/>
					</td>
					<td>
						<input type="text" name="purpose5" id="purpose5" size="50"/>
					</td>
					<td>
						<input type="text" name="company5" id="company5" size="50"/>
					</td>
					<td>
						<input type="text" name="comedate5" id="comedate5"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="leavedate5" id="leavedate5"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<textarea rows="3" name="remark5" id="remark5"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="date6" id="date6"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="fromdept6" id="fromdept6" size="50"/>
					</td>
					<td>
						<input type="text" name="name6" id="name6"  size="50"/>
					</td>
					<td>
						<input type="text" name="purpose6" id="purpose6" size="50"/>
					</td>
					<td>
						<input type="text" name="company6" id="company6" size="50"/>
					</td>
					<td>
						<input type="text" name="comedate6" id="comedate6"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<input type="text" name="leavedate6" id="leavedate6"  dtype="date(yyyy-MM-dd HH:mm)" />
					</td>
					<td>
						<textarea rows="3" name="remark6" id="remark6"></textarea>
					</td>
				</tr>
				
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
