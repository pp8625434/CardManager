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
					临时来华人员登记表
				</caption>
				<tr>
					<td width="15%">
						编号
					</td>
					<td colspan="3">
						<input type="text" name="num" id="num" isnull="no"
							dorder="1" mes="编号不能为空" size="20" />
					</td>
					<td width="10%">
						填报日期
					</td>
					<td colspan="3">
						<input type="text" name="formdate" id="formdate" isnull="no"
							dorder="2" dtype="date(yyyy-MM-dd)" mes="填报日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						接待单位名称
					</td>
					<td colspan="3">
						<input type="text" name="recdept" id="recdept" isnull="no" dorder="3"  mes="接待单位名称不能为空" size="20"/>
					</td>
					<td>
						接待单位涉密等级
					</td>
					<td colspan="3">
						<input type="text" name="recdeptsec" id="recdeptsec" isnull="no" dorder="4"  mes="接待单位涉密等级不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						来华人员国别（地区）
					</td>
					<td colspan="2">
						<input type="text" name="tochinacantry" id="tochinacantry" isnull="no" dorder="5"  mes="来华人员国别（地区）不能为空" size="20"/>
					</td>
					<td width="10%">
						外宾单位
					</td>
					<td colspan="2">
						<input type="text" name="wbdept" id="wbdept" isnull="no" dorder="6"  mes="外宾单位不能为空" size="20"/>
					</td>
					<td width="10%">
						外本人数
					</td>
					<td width="15%">
						<input type="text" name="wbnum" id="wbnum" isnull="no" dorder="7" dtype="number" mes="外宾人数不能为空" size="11"/>
					</td>
				</tr>
				<tr>
					<td>
						外本来访时间
					</td>
					<td colspan="7">
						<input type="text" name="datefrom" id="datefrom" isnull="no"
							dorder="8" dtype="date(yyyy-MM-dd)" mes="起始日期不能为空" />
						至
						<input type="text" name="dateend" id="dateend" isnull="no"
							dorder="9" dtype="date(yyyy-MM-dd)" mes="结束日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						上级审批部门
					</td>
					<td colspan="3">
						<input type="text" name="supchdept" id="supchdept" isnull="no" dorder="8"  mes="上级审批部门不能为空" size="20"/>
					</td>
					<td>
						审批文号
					</td>
					<td colspan="3">
						<input type="text" name="checknum" id="checknum" isnull="no" dorder="9"  mes="审批文号不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						洽谈交流地点
					</td>
					<td colspan="7">
						<input type="text" name="place" id="place" isnull="no" dorder="10"  mes="洽谈交流地点不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						接待参观接触部位
					</td>
					<td colspan="7">
						<input type="text" name="touchpart" id="touchpart" isnull="no" dorder="11"  mes="接待参观接触部位不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						接待及保密方案或措施
					</td>
					<td colspan="2">
						<input type="text" name="measure" id="measure" isnull="no" dorder="12"  mes="接待及保密方案或措施不能为空" size="20"/>
					</td>
					<td>
						安全保密责任人
					</td>
					<td colspan="2">
						<input type="text" name="secprinceil" id="secprinceil" isnull="no" dorder="13"  mes="安全保密责任人不能为空" size="20"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="14"  mes="联系电话不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						接待事由
					</td>
					<td colspan="7">
						<textarea rows="3" name="recreasion" id="recreasion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						外宾姓名
					</td>
					<td width="10%">
						译名
					</td>
					<td width="10%">
						服务部门职务职称
					</td>
					<td>
						国籍
					</td>
					<td>
						护照号码
					</td>
					<td width="10%">
						接待人姓名
					</td>
					<td colspan="2">
						职务职称
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="foreiname1" id="foreiname1"  size="20"/>
					</td>
					<td>
						<input type="text" name="othername1" id="othername1"  size="20"/>
					</td>
					<td>
						<input type="text" name="servicedept1" id="servicedept1"  size="20"/>
					</td>
					<td>
						<input type="text" name="cantry1" id="cantry1"  size="20"/>
					</td>
					<td>
						<input type="text" name="cardnum1" id="cardnum1"  size="20"/>
					</td>
					<td>
						<input type="text" name="recname1" id="recname1"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="duty1" id="duty1"  size="20"/>
					</td>
				</tr>

				<tr>
					<td>
						<input type="text" name="foreiname2" id="foreiname2"  size="20"/>
					</td>
					<td>
						<input type="text" name="othername2" id="othername2"  size="20"/>
					</td>
					<td>
						<input type="text" name="servicedept2" id="servicedept2"  size="20"/>
					</td>
					<td>
						<input type="text" name="cantry2" id="cantry2"  size="20"/>
					</td>
					<td>
						<input type="text" name="cardnum2" id="cardnum2"  size="20"/>
					</td>
					<td>
						<input type="text" name="recname2" id="recname2"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="duty2" id="duty2"  size="20"/>
					</td>
				</tr>

				<tr>
					<td>
						<input type="text" name="foreiname3" id="foreiname3"  size="20"/>
					</td>
					<td>
						<input type="text" name="othername3" id="othername3"  size="20"/>
					</td>
					<td>
						<input type="text" name="servicedept3" id="servicedept3"  size="20"/>
					</td>
					<td>
						<input type="text" name="cantry3" id="cantry3"  size="20"/>
					</td>
					<td>
						<input type="text" name="cardnum3" id="cardnum3"  size="20"/>
					</td>
					<td>
						<input type="text" name="recname3" id="recname3"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="duty3" id="duty3"  size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						填报此表说明
					</td>
					<td colspan="7">
						<p align="left">
							1.临时来华人员包括：临时聘请的外籍专家或到单位考察、学习、交流的境外机构、团组和个人；
						</p>
						<p align="left">
							2.接待事由一栏，填写访问、合资、合作、考察、学习、临时聘请或培训等事由。
						</p>
					</td>
				</tr>
				<tr>
					<td>
						填报单位
					</td>
					<td colspan="2">
						<input type="text" name="formdept" id="formdept" isnull="no" dorder="15"  mes="填报单位不能为空" size="20"/>
					</td>
					<td>
						填报人
					</td>
					<td colspan="2">
						<input type="text" name="former" id="former" isnull="no" dorder="16"  mes="填报人不能为空" size="20"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="formtelephone" id="formtelephone" isnull="no" dorder="17"  mes="联系电话不能为空" size="20"/>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
