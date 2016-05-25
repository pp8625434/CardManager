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
					非涉密便携式计算机携带外出审批表
				</caption>
				<tr>
					<td width="21%">
						所在部门
					</td>
					<td colspan="2">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="1"  mes="所在部门不能为空" size="20"/>
					</td>
					<td width="15%">
						借用人
					</td>
					<td colspan="2">
						<input type="text" name="borrower" id="borrower" isnull="no" dorder="2"  mes="借用人不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						外出地点
					</td>
					<td colspan="2">
						<input type="text" name="outplace" id="outplace" isnull="no" dorder="3"  mes="外出地点不能空" size="20"/>
					</td>
					<td>
						设备编号
					</td>
					<td colspan="2">
						<input type="text" name="devnum" id="devnum" isnull="no" dorder="4"  mes="设备编号不能为空" />
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
						<input type="text" name="lightdisk" id="lightdisk" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						移动介质编号
					</td>
					<td>
						<input type="text" name="disknum" id="disknum" />
					</td>
					<td width="15%">
						是否为非密
					</td>
					<td width="26%">
						<hi:select type="radio" emu="yesOrNo" name="issecurity" id="issecurity" />
					</td>
				</tr>
				<tr>
					<td>
						借用事由及拟处理信息内容
					</td>
					<td colspan="5">
						<textarea rows="3" name="infocontent" id="infocontent"></textarea>
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
						<hi:select type="radio" emu="yesNo" name="borrowersign" id="borrowersign" isnull="no" dorder="5" mes="请借用人签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门领导意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="leaderopinion" id="leaderopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="leadersign" id="leadersign" isnull="no" dorder="6" mes="请部门领导签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						设备移交情况
					</td>
					<td colspan="5">
						<textarea rows="3" name="transsolution" id="transsolution"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						借用人领用签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="recipients" id="recipients" isnull="no" dorder="7" mes="请借用人领用签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						返回检查及归还情况
					</td>
					<td colspan="5">
						<textarea rows="3" name="returnsolution" id="returnsolution"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						检查人签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="checkersign" id="checkersign" isnull="no" dorder="8" mes="请检查人签字"/>
					</td>
				</tr>
				<tr>
					<td>
						设备管理人员接收设备签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="devreceived" id="devreceived" isnull="no" dorder="9" mes="请设备管理人员签字"/>
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
						<textarea rows="3" name="secdeptopinion" id="secdeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="secsign" id="secsign" isnull="no" dorder="10" mes="请保密管理部门签字" />
					</td>
				</tr>
				<tr>
					<td colspan="5">
						注：如无违规情况不用保密管理部门填写意见。
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
