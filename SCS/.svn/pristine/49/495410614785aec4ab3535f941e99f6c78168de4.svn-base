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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/secretpcout/js/secretPcOut.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新建借用专供外出携带涉密便携式计算机审批
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/secretpcout/secretPcOutSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="secretPcOut.id" id="id"/>
			<input type="hidden" name="secretPcOut.version" id="version"/>
			<input type="hidden" name="secretPcOut.firstperson" id="firstperson"/>
			<input type="hidden" name="secretPcOut.firstpid" id="firstpid"/>
			<input type="hidden" name="secretPcOut.firstsubdate" id="firstsubdate"/>
			
			<table width="100%" class="bordered">
				<caption>
					借用专供外出携带涉密便携式计算机审批表
				</caption>
				<tr>
					<td width="12%">
						所在部门
					</td>
					<td colspan="2">
						<input type="text" name="secretPcOut.deptname" id="deptname" isnull="no" dorder="1"  mes="所在部门不能为空" size="25"/>
						<input type="hidden" name="secretPcOut.deptid"/>
					</td>
					<td width="11%">
						使用人
					</td>
					<td colspan="2">
						<input type="text" name="secretPcOut.user" id="user" isnull="no" dorder="2"  mes="使用人不能空" size="25"/>
					</td>
					<td width="11%">
						外出地点
					</td>
					<td colspan="2">
						<input type="text" name="secretPcOut.outplace" id="outplace" isnull="no" dorder="3"  mes="外出地点不能空" size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						设备编号
					</td>
					<td colspan="2">
						<input type="text" name="secretPcOut.devicenum" id="devicenum" isnull="no" dorder="4"  mes="设备编号不能为空" size="25"/>
					</td>
					<td>
						设备密级
					</td>
					<td colspan="2">
						<hi:select  emu="page_27_devsecurity" name="secretPcOut.devicesecurity" id="devicesecurity" isnull="no" dorder="5" mes="请选择设备密级" />
					</td>
					<td>
						是否存储涉密信息
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="secretPcOut.iscontentsecret" id="iscontentsecret" isnull="no" dorder="6" mes="是否存储涉密信息"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						使用介质
					</td>
					<td width="11%">
						光盘来源
					</td>
					<td colspan="7">
						<input type="text" name="secretPcOut.diskfrom" id="diskfrom"  size="50"/>
					</td>
				</tr>
				<tr>
					<td>
						移动介质编号
					</td>
					<td width="11%">
						<input type="text" name="secretPcOut.mediumnum" id="mediumnum" size="25"/>
					</td>
					<td>
						密级
					</td>
					<td width="11%">
						<hi:select emu="page_27_devsecurity" name="secretPcOut.mediumsecurity" id="mediumsecurity"  />
					</td>
					<td width="11%">
						单向导入盒编号
					</td>
					<td>
						<input type="text" name="secretPcOut.impboxnum" id="impboxnum" size="25"/>
					</td>
					<td width="11%">
						导向盒密级
					</td>
					<td width="11%">
						<hi:select emu="page_27_devsecurity" name="secretPcOut.impboxsecurity" id="impboxsecurity"/>
					</td>
				</tr>
				<tr>
					<td>
						借用事由及拟处理信息内容
					</td>
					<td colspan="8">
						<textarea rows="3" name="secretPcOut.borrowreason" id="borrowreason"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						申请开放端口
					</td>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_applyPort" name="secretPcOut.applyopenport" id="applyopenport"  />
						<br/>
						<div align="left">
							其他开放端口：<input type="text" name="secretPcOut.openportelse" id="openportelse">
						</div>
						<br/>
						<div align="left">
							需安装软件：<input type="text" name="secretPcOut.applyinstallsoft" id="applyinstallsoft">
						</div>
						
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密责任书
					</td>
					<td colspan="8">
						<p align="left">
							一、遵守国家和院有关便携式计算机的保密管理规定。
						</p>
						<p align="left">
							二、对便携式计算机进行妥善保管，不私自转借他人，不随意丢放。
						</p>
						<p align="left">
							三、未经批准，不在该涉密便携式计算机内存储涉密信息，不超越密级使用该便携式计算机。
						</p>
						<p align="left">
							四、在涉密便携式计算机内处理涉密信息时，应直接在专用涉密移动存储介质（涉密移动存储介质的密级不得高于涉密便携式计算机的密级）中处理。
						</p>
						<p align="left">
							五、不在该涉密便携式计算机上连接互联网专用介质。
						</p>
						<p align="left">
							六、严禁将该涉密便携式计算机以任何方式接入国际互联网。
						</p>
						<p align="left">
							七、未经审批不得私自安装软件及设备、更改该便携式计算机设置。
						</p>
						<p align="left">
							八、在规定时间内返还，并按规定办理返回检查手续。
						</p>
						<p align="left">
							九、因未采取保密措施，致使该便携式计算机丢失，出现泄密的，使用人承担相应保密责任。
						</p>
						<p align="left">
							十、如有违犯，愿意按规定接受处罚。
						</p>
						<p align="left">
							本人已清晰阅读并了解上述条款的含义，保证遵守上述条款的约束。
						</p>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="7">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.usersign" id="usersign" isnull="no" dorder="7" mes="请在保密责任书上签字" />
						<input type="hidden" name="secretPcOut.userid" id="userid"/>
						<input type="hidden" name="secretPcOut.usersigndate" id="usersigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门领导意见
					</td>
					<td colspan="8">
						<textarea rows="3" name="secretPcOut.deptleaderopinion" id="deptleaderopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="7">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.deptleadersign" id="deptleadersign" isnull="no" dorder="8" mes="请部门领导签字"/>
						<input type="hidden" name="secretPcOut.deptleaderid" id="deptleaderid"/>
						<input type="hidden" name="secretPcOut.leadersigndate" id="leadersigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						安全产品升级及开放端口情况
					</td>
					<td colspan="2">
						安全产品是否升级
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="secretPcOut.isupdate" id="isupdate" isnull="no" dorder="9" mes="安全产品是否升级"/>
					</td>
					<td colspan="2">
						版本号
					</td>
					<td colspan="2">
						<input type="text" name="secretPcOut.updateversion" id="updateversion"/>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_applyPort" name="secretPcOut.openport" id="openport"  />
						<br/>
						<div align="left">
							其他开放端口：<input type="text" name="secretPcOut.portelse" id="portelse">
						</div>
						<br/>
						<div align="left">
							需安装软件：<input type="text" name="secretPcOut.installsoft" id="installsoft">
						</div>
						
					</td>
				</tr>
				<tr>
					
					<td colspan="2">
						操作人员签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.operator1" id="operator1" isnull="no" dorder="10" mes="请操作人员签字"/>
						<input type="hidden" name="secretPcOut.operatorid1" id="operatorid1"/>
						<input type="hidden" name="secretPcOut.operatordate1" id="operatordate1"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						领用人签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.receiver" id="receiver" isnull="no" dorder="11" mes="请领用人签字"/>
						<input type="hidden" name="secretPcOut.receiverid" id="receiverid"/>
						<input type="hidden" name="secretPcOut.receiverdate" id="receiverdate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						返回检查情况
					</td>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_checkSolution" name="secretPcOut.checkcondition" id="checkcondition"  />
						<br/>
						<div align="left">
							其他情况：<input type="text" name="secretPcOut.conditionelse" id="conditionelse"/>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						设备移交人签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.transfersign" id="transfersign" isnull="no" dorder="12" mes="请设备移交人签字"/>
						<input type="hidden" name="secretPcOut.transferid" id="transferid"/>
						<input type="hidden" name="secretPcOut.transferdate" id="transferdate"/>
					</td>
					<td colspan="2">
						检查人签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.checkersign" id="checkersign" isnull="no" dorder="13" mes="请检查人签字"/>
						<input type="hidden" name="secretPcOut.checkerid" id="checkerid"/>
						<input type="hidden" name="secretPcOut.checkersigndate" id="checkersigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息清除及端口关闭情况
					</td>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_portCloseSolution" name="secretPcOut.portcondition" id="portcondition"  />
						<br/>
						<div align="left">
							其他关闭情况：<input type="text" name="secretPcOut.closeSolutionelse" id="closeSolutionelse"/>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						操作人签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.operator2" id="operator2" isnull="no" dorder="14" mes="请操作人签字"/>
						<input type="hidden" name="secretPcOut.operatorid2" id="operatorid2"/>
						<input type="hidden" name="secretPcOut.operatordate2" id="operatordate2"/>
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						保密管理部门意见
					</td>
					<td colspan="8">
						<textarea rows="3" name="secretPcOut.securityopinion" id="securityopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="secretPcOut.securitysign" id="securitysign" isnull="no" dorder="15" mes="请保密管理部门签字" />
						<input type="hidden" name="secretPcOut.securityid" id="securityid"/>
						<input type="hidden" name="secretPcOut.securitysigndate" id="securitysigndate"/>
					</td>
				</tr>
				<tr>
					<td colspan="8">
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
