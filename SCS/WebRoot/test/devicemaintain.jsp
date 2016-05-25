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
					设备维护、维护审批表
				</caption>
				<tr>
					<td width="16%">
						设备负责人
					</td>
					<td colspan="2">
						<input type="text" name="sbfzr" id="sbfzr" isnull="no" dorder="1"  mes="设备负责人不能空" size="20"/>
					</td>
					<td width="19%">
						所属部门
					</td>
					<td colspan="2">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="2"  mes="所属部门不能为空" size="50" />
					</td>
				</tr>
				<tr>
					<td>
						设备名称
					</td>
					<td width="19%">
						<input type="text" name="sbmc" id="sbmc" isnull="no" dorder="3"  mes="设备名称不能空" size="20"/>
					</td>
					<td width="17%">
						设备编号
					</td>
					<td>
						<input type="text" name="devnum" id="devnum" isnull="no" dorder="4"  mes="设备编号不能为空" />
					</td>
					<td width="13%">
						设备密级
					</td>
					<td width="16%">
						<hi:select  emu="page_27_devsecurity" name="devsecurity" id="devsecurity" isnull="no" dorder="5" mes="请选择设备密级" />
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						设备负责人描述故障现象
					</td>
					<td colspan="5">
						<hi:select type="checkbox" emu="page_28_faultdescribe" name="faultdescribe" id="faultdescribe" onclick="sbms('点击其他调用方法');" isnull="no" dorder="6" mes="请选择故障现象"/>
					</td>
				</tr>
				
				<tr>
					<td>
						设备负责人签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="sbfzrsign" id="sbfzrsign" isnull="no" dorder="6" mes="请设备负责人签字"/>
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
						<hi:select type="checkbox" emu="page_28_diagnosecondition" name="diagnosecondition" id="diagnosecondition" onclick="sbms('点击其他调用方法');" isnull="no" dorder="8" mes="请选择诊断情况"/>
					</td>
				</tr>
				<tr>
					<td>
						诊断人员签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="zdrysign" id="zdrysign" isnull="no" dorder="8" mes="请诊断人签字"/>
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
						<textarea rows="3" name="applydeptopinion" id="applydeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="sqrbmsign" id="sqrbmsign" isnull="no" dorder="9" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="infodeptopinion" id="infodeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="xxhglsign" id="xxhglsign" isnull="no" dorder="10" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						如更换硬盘，新硬盘序列号为
					</td>
					<td colspan="4">
						<input type="text" name="disknum" id="disknum"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						如更换网卡，新网卡MAC地址为
					</td>
					<td colspan="4">
						<input type="text" name="mac" id="mac"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						故障原因
					</td>
					<td colspan="4">
						<textarea rows="3" name="faultreason" id="faultreason"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修地点
					</td>
					<td colspan="4">
						<input type="text" name="repairplace" id="repairplace"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修过程和方法
					</td>
					<td colspan="4">
						<textarea rows="3" name="processmethod" id="processmethod"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修结果
					</td>
					<td colspan="4">
						<input type="text" name="repairresult" id="repairresult"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						重装的操作系统日期
					</td>
					<td colspan="4">
						<input type="text" name="resysdate" id="resysdate" dtype="date(yyyy-MM-dd HH:mm:ss)"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修人签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="wxrsign" id="wxrsign" isnull="no" dorder="12" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						旁站陪同人员(设备负责人)签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="commponysign" id="commponysign" isnull="no" dorder="13" mes="请签字"/>
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
						<input type="text" name="olddisknum" id="olddisknum"  />
					</td>
				</tr>
				<tr>
					<td>
						移交人签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="yjsign" id="yjsign" isnull="no" dorder="14" mes="请移交人签字"/>
					</td>
					<td>
						接收人签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="jssign" id="jssign" isnull="no" dorder="15" mes="请接收人签字"/>
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
						<hi:select type="radio" emu="yesOrNo" name="isupdate" id="isupdate" isnull="no" dorder="16" mes="台账是否更新"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="managersign" id="managersign" isnull="no" dorder="17" mes="请资产管理人员签字"/>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>