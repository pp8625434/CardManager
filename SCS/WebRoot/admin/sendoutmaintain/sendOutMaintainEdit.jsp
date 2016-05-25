<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/sendoutmaintain/js/sendOutMaintain.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增外来人员维修、送外维修审批
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/sendoutmaintain/sendOutMaintainSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="sendOutMaintain.id" id="id"/>
			<input type="hidden" name="sendOutMaintain.version" id="version"/>
			<input type="hidden" name="sendOutMaintain.firstperson" id="firstperson"/>
			<input type="hidden" name="sendOutMaintain.firstpid" id="firstpid"/>
			<input type="hidden" name="sendOutMaintain.firstsubdate" id="firstsubdate"/>
			<table width="100%" class="bordered">
				<caption>
					外来人员维修、送外维修审批表
				</caption>
				<tr>
					<td width="20%">
						申请人
					</td>
					<td width="16%">
						<input type="text" name="sendOutMaintain.applicant" id="applicant" isnull="no" dorder="1"  mes="申请人不能空" size="25"/>
					</td>
					<td width="16%">
						设备责任人
					</td>
					<td width="16%">
						<input type="text" name="sendOutMaintain.devprincipal" id="devprincipal" isnull="no" dorder="2"  mes="设备责任人不能空" size="25"/>
					</td>
					<td width="16%">
						维修方式
					</td>
					<td width="16%">
						<hi:select  emu="page_38_maintainType" name="sendOutMaintain.maintaintype" id="maintaintype" isnull="no" dorder="3"  mes="请选择维修方式" />
					</td>
				</tr>
				<tr>
					<td>
						设备编号
					</td>
					<td colspan="2">
						<input type="text" name="sendOutMaintain.deviceindex" id="deviceindex" isnull="no" dorder="4"  mes="设备编号不能为空" size="25"/>
					</td>
					<td>
						设备密级
					</td>
					<td colspan="2">
						<hi:select  emu="page_27_devsecurity" name="sendOutMaintain.devicesecurity" id="devicesecurity" isnull="no" dorder="5" mes="请选择设备密级" />
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
						<input type="text" name="sendOutMaintain.outlanderdept" id="outlanderdept"  size="50"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否与外来人员单位签订保密协议
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="sendOutMaintain.issignsecret1" id="issignsecret1" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否有相关资质
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="sendOutMaintain.isaptitude1" id="isaptitude1" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						拟定旁站陪同人
					</td>
					<td colspan="3">
						<input type="text" name="sendOutMaintain.assignaccompan" id="assignaccompan"  size="25"/>
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
						<input type="text" name="sendOutMaintain.sendoutdept" id="sendoutdept"  size="50"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否拆除存储介质和固件
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="sendOutMaintain.isremovedisk" id="isremovedisk" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否与外送单位签订保密协议
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="sendOutMaintain.issignsecret2" id="issignsecret2" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送外单位是否具有相关资质
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="sendOutMaintain.isaptitude2" id="isaptitude2" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						拟定送修人
					</td>
					<td colspan="3">
						<input type="text" name="sendOutMaintain.assignsender" id="assignsender"  size="25"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="sendOutMaintain.infordeptopinion" id="infordeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="sendOutMaintain.infordeptsign" id="infordeptsign" isnull="no" dorder="6" mes="请信息化管理部门签字" />
						<input type="hidden" name="sendOutMaintain.infordeptsignid"/>
						<input type="hidden" name="sendOutMaintain.infordeptsigndate"/>
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
						<hi:select type="radio" emu="yesNo" name="sendOutMaintain.deviceuser" id="deviceuser" />
						<input type="hidden" name="sendOutMaintain.deviceuserid"/>
						<input type="hidden" name="sendOutMaintain.divuserdate"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送修人接收签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="sendOutMaintain.senderreceive" id="senderreceive" />
						<input type="hidden" name="sendOutMaintain.senderid" id="senderid"/>
						<input type="hidden" name="sendOutMaintain.senderdate" id="senderdate"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送修时间
					</td>
					<td colspan="3">
						<input type="text" name="sendOutMaintain.senddate" id="senddate"  dtype="date(yyyy-MM-dd HH:mm:ss)"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						返回时间
					</td>
					<td colspan="3">
						<input type="text" name="sendOutMaintain.returndate" id="returndate"  dtype="date(yyyy-MM-dd HH:mm:ss)"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否与外来人员或送外维修单位人员签订保密协议
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesOrNo" name="sendOutMaintain.issignsecret3" id="issignsecret3" isnull="no" dorder="7" mes="是否与外来人员或送外维修单位人员签订保密协议"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						故障原因
					</td>
					<td colspan="4">
						<textarea rows="3" name="sendOutMaintain.faultreason" id="faultreason"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修过程和方法
					</td>
					<td colspan="4">
						<textarea rows="3" name="sendOutMaintain.processmethod" id="processmethod"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修结果
					</td>
					<td colspan="4">
						<textarea rows="3" name="sendOutMaintain.maintainresult" id="maintainresult" isnull="no" dorder="9" mes="请填写维修结果"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修人员签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="sendOutMaintain.maintainsign" id="maintainsign" isnull="no" dorder="10" mes="请维修人员签字"/>
						<input type="hidden" name="sendOutMaintain.maintainsignid"/>
						<input type="hidden" name="sendOutMaintain.maintainsigndate"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						旁站陪同人员签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="sendOutMaintain.accompansign" id="accompansign" isnull="no" dorder="11" mes="请旁站陪同人员签字"/>
						<input type="hidden" name="sendOutMaintain.accompanid"/>
						<input type="hidden" name="sendOutMaintain.accompansigndate"/>
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
						<hi:select type="radio" emu="yesNo" name="sendOutMaintain.receive" id="receive" isnull="no" dorder="12" mes="请设备使用人签字"/>
						<input type="hidden" name="sendOutMaintain.receivedate"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送修人移交设备签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="sendOutMaintain.sendertransfer" id="sendertransfer" isnull="no" dorder="13" mes="请送修人签字"/>
						<input type="hidden" name="sendOutMaintain.transferdate"/>
					</td>
				</tr>
				<tr>
					<td>
						备注
					</td>
					<td colspan="5">
						<textarea rows="3" name="sendOutMaintain.remark" id="remark"></textarea>
					</td>
				</tr>
			</table>
			<br />
			<div class="btnBox">
				<input type="submit" id="addBut" value="保存"  class="btnInput1" />
				&nbsp;
				<input type="button" class="btnInput2 chancleButton" value="取消" 
					onclick="cancelBtn();"/>
			</div>
		</form>
		</div>
	</body>
</html>
