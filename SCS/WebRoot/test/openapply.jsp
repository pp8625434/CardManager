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
					航天科技集团公司企事业单位科研生产部位一次性对外开放申报表
				</caption>
				<tr>
					<td width="15%">
						接待单位盖章
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="recdeptsign" id="recdeptsign"  isnull="no" dorder="1" mes="请接待单位盖章签字" />
					</td>
					<td width="15%">
						填表日期
					</td>
					<td colspan="2">
						<input type="text" name="formdate" id="formdate" isnull="no"
							dorder="2" dtype="date(yyyy-MM-dd)" mes="填表日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						来访团组名称
					</td>
					<td colspan="3">
						<input type="text" name="cometeamname" id="cometeamname" isnull="no" dorder="3"  mes="来访团组名称不能为空" size="20"/>
					</td>
					<td>
						邀请单位
					</td>
					<td colspan="2">
						<input type="text" name="invitedept" id="invitedept" isnull="no" dorder="4"  mes="邀请单位不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						来访目的
					</td>
					<td colspan="3">
						<input type="text" name="comereasion" id="comereasion" isnull="no" dorder="5"  mes="来访目的不能为空" size="20"/>
					</td>
					<td>
						来访时间
					</td>
					<td colspan="2">
						<input type="text" name="comedate" id="comedate" isnull="no"
							dorder="6" dtype="date(yyyy-MM-dd)" mes="来访时间不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						接待单位联系
					</td>
					<td colspan="2">
						<input type="text" name="recdeptlink" id="recdeptlink" isnull="no" dorder="7"  mes="接待单位联系不能为空" size="20"/>
					</td>
					<td width="20%">
						联系电话
					</td>
					<td>
						<input type="text" name="linknumber" id="linknumber" isnull="no" dorder="8"  mes="联系电话不能为空" size="20"/>
					</td>
					<td width="15%">
						手机
					</td>
					<td width="15%">
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="9"  mes="手机不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td colspan="7">
						外宾简况（可附后）
					</td>
				</tr>
				<tr>
					<td>
						姓名（中文）
					</td>
					<td width="10%">
						姓名（英文）
					</td>
					<td width="10%">
						国籍（地区）
					</td>
					<td>
						单位、职务/职称及专业
					</td>
					<td>
						护照号码
					</td>
					<td>
						来访次数
					</td>
					<td>
						备注
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="chname1" id="chname1"  size="20"/>
					</td>
					<td>
						<input type="text" name="enname1" id="enname1"  size="20"/>
					</td>
					<td>
						<input type="text" name="contry1" id="contry1"  size="20"/>
					</td>
					<td>
						<input type="text" name="duty1" id="duty1"  size="20"/>
					</td>
					<td>
						<input type="text" name="cardnum1" id="cardnum1"  size="20"/>
					</td>
					<td>
						<input type="text" name="recnumber1" id="recnumber1"  size="20"/>
					</td>
					<td>
						<input type="text" name="remark1" id="remark1"  size="100"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="chname2" id="chname2"  size="20"/>
					</td>
					<td>
						<input type="text" name="enname2" id="enname2"  size="20"/>
					</td>
					<td>
						<input type="text" name="contry2" id="contry2"  size="20"/>
					</td>
					<td>
						<input type="text" name="duty2" id="duty2"  size="20"/>
					</td>
					<td>
						<input type="text" name="cardnum2" id="cardnum2"  size="20"/>
					</td>
					<td>
						<input type="text" name="recnumber2" id="recnumber2"  size="20"/>
					</td>
					<td>
						<input type="text" name="remark2" id="remark2"  size="100"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="chname3" id="chname3"  size="20"/>
					</td>
					<td>
						<input type="text" name="enname3" id="enname3"  size="20"/>
					</td>
					<td>
						<input type="text" name="contry3" id="contry3"  size="20"/>
					</td>
					<td>
						<input type="text" name="duty3" id="duty3"  size="20"/>
					</td>
					<td>
						<input type="text" name="cardnum3" id="cardnum3"  size="20"/>
					</td>
					<td>
						<input type="text" name="recnumber3" id="recnumber3"  size="20"/>
					</td>
					<td>
						<input type="text" name="remark3" id="remark3"  size="100"/>
					</td>
				</tr>
				
				<tr>
					<td colspan="7">
						申请对外开放部位简况（可附后）
					</td>
				</tr>
				<tr>
					<td>
						部位代号
					</td>
					<td>
						部位专业名称
					</td>
					<td>
						属何种部
					</td>
					<td colspan="2">
						拟参观产品及设备
					</td>
					<td colspan="2">
						参观目的
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="partnum1" id="partnum1"  size="20"/>
					</td>
					<td>
						<input type="text" name="major1" id="major1"  size="20"/>
					</td>
					<td>
						<input type="text" name="belongdept1" id="belongdept1"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="device1" id="device1"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="purpose1" id="purpose1"  size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="partnum2" id="partnum2"  size="20"/>
					</td>
					<td>
						<input type="text" name="major2" id="major2"  size="20"/>
					</td>
					<td>
						<input type="text" name="belongdept2" id="belongdept2"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="device2" id="device2"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="purpose2" id="purpose2"  size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="partnum3" id="partnum3"  size="20"/>
					</td>
					<td>
						<input type="text" name="major3" id="major3"  size="20"/>
					</td>
					<td>
						<input type="text" name="belongdept3" id="belongdept3"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="device3" id="device3"  size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="purpose3" id="purpose3"  size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						参观部位中不宜接触的产品、设备及拟采取的保密措施
					</td>
					<td colspan="6">
						<textarea rows="3" name="measure" id="measure"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
					</td>
					<td colspan="2">
						外事部门意见
					</td>
					<td colspan="2">
						保密部门意见
					</td>
					<td colspan="2">
						审批意见
					</td>
				</tr>
				<tr>
					<td>
						接待单位
					</td>
					<td colspan="2">
						<textarea rows="3" name="recforedept" id="recforedept"></textarea>
					</td>
					<td colspan="2">
						<textarea rows="3" name="recsecdept" id="recsecdept"></textarea>
					</td>
					<td colspan="2">
						<textarea rows="3" name="reccheck" id="reccheck"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						院、公司
					</td>
					<td colspan="2">
						<textarea rows="3" name="ygforedept" id="ygforedept"></textarea>
					</td>
					<td colspan="2">
						<textarea rows="3" name="ygsecdept" id="ygsecdept"></textarea>
					</td>
					<td colspan="2">
						<textarea rows="3" name="ygcheck" id="ygcheck"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						集团公司
					</td>
					<td colspan="6">
						<textarea rows="3" name="company" id="company"></textarea>
					</td>
				</tr>

				<tr>
					<td colspan="7">
						注：属何种部位栏填写对外开放部位、有控制对外开放部位、其他部位。
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
