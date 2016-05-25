<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/common/validator.js"></script>
		<script type="text/javascript"
			src="${applicationScope.ctx}/uploader/jquery-1.8.0.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			本部拍摄活动审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<tr>
						<td colspan="2">
							承办部门：
						</td>
						<td colspan="2">
							<s:property value="meetSecrecyRecord.orgname"/>
						</td>
					</tr>
					<tr>
						<td width="25%">
							会议名称
						</td>
						<td width="25%">
							<s:property value="meetSecrecyRecord.meetname"/>
						</td>
						<td width="25%">
							密级
						</td>
						<td width="25%" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="BM-08-01hymj"
								name="meetSecrecyRecord.classification" />
						</td>
					</tr>
					<tr>
						<td>
							会议时间
						</td>
						<td>
							<s:date name="meetSecrecyRecord.meetdate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>
							会议地点
						</td>
						<td>
							<s:property value="meetSecrecyRecord.meetplace"/>
						</td>
					</tr>
					<tr>
						<td>
							会议内容
						</td>
						<td>
							<s:property value="meetSecrecyRecord.meetcontent"/>
						</td>
						<td>
							参会人员范围
						</td>
						<td>
							<s:property value="meetSecrecyRecord.meeters"/>
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
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.issecuritywork"  />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.sworkremark"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（2）是否加装手机信号屏蔽器。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.istelshield" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.telshieldremark"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（3）是否按要求存放手机。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.isstoretel"  />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.storetelremark"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（4）会议召开前是否对会场进行保密检查。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.scheck" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.scheckremark"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（5）会前是否宣布保密纪律。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.isdeclares" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.declareremark"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（6）是否严格控制参会人员范围，要求参会人员签到。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.issignin"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.signinremark"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（7）会场中是否带入具有无线上网功能的便携式计算机、无线话筒等具有无线发射传输功能的设备。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.iswiffi"  />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.wiffiremark"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							（8）是否有录音、录像情况，如有是否指定专人负责管理。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.istape"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.taperemark"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							录音负责人：<s:property value="meetSecrecyRecord.taper"/>
							录像负责人：<s:property value="meetSecrecyRecord.videor"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							（9）是否有涉密文件、资料，如有是否办理签发登记手续。会后清退收回情况。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.issecurityfile" />
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							共印<s:property value="meetSecrecyRecord.total"/>
							份，发放<s:property value="meetSecrecyRecord.giveout"/>
							份，收回<s:property value="meetSecrecyRecord.takeback"/>
							份，
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							回收保管负责人<s:property value="meetSecrecyRecord.takebacker"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							（10）会议休息期间，会议承办部门是否指定专人负责会场看守和保密工作。
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesOrNo"
								name="meetSecrecyRecord.isguard"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left">
							备注：<s:property value="meetSecrecyRecord.guardremark"/>
						</td>
					</tr>
					<tr>
						<td>
							承办部门会议保密负责人签字：
						</td>
						<td colspan="2" style="text-align: left">
							<hi:select disabled="true" type="radio" emu="yesNo"
								name="meetSecrecyRecord.bmname" />
						</td>
					</tr>
					<tr>
					    <td rowspan="2">保密委员会办公室审核意见</td>
					    <td colspan="3">
					    	<s:property value="meetSecrecyRecord.sofficedesc"/>
					    </td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;">
					    	<hi:select disabled="true"  type="radio" emu="yesNo" name="meetSecrecyRecord.sofficesign"  />
					    </td>
					</tr>
				</table>
				
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>