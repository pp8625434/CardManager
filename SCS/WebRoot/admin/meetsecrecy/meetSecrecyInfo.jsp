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
						<td width="25%">
							会议名称
						</td>
						<td width="25%">
							<s:property value="meetSecrecy.meetname"/>
						</td>
						<td width="25%">
							承办部门
						</td>
						<td width="25%">
							<s:property value="meetSecrecy.orgname"/>
						</td>
					</tr>
					<tr>
						<td>
							会议时间
						</td>
						<td>
							<s:date name="meetSecrecy.meetdate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>
							密级
						</td>
						<td style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="BM-08-01hymj"
								name="meetSecrecy.classification" />
						</td>
					</tr>
					<tr>
						<td>
							会议地点
						</td>
						<td>
							<s:property value="meetSecrecy.meetplace"/>
						</td>
						<td>
							保密负责人
						</td>
						<td>
							<s:property value="meetSecrecy.bmname"/>
						</td>
					</tr>
					<tr>
						<td>
							会议内容和参加人员范围
						</td>
						<td colspan="3">
							<s:property value="meetSecrecy.meetcontent"/>
						</td>
					</tr>
					<tr>
						<td>
							会议期间承办部门应履行的保密职责
						</td>
						<td colspan="3">
							<p style="text-align: left;">
								在承办涉密会议过程中承办部门要负责做到以下几方面保密工作：
							</p>
							<p style="text-align: left;">
								（1）会议召开前应对会场进行保密检查，并加装手机信号屏蔽器。（2）原则不得使用外单位人员进行会议
								记录、录音、录像，如确有需要，应与其签订保密协议书。（3）会前宣布保密纪律：①参会人员会议记录涉密信息使用保密本并妥善保管；②参会
								人员妥善保管会议相关文件资料，会后及时清退；③会议期间所有进入会场人员应提前将手机存放于手机存储柜中，没有手机存储柜的，应将手机关机后卸掉电池
								。（4）严格控制参会人员，会场内不得留用无关人员。（5）会议中严禁带入具有无线上网功能的便携式计算机、无线话筒等无线功能设备。（6）会议使用的
								涉密文件、资料等载体，应按规定做好保密标识和编号，并指定专人按规定进行发放、传递、清退和销毁。（7）会议生成的信息载体按会议同等密级管理
								。（8）会议休息期间，指定专人负责会场看守和保密工作。（9）会议期间发生失、泄密事件，应采取必要措施，并立即报告。
							</p>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							承办部门意见
						</td>
						<td colspan="3">
							<s:property value="meetSecrecy.cborgopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							领导签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="meetSecrecy.cbleader"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							保密委员会办公室审核
						</td>
						<td colspan="3">
							<s:property value="meetSecrecy.sofficedesc"/>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo"
								name="meetSecrecy.sofficesign" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							院主管领导审批
						</td>
						<td colspan="3">
							<s:property value="meetSecrecy.yleaderopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td colspan="2" style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="meetSecrecy.yleader" />
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