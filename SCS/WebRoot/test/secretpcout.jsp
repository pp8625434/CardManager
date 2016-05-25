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
					借用专供外出携带涉密便携式计算机审批表
				</caption>
				<tr>
					<td width="12%">
						所在部门
					</td>
					<td colspan="2">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="1"  mes="所在部门不能为空" size="20"/>
					</td>
					<td width="11%">
						使用人
					</td>
					<td colspan="2">
						<input type="text" name="user" id="user" isnull="no" dorder="2"  mes="使用人不能空" size="20"/>
					</td>
					<td width="11%">
						外出地点
					</td>
					<td colspan="2">
						<input type="text" name="outplace" id="outplace" isnull="no" dorder="3"  mes="外出地点不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						设备编号
					</td>
					<td colspan="2">
						<input type="text" name="devnum" id="devnum" isnull="no" dorder="4"  mes="设备编号不能为空" />
					</td>
					<td>
						设备密级
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="page_27_devsecurity" name="devsecurity" id="devsecurity" isnull="no" dorder="5" mes="请选择设备密级" />
					</td>
					<td>
						是否存储涉密信息
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="isstoresec" id="isstoresec" isnull="no" dorder="6" mes="是否存储涉密信息"/>
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
						<input type="text" name="lightdisk" id="lightdisk"  size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						移动介质编号
					</td>
					<td width="11%">
						<input type="text" name="disknum" id="disknum" size="20"/>
					</td>
					<td>
						密级
					</td>
					<td width="11%">
						<input type="text" name="disksec" id="disksec"/>
					</td>
					<td width="11%">
						单向导入盒编号
					</td>
					<td>
						<input type="text" name="singlenum" id="singlenum" size="20"/>
					</td>
					<td width="11%">
						密级
					</td>
					<td width="11%">
						<input type="text" name="boxsec" id="boxsec"/>
					</td>
				</tr>
				<tr>
					<td>
						借用事由及拟处理信息内容
					</td>
					<td colspan="8">
						<textarea rows="3" name="borrowreasion" id="borrowreasion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						申请开放端口
					</td>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_applyPort" name="applyPort" id="applyPort"  />
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
						<hi:select type="radio" emu="yesNo" name="usersign" id="usersign" isnull="no" dorder="7" mes="请在保密责任书上签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门领导意见
					</td>
					<td colspan="8">
						<textarea rows="3" name="leaderopinion" id="leaderopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="7">
						<hi:select type="radio" emu="yesNo" name="leadersign" id="leadersign" isnull="no" dorder="8" mes="请部门领导签字"/>
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
						<hi:select type="radio" emu="yesOrNo" name="isupdate" id="isupdate" isnull="no" dorder="9" mes="安全产品是否升级"/>
					</td>
					<td colspan="2">
						版本号
					</td>
					<td colspan="2">
						<input type="text" name="version" id="version"/>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_applyPort" name="portsolution" id="portsolution"  />
					</td>
				</tr>
				<tr>
					<td colspan="4">
						&nbsp;
					</td>
					<td colspan="2">
						操作人员签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="portopsign" id="portopsign" isnull="no" dorder="10" mes="请操作人员签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						领用人签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="receivedsign" id="receivedsign" isnull="no" dorder="11" mes="请领用人签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						返回检查情况
					</td>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_checkSolution" name="checkSolution" id="checkSolution"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						设备移交人签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="transersign" id="transersign" isnull="no" dorder="12" mes="请设备移交人签字"/>
					</td>
					<td colspan="2">
						检查人签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="checker" id="checker" isnull="no" dorder="13" mes="请检查人签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息清除及端口关闭情况
					</td>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_37_portCloseSolution" name="portCloseSolution" id="portCloseSolution"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						操作人签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="cloersign" id="cloersign" isnull="no" dorder="14" mes="请操作人签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						保密管理部门意见
					</td>
					<td colspan="8">
						<textarea rows="3" name="secdeptopinion" id="secdeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="secsign" id="secsign" isnull="no" dorder="15" mes="请保密管理部门签字" />
					</td>
				</tr>
				<tr>
					<td colspan="8">
						注：如无违规情况不用保密管理部门填写意见。
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
