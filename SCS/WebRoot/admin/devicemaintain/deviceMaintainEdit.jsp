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
			src="<%=request.getContextPath()%>/admin/devicemaintain/js/deviceMaintain.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<s:if test="deviceMaintain.id !=null">
			<div class="mainTitle">
				编辑设备维护、维修审批
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建设备维护、维修审批
			</div>
		</s:else>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/devicemaintain/deviceMaintainSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="deviceMaintain.id" id="id" value="<s:property value="deviceMaintain.id" />"/>
				<input type="hidden" name="deviceMaintain.version" id="version" value="<s:property value="deviceMaintain.version" />"/>
				<input type="hidden" name="deviceMaintain.firstperson"
					id="firstperson" value="<s:property value="deviceMaintain.firstperson" />"/>
				<input type="hidden" name="deviceMaintain.firstpid" id="firstpid" value="<s:property value="deviceMaintain.firstpid" />"/>
				<input type="hidden" name="deviceMaintain.firstsubdate"
					id="firstsubdate" value="<s:property value="deviceMaintain.firstsubdate" />"/>
				<table width="100%" class="bordered">
					<caption>
						设备维护、维护审批表
					</caption>
					<tr>
						<td width="16%">
							设备负责人
						</td>
						<td colspan="2">
							<input type="text" name="deviceMaintain.devprincipal" value="<s:property value="deviceMaintain.devprincipal" />"
								id="devprincipal" isnull="no" dorder="1" mes="设备负责人不能空"
								size="25" />
						</td>
						<td width="19%">
							所属部门
						</td>
						<td colspan="2">
							<input type="text" name="deviceMaintain.orgname" id="orgname" value="<s:property value="deviceMaintain.orgname" />"
								isnull="no" dorder="2" mes="所属部门不能为空" size="50" />
							<input type="hidden" name="deviceMaintain.orgid" value="<s:property value="deviceMaintain.orgid" />"/>
						</td>
					</tr>
					<tr>
						<td>
							设备名称
						</td>
						<td width="19%">
							<input type="text" name="deviceMaintain.devicename" value="<s:property value="deviceMaintain.devicename" />"
								id="devicename" isnull="no" dorder="3" mes="设备名称不能空" size="50" />
						</td>
						<td width="17%">
							设备编号
						</td>
						<td>
							<input type="text" name="deviceMaintain.deviceindex" value="<s:property value="deviceMaintain.deviceindex" />"
								id="deviceindex" isnull="no" dorder="4" mes="设备编号不能为空" size="25" />
						</td>
						<td width="13%">
							设备密级
						</td>
						<td width="16%">
							<hi:select emu="page_27_devsecurity"
								name="deviceMaintain.devicesecurity" id="devicesecurity"
								isnull="no" dorder="5" mes="请选择设备密级" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							设备负责人描述故障现象
						</td>
						<td colspan="5">
							<hi:select type="checkbox" emu="page_28_faultdescribe"
								name="deviceMaintain.faultdescribe" id="faultdescribe"
								isnull="no" dorder="6" mes="请选择故障现象" />
							<br />
							<div align="left">
								软件名称及来源：
								<input type="text" name="deviceMaintain.softname" id="softname" value="<s:property value="deviceMaintain.softname" />"/>
							</div>
							<br />
							<div align="left">
								口令及账户解锁、更改其他：
								<input type="text" name="deviceMaintain.alterelse"
									id="alterelse" value="<s:property value="deviceMaintain.alterelse" />"/>
							</div>
							<br />
							<div align="left">
								其他：
								<input type="text" name="deviceMaintain.descripelse"
									id="descripelse" value="<s:property value="deviceMaintain.descripelse" />"/>
							</div>

						</td>
					</tr>

					<tr>
						<td>
							设备负责人签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.devprincipalsign" id="devprincipalsign"
								isnull="no" dorder="6" mes="请设备负责人签字" />
							<input type="hidden" name="deviceMaintain.devprincipalid"
								id="devprincipalid" value="<s:property value="deviceMaintain.devprincipalid" />"/>
							<input type="hidden" name="deviceMaintain.devprincipaldate"
								id="devprincipaldate" value="<s:property value="deviceMaintain.devprincipaldate" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							注：口令及账户解锁、更改由申请人本人签字备案即可。
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							维修人员诊断情况
						</td>
						<td colspan="5">
							<hi:select type="checkbox" emu="page_28_diagnosecondition"
								name="deviceMaintain.diagnosecase" id="diagnosecase" isnull="no"
								dorder="8" mes="请选择诊断情况" />
							<br />
							<div align="left">
								其他情况：
								<input type="text" name="deviceMaintain.diagnoseelse"
									id="diagnoseelse" value="<s:property value="deviceMaintain.diagnoseelse" />"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							诊断人员签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.diagnosesign" id="diagnosesign" isnull="no"
								dorder="8" mes="请诊断人签字" />
							<input type="hidden" name="deviceMaintain.diagnoseid"
								id="diagnoseid" value="<s:property value="deviceMaintain.diagnoseid" />"/>
							<input type="hidden" name="deviceMaintain.diagnosedate"
								id="diagnosedate" value="<s:property value="deviceMaintain.diagnosedate" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							注：1、口令及账户解锁、更改、安装、删除软件及驱动和工位调整，不需维修人员诊断。2、需外来人员维修和需外送维修须填写《外来人员维修、送外维修审批表》
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请人部门意见
						</td>
						<td colspan="5">
							<textarea rows="3" name="deviceMaintain.applydeptopinion"
								id="applydeptopinion"><s:property value="deviceMaintain.applydeptopinion" /></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.applydeptsign" id="applydeptsign"
								isnull="no" dorder="9" mes="请签字" />
							<input type="hidden" name="deviceMaintain.applydeptsignid"
								id="applydeptsignid" value="<s:property value="deviceMaintain.applydeptsignid" />"/>
							<input type="hidden" name="deviceMaintain.applydeptsigndate"
								id="applydeptsigndate" value="<s:property value="deviceMaintain.applydeptsigndate" />"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="5">
							<textarea rows="3" name="deviceMaintain.infordeptopinion"
								id="infordeptopinion"><s:property value="deviceMaintain.infordeptopinion" /></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.infordeptsign" id="infordeptsign"
								isnull="no" dorder="10" mes="请签字" />
							<input type="hidden" name="deviceMaintain.infordeptsignid"
								id="infordeptsignid" value="<s:property value="deviceMaintain.infordeptsignid" />"/>
							<input type="hidden" name="deviceMaintain.infordeptsigndate"
								id="infordeptsigndate" value="<s:property value="deviceMaintain.infordeptsigndate" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							如更换硬盘，新硬盘序列号为
						</td>
						<td colspan="4">
							<input type="text" name="deviceMaintain.hardpanserialnum"
								id="hardpanserialnum" value="<s:property value="deviceMaintain.hardpanserialnum" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							如更换网卡，新网卡MAC地址为
						</td>
						<td colspan="4">
							<input type="text" name="deviceMaintain.mac" id="mac" value="<s:property value="deviceMaintain.mac" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							故障原因
						</td>
						<td colspan="4">
							<textarea rows="3" name="deviceMaintain.faultreason"
								id="faultreason"><s:property value="deviceMaintain.faultreason" /></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							维修地点
						</td>
						<td colspan="4">
							<input type="text" name="deviceMaintain.maintainplace"
								id="maintainplace" value="<s:property value="deviceMaintain.maintainplace" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							维修过程和方法
						</td>
						<td colspan="4">
							<textarea rows="3" name="deviceMaintain.processmethod"
								id="processmethod"><s:property value="deviceMaintain.processmethod" /></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							维修结果
						</td>
						<td colspan="4">
							<input type="text" name="deviceMaintain.maintainresult"
								id="maintainresult" value="<s:property value="deviceMaintain.maintainresult" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							重装的操作系统日期
						</td>
						<td colspan="4">
							<input type="text" name="deviceMaintain.resysdate" id="resysdate" 
								dtype="date(yyyy-MM-dd HH:mm:ss)" value="<s:date name="deviceMaintain.resysdate" format="yyyy-MM-dd hh:mm:ss"/>"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							维修人签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.maintainsign" id="maintainsign" isnull="no"
								dorder="12" mes="请签字" />
							<input type="hidden" name="deviceMaintain.maintainid"
								id="maintainid" value="<s:property value="deviceMaintain.maintainid" />"/>
							<input type="hidden" name="deviceMaintain.maintainsigndate"
								id="maintainsigndate" value="<s:property value="deviceMaintain.maintainsigndate" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							旁站陪同人员(设备负责人)签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.accompansign" id="accompansign" isnull="no"
								dorder="13" mes="请签字" />
							<input type="hidden" name="deviceMaintain.accompansigndate"
								id="accompansigndate" value="<s:property value="deviceMaintain.accompansigndate" />"/>
						</td>
					</tr>
					<tr>
						<td colspan="6">
							注：设备负责人负责将设备要素更新情况通知本部门台账管理人员。
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							交接记录（仅限于更换硬盘）
						</td>
						<td colspan="2">
							旧硬盘序列号为
						</td>
						<td colspan="3">
							<input type="text" name="deviceMaintain.ohardpanserialnum"
								id="ohardpanserialnum" value="<s:property value="deviceMaintain.ohardpanserialnum" />"/>
						</td>
					</tr>
					<tr>
						<td>
							移交人签字
						</td>
						<td>
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.transfersign" id="transfersign" isnull="no"
								dorder="14" mes="请移交人签字" />
							<input type="hidden" name="deviceMaintain.transferid"
								id="transferid" value="<s:property value="deviceMaintain.transferid" />"/>
							<input type="hidden" name="deviceMaintain.transferdate"
								id="transferdate" value="<s:property value="deviceMaintain.transferdate" />"/>
						</td>
						<td>
							接收人签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.recipientsign" id="recipientsign"
								isnull="no" dorder="15" mes="请接收人签字" />
							<input type="hidden" name="deviceMaintain.recipientid"
								id="recipientid" value="<s:property value="deviceMaintain.recipientid" />"/>
							<input type="hidden" name="deviceMaintain.recipientsigndate"
								id="recipientsigndate" value="<s:property value="deviceMaintain.recipientsigndate" />"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							信息档案部资产管理人员
						</td>
						<td colspan="2">
							台账是否更新
						</td>
						<td colspan="3">
							<hi:select type="radio" emu="yesOrNo"
								name="deviceMaintain.isupdate" id="isupdate" isnull="no"
								dorder="16" mes="台账是否更新" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							签字
						</td>
						<td colspan="3">
							<hi:select type="radio" emu="yesNo"
								name="deviceMaintain.managersign" id="managersign" isnull="no"
								dorder="17" mes="请资产管理人员签字" />
							<input type="hidden" name="deviceMaintain.managerid"
								id="managerid" value="<s:property value="deviceMaintain.managerid" />"/>
							<input type="hidden" name="deviceMaintain.managersigndate"
								id="managersigndate" value="<s:property value="deviceMaintain.managersigndate" />"/>
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
