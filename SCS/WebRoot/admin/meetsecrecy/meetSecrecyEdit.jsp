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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/meetsecrecy/js/meetSecrecy.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增本部涉密会议保密管理审批
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/meetsecrecy/meetSecrecySave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="meetSecrecy.id" id="id"/>
			<input type="hidden" name="meetSecrecy.version" id="version"/>
			<input type="hidden" name="meetSecrecy.username" id="username"/>
			<input type="hidden" name="meetSecrecy.userid" id="userid"/>
			<table width="100%" class="bordered">
				<tr>
				    <td width="25%">会议名称</td>
				    <td width="25%"><input type="text" name="meetSecrecy.meetname" id="meetname" isnull="no" mes="会议名称不能为空" size="25"/></td>
				    <td width="25%">承办部门</td>
				    <td width="25%"><input type="text" name="meetSecrecy.orgname" id="orgname" isnull="no" mes="承办部门不能为空" size="50"/></td>
				</tr>
				<tr>
				    <td>会议时间</td>
				    <td><input type="text" name="meetSecrecy.meetdate" id="meetdate" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="会议时间不能为空"/></td>
				    <td>密级</td> 
				    <td style="text-align:left;"><hi:select  type="radio" emu="BM-08-01hymj" name="meetSecrecy.classification" isnull="no"  mes="请选择密级" /></td>
				</tr>
				<tr>
				    <td>会议地点</td>
				    <td><input type="text" name="meetSecrecy.meetplace" id="meetplace" isnull="no"  mes="会议地点不能为空" size="50"/></td>
				    <td>保密负责人</td>
				    <td><input type="text" name="meetSecrecy.bmname" id="bmname" isnull="no" mes="保密负责人不能为空" size="25"/></td>
				</tr>
				<tr>
				    <td>会议内容和参加人员范围</td>
				    <td colspan="3"><textarea name="meetSecrecy.meetcontent" id="meetcontent" isnull="no" mes="会议内容和参加人员范围不能为空"></textarea></td>
				</tr>
				<tr>
					<td>会议期间承办部门应履行的保密职责</td>
					<td colspan="3">
						<p style="text-align:left;">在承办涉密会议过程中承办部门要负责做到以下几方面保密工作：</p >
				     	<p style="text-align:left;">（1）会议召开前应对会场进行保密检查，并加装手机信号屏蔽器。（2）原则不得使用外单位人员进行会议
				     	记录、录音、录像，如确有需要，应与其签订保密协议书。（3）会前宣布保密纪律：①参会人员会议记录涉密信息使用保密本并妥善保管；②参会
				     	人员妥善保管会议相关文件资料，会后及时清退；③会议期间所有进入会场人员应提前将手机存放于手机存储柜中，没有手机存储柜的，应将手机关机后卸掉电池
				     	。（4）严格控制参会人员，会场内不得留用无关人员。（5）会议中严禁带入具有无线上网功能的便携式计算机、无线话筒等无线功能设备。（6）会议使用的
				     	涉密文件、资料等载体，应按规定做好保密标识和编号，并指定专人按规定进行发放、传递、清退和销毁。（7）会议生成的信息载体按会议同等密级管理
				     	。（8）会议休息期间，指定专人负责会场看守和保密工作。（9）会议期间发生失、泄密事件，应采取必要措施，并立即报告。</p>
					</td>
				</tr>
				<tr>
				    <td rowspan="2">承办部门意见</td>
				    <td colspan="3"><textarea name="meetSecrecy.cborgopinion" id="cborgopinion" isnull="no" mes="承办部门意见不能为空"></textarea></td>
				</tr>
				<tr>
				    <td>领导签字：</td>
				    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="meetSecrecy.cbleader" isnull="no"  mes="请选择领导签字" />
				    	<input type="hidden" name="meetSecrecy.cbleader"/>
				    	<input type="hidden" name="meetSecrecy.cbleaderid"/>
				    	<input type="hidden" name="meetSecrecy.cbleaderdate"/>
				    </td>
				</tr>
				<tr>
				    <td rowspan="2">保密委员会办公室审核</td>
				    <td colspan="3"><textarea name="meetSecrecy.sofficedesc" id="sofficedesc" isnull="no" mes="保密委员会办公室审核不能为空"></textarea></td>
				</tr>
				<tr>
				    <td>签字：</td>
				    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="meetSecrecy.sofficesign" isnull="no"  mes="请选择保密委员会办公室签字" />
				    	<input type="hidden" name="meetSecrecy.sofficeid"/>
				    	<input type="hidden" name="meetSecrecy.sofficedate"/>
				    </td>
				</tr>
				<tr>
				    <td rowspan="2">院主管领导审批</td>
				    <td colspan="3"><textarea name="meetSecrecy.yleaderopinion" id="yleaderopinion" isnull="no" mes="院主管领导审批不能为空"></textarea></td>
				</tr>
				<tr>
				    <td>签字：</td>
				    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="meetSecrecy.yleader" isnull="no"  mes="请选择院主管领导签字" />
				    	<input type="hidden" name="meetSecrecy.yleaderid"/>
				    	<input type="hidden" name="meetSecrecy.yleaderdate"/>
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
