<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/meetsecrecyrecord/js/meetSecrecyRecord.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<div class="mainTitle">
			新增涉密会议保密方案执行情况记录
		</div>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/meetsecrecyrecord/meetSecrecyRecordSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="meetSecrecyRecord.id" id="id" />
				<input type="hidden" name="meetSecrecyRecord.version" id="version" />
				<input type="hidden" name="meetSecrecyRecord.username" id="username" />
				<input type="hidden" name="meetSecrecyRecord.userid" id="userid" />
				<table width="100%" class="bordered">
					<tr>
						<td colspan="2">
							承办部门：
						</td>
						<td colspan="2">
							<input type="text" name="meetSecrecyRecord.orgname" id="orgname"
								isnull="no" mes="承办部门不能为空" size="50"/>
							<input type="hidden" name="meetSecrecyRecord.orgid"/>
						</td>
						
					</tr>
					<tr>
						<td width="25%">
							会议名称
						</td>
						<td width="25%">
							<input type="text" name="meetSecrecyRecord.meetname" id="meetname"
								isnull="no" mes="会议名称不能为空" size="25"/>
						</td>
						<td width="25%">
							密级
						</td>
						<td width="25%" style="text-align: left;">
							<hi:select type="radio" emu="BM-08-01hymj"
								name="meetSecrecyRecord.classification" isnull="no" mes="请选择密级" />
						</td>
					</tr>
					<tr>
						<td>
							会议时间
						</td>
						<td>
							<input type="text" name="meetSecrecyRecord.meetdate" id="meetdate"
								dtype="date(yyyy-MM-dd HH:mm:ss)" isnull="no" mes="会议时间不能为空"
								value="" />
						</td>
						<td>
							会议地点
						</td>
						<td>
							<input type="text" name="meetSecrecyRecord.meetplace" id="meetplace"
								isnull="no" mes="会议地点不能为空" />
						</td>
					</tr>
					<tr>
						<td>
							会议内容
						</td>
						<td>
							<input type="text" name="meetSecrecyRecord.meetcontent" id="meetcontent"
								isnull="no" mes="会议内容不能为空" />
						</td>
						<td>
							参会人员范围
						</td>
						<td>
							<input type="text" name="meetSecrecyRecord.meeters" id="meeters"
								isnull="no" mes="参会人员范围不能为空" />
						</td>
					</tr>
					<tr>
						<td rowspan="23">
							保密方案执行情况记录
						</td>
						<td rowspan="2">
							（1）承办会议部门是否指定专人负责保密工作。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.issecuritywork" isnull="no"
								mes="请选择承办会议部门是否指定专人负责保密工作" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.sworkremark" id="sworkremark" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（2）是否加装手机信号屏蔽器。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.istelshield" isnull="no"
								mes="请选择是否加装手机信号屏蔽器" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.telshieldremark" id="telshieldremark" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（3）是否按要求存放手机。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.isstoretel" isnull="no" mes="请选择是否按要求存放手机" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.storetelremark" id="storetelremark" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（4）会议召开前是否对会场进行保密检查。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.scheck" isnull="no"
								mes="请选择会议召开前是否对会场进行保密检查" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.scheckremark" id="scheckremark" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（5）会前是否宣布保密纪律。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.isdeclares" isnull="no" mes="请选择会前是否宣布保密纪律" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.declareremark" id="declareremark" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（6）是否严格控制参会人员范围，要求参会人员签到。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.issignin" isnull="no"
								mes="请选择是否严格控制参会人员范围，要求参会人员签到" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.signinremark" id="signinremark" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（7）会场中是否带入具有无线上网功能的便携式计算机、无线话筒等具有无线发射传输功能的设备。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.iswiffi" isnull="no"
								mes="请选择会场中是否带入具有无线上网功能的便携式计算机、无线话筒等具有无线发射传输功能的设备" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.wiffiremark" id="wiffiremark" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							（8）是否有录音、录像情况，如有是否指定专人负责管理。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.istape" isnull="no"
								mes="请选择是否有录音、录像情况，如有是否指定专人负责管理" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.taperemark" id="taperemark" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							录音负责人：
							<input type="text" name="meetSecrecyRecord.taper" id="taper" />
							录像负责人：
							<input type="text" name="meetSecrecyRecord.videor" id="videor" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							（9）是否有涉密文件、资料，如有是否办理签发登记手续。会后清退收回情况。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.issecurityfile" isnull="no"
								mes="请选择是否有涉密文件、资料，如有是否办理签发登记手续。会后清退收回情况" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							共印
							<input type="text" name="meetSecrecyRecord.total" id="total"
								dtype="number" />
							份，发放
							<input type="text" name="meetSecrecyRecord.giveout" id="giveout" dtype="number" />
							份，收回
							<input type="text" name="meetSecrecyRecord.takeback" id="takeback" dtype="number" />
							份，
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							回收保管负责人
							<input type="text" name="meetSecrecyRecord.takebacker" id="takebacker" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（10）会议休息期间，会议承办部门是否指定专人负责会场看守和保密工作。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.isguard" isnull="no"
								mes="请选择会议休息期间，会议承办部门是否指定专人负责会场看守和保密工作" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：
							<input type="text" name="meetSecrecyRecord.guardremark" id="guardremark" />
						</td>
					</tr>
					<tr>
						<td>
							承办部门会议保密负责人签字：
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select type="radio" emu="yesNo"
								name="meetSecrecyRecord.bmname" isnull="no"
								mes="请选择承办部门会议保密负责人签字" />
							<input type="hidden" name="meetSecrecyRecord.bmnameid"/>
							<input type="hidden" name="meetSecrecyRecord.bmsigndate"/>
						</td>
					</tr>
					<tr>
					    <td rowspan="2">保密委员会办公室审核意见</td>
					    <td colspan="3"><textarea name="meetSecrecyRecord.sofficedesc" id="sofficedesc" ></textarea></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="meetSecrecyRecord.sofficesign" isnull="no"  mes="请选择保密委员会办公室签字" />
					    	<input type="hidden" name="meetSecrecyRecord.sofficeid"/>
					    	<input type="hidden" name="meetSecrecyRecord.sofficedate"/>
					    </td>
					</tr>
				</table>
				<br />
				<div class="btnBox">
					<input type="submit" id="addBut" value="保存" class="btnInput1" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消"
						onclick="cancelBtn();" />
				</div>
			</form>
		</div>
	</body>
</html>
