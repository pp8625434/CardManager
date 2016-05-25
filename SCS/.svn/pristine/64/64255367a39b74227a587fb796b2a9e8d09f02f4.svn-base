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
					涉密协作配套单位保密监督检查表（样本）
				</caption>
				<tr>
					<td width="20%">
						单位名称
					</td>
					<td colspan="5">
						<input type="text" name="deptname" id="deptname" isnull="no"
							dorder="1" mes="单位名称不能为空" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						企业性质
					</td>
					<td colspan="2">
						<input type="text" name="qyxz" id="qyxz" isnull="no" dorder="2"
							mes="企业性质不能为空" size="20" />
					</td>
					<td width="16%">
						法人代表或负责人
					</td>
					<td colspan="2">
						<input type="text" name="agenter" id="agenter" isnull="no"
							dorder="3" mes="法人代表或负责人不能为空" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						上级主管单位
					</td>
					<td colspan="5">
						<input type="text" name="superdeptname" id="superdeptname"
							isnull="no" dorder="4" mes="上级主管单位不能为空" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						通信地址
					</td>
					<td colspan="5">
						<input type="text" name="infaddress" id="infaddress" isnull="no"
							dorder="5" mes="通信地址不能为空" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						邮政编码
					</td>
					<td width="16%">
						<input type="text" name="postcode" id="postcode" isnull="no"
							dorder="6" mes="邮政编码不能为空" size="10" />
					</td>
					<td width="16%">
						电话
					</td>
					<td>
						<input type="text" name="telephone" id="telephone" isnull="no"
							dorder="7" mes="电话不能为空" size="20" />
					</td>
					<td width="16%">
						传真
					</td>
					<td width="16%">
						<input type="text" name="fax" id="fax" isnull="no" dorder="8"
							mes="传真不能为空" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						保密工作机构名称
					</td>
					<td colspan="2">
						<input type="text" name="secorg" id="secorg" isnull="no"
							dorder="9" mes="保密工作机构名称不能为空" size="20" />
					</td>
					<td>
						保密负责人电话、传真
					</td>
					<td colspan="2">
						<input type="text" name="sectelephone" id="sectelephone"
							isnull="no" dorder="10" mes="保密负责人电话、传真不能为空" size="20" />
					</td>
				</tr>
				<tr>
					<td>
						监督检查方式
					</td>
					<td colspan="5">
						<hi:select type="radio" emu="BM-10-02checkType" name="checktype"
							id="checktype" isnull="no" dorder="11" mes="请选择监督检查方式" />
					</td>
				</tr>
				<tr>
					<td>
						项目
					</td>
					<td colspan="5">
						调查内容
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						保密资质
					</td>
					<td>
						1.本单位属于
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="BM-10-02deptBelong" name="deptbelong"
							id="deptbelong" isnull="no" dorder="12" mes="请选择本单位属于" />
					</td>
				</tr>
				<tr>
					<td>
						2.有效期
					</td>
					<td colspan="4">
						<input type="text" name="datefrom" id="datefrom" isnull="no"
							dorder="13" dtype="date(yyyy-MM-dd)" mes="起始日期不能为空" />
						至
						<input type="text" name="dateend" id="dateend" isnull="no"
							dorder="14" dtype="date(yyyy-MM-dd)" mes="结束日期不能为空" />
					</td>
				</tr>
				<tr>
					<td colspan="5">
						如未曾提供武器装备科研生产单位保密资格证书，请随本表一并提供。
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密组织
					</td>
					<td colspan="3">
						3.保密组织机构是否健全
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="orgisper"
							id="orgisper" isnull="no" dorder="15" mes="保密组织机构是否健全" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						4.保密工作是否权限清晰，责任明确，落实到人
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="secworkclear"
							id="secworkclear" isnull="no" dorder="16"
							mes="保密工作是否权限清晰，责任明确，落实到人" />
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						保密制度
					</td>
					<td colspan="3">
						5.保密制度（人员管理、定密及密级调整、涉密载体、要害部门部位、涉密通信、计算机信息系统、重大涉密活动）是否健全
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="seczd" id="seczd"
							isnull="no" dorder="17"
							mes="保密制度（人员管理、定密及密级调整、涉密载体、要害部门部位、涉密通信、计算机信息系统、重大涉密活动）是否健全" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						6.是否有保密奖惩和泄漏国家秘密事件报告和查处制度
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="secaward"
							id="secaward" isnull="no" dorder="18"
							mes="是否有保密奖惩和泄漏国家秘密事件报告和查处制度" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						7.保密审查、审批流程是否明确
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="checkflow"
							id="checkflow" isnull="no" dorder="19" mes="保密审查、审批流程是否明确" />
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						涉密人员
					</td>
					<td colspan="3">
						8.是否对涉密人员进行密级界定
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="secjd" id="secjd"
							isnull="no" dorder="20" mes="是否对涉密人员进行密级界定" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						9.是否对涉密岗位的人员进行严格审查
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="ygcheck" id="ygcheck"
							isnull="no" dorder="21" mes="是否对涉密岗位的人员进行严格审查" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						10.是否对涉密人员教育定期进行培训
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="secedu" id="secedu"
							isnull="no" dorder="22" mes="是否对涉密人员教育定期进行培训" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						11.是否对涉密人员签订保密责任书
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="signsecbook"
							id="signsecbook" isnull="no" dorder="23" mes="是否对涉密人员签订保密责任书" />
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						涉密载体
					</td>
					<td colspan="3">
						12.载体定密、密级变更依据、责任、程序是否正确
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="secproc" id="secproc"
							isnull="no" dorder="24" mes="载体定密、密级变更依据、责任、程序是否正确" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						13.载体标密是否及时、规范
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="isjsgf" id="isjsgf"
							isnull="no" dorder="25" mes="载体标密是否及时、规范" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						14.涉密载体制作、收发、保存、销毁是否符合国家规定
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="xhisfh" id="xhisfh"
							isnull="no" dorder="26" mes="涉密载体制作、收发、保存、销毁是否符合国家规定" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						15.是否根据工作需要对国家秘密接触和知悉范围有控制措施
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="ismeasure"
							id="ismeasure" isnull="no" dorder="27"
							mes="是否根据工作需要对国家秘密接触和知悉范围有控制措施" />
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						保密要害部门部位
					</td>
					<td colspan="3">
						16.是否准确确定要害部门、部位
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="iszqqdyh"
							id="iszqqdyh" isnull="no" dorder="28"
							mes="是否准确确定要害部门、部位" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						17.要害部门部位制度是否完善，严格执行
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="yhbmbwzdsf"
							id="yhbmbwzdsf" isnull="no" dorder="29"
							mes="要害部门部位制度是否完善，严格执行" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						18.要害部门部位是否采取有效安防保密措施
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="youxiaosecmea"
							id="youxiaosecmea" isnull="no" dorder="30"
							mes="要害部门部位是否采取有效安防保密措施" />
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						涉密计算机信息系统
					</td>
					<td colspan="3">
						19.涉密计算机、信息系统是否与互联网物理隔离
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="internetgl"
							id="internetgl" isnull="no" dorder="31"
							mes="涉密计算机、信息系统是否与互联网物理隔离" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						20.涉密信息系统管理人员职责是否明晰
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="dutyclear"
							id="dutyclear" isnull="no" dorder="32"
							mes="涉密信息系统管理人员职责是否明晰" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						21.对涉密电子信息有密级标识、输入输出是否得到有效控制
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="inoutcontrl"
							id="inoutcontrl" isnull="no" dorder="33"
							mes="对涉密电子信息有密级标识、输入输出是否得到有效控制" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						22.对传真机、复印机等办公自动化设备是否有效控制
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="faxiscontrol"
							id="faxiscontrol" isnull="no" dorder="34"
							mes="对传真机、复印机等办公自动化设备是否有效控制" />
					</td>
				</tr>
				<tr>
					<td>
						涉密活动
					</td>
					<td colspan="3">
						23.重大涉密活动是否有保密工作要求和措施
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="bigevent"
							id="bigevent" isnull="no" dorder="35"
							mes="重大涉密活动是否有保密工作要求和措施" />
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						保密条款、保密协议执行情况
					</td>
					<td colspan="3">
						24.在项目协作中，是否保守所涉及到的国家秘密事项和甲方商业秘密的义务
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="jiasecduty"
							id="jiasecduty" isnull="no" dorder="36"
							mes="在项目协作中，是否保守所涉及到的国家秘密事项和甲方商业秘密的义务" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						25.是否擅自复制由甲方提供的有关资料、图纸等涉密载体
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="iscopy"
							id="iscopy" isnull="no" dorder="37"
							mes="是否擅自复制由甲方提供的有关资料、图纸等涉密载体" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						26.是否按规定使用和保存涉密载体
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="usedisk"
							id="usedisk" isnull="no" dorder="38"
							mes="是否按规定使用和保存涉密载体" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						27.当存在不符合保密要求的事项，是否及时纠正
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="iscorrect"
							id="iscorrect" isnull="no" dorder="39"
							mes="当存在不符合保密要求的事项，是否及时纠正" />
					</td>
				</tr>
				<tr>
					<td>
						失泄密事件
					</td>
					<td colspan="3">
						28.一年来是否发生过失、泄密事件
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="isoutsec"
							id="isoutsec" isnull="no" dorder="40"
							mes="一年来是否发生过失、泄密事件" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						监督检查整体情况或情况说明
					</td>
					<td colspan="5">
						<textarea rows="3" name="solution" id="solution"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						协作配套单位保密工作机构责任人签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="agentersign" id="agentersign" isnull="no" dorder="41" mes="请协作配套单位保密工作机构责任人签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						协作配套单位承诺
					</td>
					<td colspan="5">
						<p  align="left">
							1.本单位承诺对以上监督检查情况填报真实。
						</p>
						<p  align="left">
							2.本单位承诺不断提高保密工作防范水平，确保国家秘密安全。
						</p>
						<p align="left">
							其他：<textarea rows="3" name="promiseqt" id="promiseqt"></textarea>
						</p>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						协作配套单位保密工作分管领导签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="fgleadersign" id="fgleadersign" isnull="no" dorder="42" mes="请协作配套单位保密工作分管领导签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						监督检查审核意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="checkopinion" id="checkopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						协作（分包）涉密任务部门领导签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="secrwleadersign" id="secrwleadersign" isnull="no" dorder="43" mes="请协作（分包）涉密任务部门领导签字" />
					</td>
				</tr>
				<tr>
					<td>
						备注
					</td>
					<td colspan="5">
						<p  align="left">
							1、本表是分包涉密任务单位对协作配套单位履行保密监督检查工作的重要凭证。
						</p>
						<p  align="left">
							2.本表由协作配套单位进行填写，并由中国航天科技集团公司第九研究院分包涉密任务部门、单位负责审核。
						</p>
						<p  align="left">
							3、本表由分包涉密任务的部门、单位保存，并交保密管理部门存档，期限5年。
						</p>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
