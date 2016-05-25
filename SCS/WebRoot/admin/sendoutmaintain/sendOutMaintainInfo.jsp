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
			外来人员维修、送外维修审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						外来人员维修、送外维修审批表
					</caption>
					<tr>
						<td width="20%">
							申请人
						</td>
						<td width="16%">
							<s:property value="sendOutMaintain.applicant"/>
						</td>
						<td width="16%">
							设备责任人
						</td>
						<td width="16%">
							<s:property value="sendOutMaintain.devprincipal"/>
						</td>
						<td width="16%">
							维修方式
						</td>
						<td width="16%">
							<hi:select disabled="true"  emu="page_38_maintainType" name="sendOutMaintain.maintaintype" id="sendOutMaintain.maintaintype"  />
						</td>
					</tr>
					<tr>
						<td>
							设备编号
						</td>
						<td colspan="2">
							<s:property value="sendOutMaintain.deviceindex"/>
						</td>
						<td>
							设备密级
						</td>
						<td colspan="2">
							<hi:select disabled="true"  emu="page_27_devsecurity" name="sendOutMaintain.devicesecurity" id="sendOutMaintain.devicesecurity"  />
						</td>
					</tr>
					<tr>
						<td rowspan="4">
							外来人员维修涉密设备
						</td>
						<td colspan="2">
							外来人员单位
						</td>
						<td colspan="3">
							<s:property value="sendOutMaintain.outlanderdept"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							是否与外来人员单位签订保密协议
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="sendOutMaintain.issignsecret1" id="sendOutMaintain.issignsecret1" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							是否有相关资质
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="sendOutMaintain.isaptitude1" id="sendOutMaintain.isaptitude1" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							拟定旁站陪同人
						</td>
						<td colspan="3">
							<s:property value="sendOutMaintain.assignaccompan"/>
						</td>
					</tr>
					<tr>
						<td rowspan="5">
							送外维修涉密设备
						</td>
						<td colspan="2">
							送外单位
						</td>
						<td colspan="3">
							<s:property value="sendOutMaintain.sendoutdept"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							是否拆除存储介质和固件
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="sendOutMaintain.isremovedisk" id="sendOutMaintain.isremovedisk" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							是否与外送单位签订保密协议
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="sendOutMaintain.issignsecret2" id="sendOutMaintain.issignsecret2" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							送外单位是否具有相关资质
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="sendOutMaintain.isaptitude2" id="sendOutMaintain.isaptitude2" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							拟定送修人
						</td>
						<td colspan="3">
							<s:property value="sendOutMaintain.assignsender"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="5">
							<s:property value="sendOutMaintain.infordeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sendOutMaintain.infordeptsign" id="sendOutMaintain.infordeptsign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="4">
							送外维修涉密设备情况
						</td>
						<td colspan="2">
							设备使用人移交设备签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sendOutMaintain.deviceuser" id="sendOutMaintain.deviceuser" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							送修人接收签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sendOutMaintain.senderreceive" id="sendOutMaintain.senderreceive" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							送修时间
						</td>
						<td colspan="3">
							<s:date name="sendOutMaintain.senddate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							返回时间
						</td>
						<td colspan="3">
							<s:date name="sendOutMaintain.returndate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							是否与外来人员或送外维修单位人员签订保密协议
						</td>
						<td colspan="4">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="sendOutMaintain.issignsecret3" id="sendOutMaintain.issignsecret3" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							故障原因
						</td>
						<td colspan="4">
							<s:property value="sendOutMaintain.faultreason"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							维修过程和方法
						</td>
						<td colspan="4">
							<s:property value="sendOutMaintain.processmethod"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							维修结果
						</td>
						<td colspan="4">
							<s:property value="sendOutMaintain.maintainresult"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							维修人员签字
						</td>
						<td colspan="4">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sendOutMaintain.maintainsign" id="sendOutMaintain.maintainsign" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							旁站陪同人员签字
						</td>
						<td colspan="4">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sendOutMaintain.accompansign" id="sendOutMaintain.accompansign"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							送外维修涉密设备交接情况
						</td>
						<td colspan="2">
							设备使用人接收设备签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sendOutMaintain.receive" id="sendOutMaintain.receive"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							送修人移交设备签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="sendOutMaintain.sendertransfer" id="sendOutMaintain.sendertransfer" />
						</td>
					</tr>
					<tr>
						<td>
							备注
						</td>
						<td colspan="5">
							<s:property value="sendOutMaintain.remark"/>
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