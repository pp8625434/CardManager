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
					布线系统季度检查记录表
				</caption>
				<tr>
					<td colspan="2">
						年份
					</td>
					<td width="20%">
						<input type="text" name="year" id="year" isnull="no" dorder="1"  mes="年份不能空" size="20"/>
					</td>
					<td colspan="2">
						季度
					</td>
					<td width="25%">
						<input type="text" name="quarter" id="quarter" isnull="no" dorder="2"  mes="季度不能空" dtype="number" size="1"/>
					</td>
				</tr>
				<tr>
					<td width="8%">
						序号
					</td>
					<td width="12%">
						检查日期
					</td>
					<td>
						检查地点
					</td>
					<td width="26%">
						检查情况
					</td>
					<td width="10%">
						检查人
					</td>
					<td>
						备注
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num1" id="num1"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate1" id="checkdate1"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace1" id="checkplace1"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution1" id="checksolution1"></textarea>
					</td>
					<td>
						<input type="text" name="checker1" id="checker1"   />
					</td>
					<td>
						<textarea rows="3" name="remark1" id="remark1"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num2" id="num2"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate2" id="checkdate2"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace2" id="checkplace2"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution2" id="checksolution2"></textarea>
					</td>
					<td>
						<input type="text" name="checker2" id="checker2"   />
					</td>
					<td>
						<textarea rows="3" name="remark2" id="remark2"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num3" id="num3"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate3" id="checkdate3"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace3" id="checkplace3"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution3" id="checksolution3"></textarea>
					</td>
					<td>
						<input type="text" name="checker3" id="checker3"   />
					</td>
					<td>
						<textarea rows="3" name="remark3" id="remark3"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num4" id="num4"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate4" id="checkdate4"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace4" id="checkplace4"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution4" id="checksolution4"></textarea>
					</td>
					<td>
						<input type="text" name="checker4" id="checker4"   />
					</td>
					<td>
						<textarea rows="3" name="remark4" id="remark4"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num5" id="num5"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate5" id="checkdate5"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace5" id="checkplace5"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution5" id="checksolution5"></textarea>
					</td>
					<td>
						<input type="text" name="checker5" id="checker5"   />
					</td>
					<td>
						<textarea rows="3" name="remark5" id="remark5"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num6" id="num6"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate6" id="checkdate6"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace6" id="checkplace6"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution6" id="checksolution6"></textarea>
					</td>
					<td>
						<input type="text" name="checker6" id="checker6"   />
					</td>
					<td>
						<textarea rows="3" name="remark6" id="remark6"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num7" id="num7"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate7" id="checkdate7"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace7" id="checkplace7"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution7" id="checksolution7"></textarea>
					</td>
					<td>
						<input type="text" name="checker7" id="checker7"   />
					</td>
					<td>
						<textarea rows="3" name="remark7" id="remark7"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num8" id="num8"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate8" id="checkdate8"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace8" id="checkplace8"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution8" id="checksolution8"></textarea>
					</td>
					<td>
						<input type="text" name="checker8" id="checker8"   />
					</td>
					<td>
						<textarea rows="3" name="remark8" id="remark8"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="num9" id="num9"  dtype="number" size="20"/>
					</td>
					<td>
						<input type="text" name="checkdate9" id="checkdate9"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
					<td>
						<input type="text" name="checkplace9" id="checkplace9"   />
					</td>
					<td>
						<textarea rows="3" name="checksolution9" id="checksolution9"></textarea>
					</td>
					<td>
						<input type="text" name="checker9" id="checker9"   />
					</td>
					<td>
						<textarea rows="3" name="remark9" id="remark9"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
