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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/notsecretpcout/js/notSecretPcOut.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="notSecretPcOut.id !=null">
			<div class="mainTitle">
				编辑非涉密便携式计算机携带外出审批
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建非涉密便携式计算机携带外出审批
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/notsecretpcout/notSecretPcOutSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="notSecretPcOut.id" id="id" value="<s:property value="notSecretPcOut.id" />"/>
			<input type="hidden" name="notSecretPcOut.version" id="version" value="<s:property value="notSecretPcOut.version" />"/>
			<input type="hidden" name="notSecretPcOut.firstperson" id="firstperson" value="<s:property value="notSecretPcOut.firstperson" />"/>
			<input type="hidden" name="notSecretPcOut.firstpid" id="firstpid" value="<s:property value="notSecretPcOut.firstpid" />"/>
			<input type="hidden" name="notSecretPcOut.firstsubdate" id="firstsubdate" value="<s:property value="notSecretPcOut.firstsubdate" />"/>
			
			<table width="100%" class="bordered">
				<caption>
					非涉密便携式计算机携带外出审批表
				</caption>
				<tr>
					<td width="21%">
						所在部门
					</td>
					<td colspan="2">
						<input type="text" name="notSecretPcOut.deptname" id="deptname" value="<s:property value="notSecretPcOut.deptname" />" isnull="no" dorder="1"  mes="所在部门不能为空" size="25"/>
						<input type="hidden" name="notSecretPcOut.deptid" value="<s:property value="notSecretPcOut.deptid" />"/>
					</td>
					<td width="15%">
						借用人
					</td>
					<td colspan="2">
						<input type="text" name="notSecretPcOut.borrower" id="borrower" value="<s:property value="notSecretPcOut.borrower" />" isnull="no" dorder="2"  mes="借用人不能空" size="25"/>
						
					</td>
				</tr>
				<tr>
					<td>
						外出地点
					</td>
					<td colspan="2">
						<input type="text" name="notSecretPcOut.outplace" id="outplace" value="<s:property value="notSecretPcOut.outplace" />" isnull="no" dorder="3"  mes="外出地点不能空" size="50"/>
					</td>
					<td>
						设备编号
					</td>
					<td colspan="2">
						<input type="text" name="notSecretPcOut.devicenum" id="devicenum" value="<s:property value="notSecretPcOut.devicenum" />" isnull="no" dorder="4"  mes="设备编号不能为空" size="25"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						使用介质
					</td>
					<td colspan="2">
						光盘来源
					</td>
					<td colspan="3">
						<input type="text" name="notSecretPcOut.diskfrom" id="diskfrom" value="<s:property value="notSecretPcOut.diskfrom" />" size="50"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						移动介质编号
					</td>
					<td>
						<input type="text" name="notSecretPcOut.mediumnum" id="mediumnum" value="<s:property value="notSecretPcOut.mediumnum" />" size="25"/>
					</td>
					<td width="15%">
						是否为非密
					</td>
					<td width="26%">
						<hi:select type="radio" emu="yesOrNo" name="notSecretPcOut.issecret" id="issecret" />
					</td>
				</tr>
				<tr>
					<td>
						借用事由及拟处理信息内容
					</td>
					<td colspan="5">
						<textarea rows="3" name="notSecretPcOut.borrowreason" id="borrowreason"><s:property value="notSecretPcOut.borrowreason" /></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密责任书
					</td>
					<td colspan="5">
						<p align="left">
							请借用人遵守如下规定：
						</p>
						<p align="left">
							一、遵守国家和院有关便携式计算机的保密管理规定。
						</p>
						<p align="left">
							二、对便携式计算机进行妥善保管，不私自转借他人，不随意丢放。
						</p>
						<p align="left">
							三、不在该便携式计算机内处理、存储涉密信息。
						</p>
						<p align="left">
							四、不在办公用便携式计算机上连接互联网专用介质。
						</p>
						<p align="left">
							五、严禁以上任何方式接入国际互联网。
						</p>
						<p align="left">
							六、严禁将该便携式计算机与涉密设备及涉密信息系统连接。
						</p>
						<p align="left">
							七、在规定时间内返还，并按规定办理返回检查手续。
						</p>
						<p align="left">
							八、如有违犯，愿意按规定接受处罚。
						</p>
						<p align="left">
							本人已清晰阅读并了解上述条款的含义，保证遵守上述条款的约束。
						</p>
					</td>
				</tr>
				<tr>
					<td width="15%">
						借用人签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="notSecretPcOut.borrowersign" id="borrowersign" isnull="no" dorder="5" mes="请借用人签字"/>
						<input type="hidden" name="notSecretPcOut.borrowerid" value="<s:property value="notSecretPcOut.borrowerid" />"/>
						<input type="hidden" name="notSecretPcOut.borrowersigndate" value="<s:property value="notSecretPcOut.borrowersigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门领导意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="notSecretPcOut.deptleaderopinion" id="deptleaderopinion"><s:property value="notSecretPcOut.deptleaderopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="notSecretPcOut.deptleadersign" id="deptleadersign" isnull="no" dorder="6" mes="请部门领导签字"/>
						<input type="hidden" name="notSecretPcOut.deptleaderid" value="<s:property value="notSecretPcOut.deptleaderid" />"/>
						<input type="hidden" name="notSecretPcOut.leadersigndate" value="<s:property value="notSecretPcOut.leadersigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						设备移交情况
					</td>
					<td colspan="5">
						<textarea rows="3" name="notSecretPcOut.devtransfer" id="devtransfer"><s:property value="notSecretPcOut.devtransfer" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						借用人领用签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="notSecretPcOut.receivesign" id="receivesign" isnull="no" dorder="7" mes="请借用人领用签字"/>
						<input type="hidden" name="notSecretPcOut.receivesigndate" value="<s:property value="notSecretPcOut.receivesigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						返回检查及归还情况
					</td>
					<td colspan="5">
						<textarea rows="3" name="notSecretPcOut.returncondition" id="returncondition"><s:property value="notSecretPcOut.returncondition" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						检查人签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="notSecretPcOut.checkersign" id="checkersign" isnull="no" dorder="8" mes="请检查人签字"/>
						<input type="hidden" name="notSecretPcOut.checkerid" value="<s:property value="notSecretPcOut.checkerid" />"/>
						<input type="hidden" name="notSecretPcOut.checkersigndate" value="<s:property value="notSecretPcOut.checkersigndate" />"/>
					</td>
				</tr>
				<tr>
					<td>
						设备管理人员接收设备签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="notSecretPcOut.devmanager" id="devmanager" isnull="no" dorder="9" mes="请设备管理人员签字"/>
						<input type="hidden" name="notSecretPcOut.devmanagerid" value="<s:property value="notSecretPcOut.devmanagerid" />"/>
						<input type="hidden" name="notSecretPcOut.devmansigndate" value="<s:property value="notSecretPcOut.devmansigndate" />"/>
					</td>
				</tr>
				<tr>
					<td colspan="5">
						注：如有违规情况移交保密管理部门进行处理。
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						保密管理部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="notSecretPcOut.securityopinion" id="securityopinion"><s:property value="notSecretPcOut.securityopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="notSecretPcOut.securitysign" id="securitysign" isnull="no" dorder="10" mes="请保密管理部门签字" />
						<input type="hidden" name="notSecretPcOut.securityid" value="<s:property value="notSecretPcOut.securityid" />"/>
						<input type="hidden" name="notSecretPcOut.securitysigndate" value="<s:property value="notSecretPcOut.securitysigndate" />"/>
					</td>
				</tr>
				<tr>
					<td colspan="5">
						注：如无违规情况不用保密管理部门填写意见。
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
