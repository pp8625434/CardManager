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
			本部拍摄活动审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						涉密协作配套单位保密监督检查表（样本）
					</caption>
					<tr>
						<td width="20%">
							单位名称
						</td>
						<td colspan="5">
							<s:property value="cooperationCheck.deptname"/>
						</td>
					</tr>
					<tr>
						<td>
							企业性质
						</td>
						<td colspan="2">
							<s:property value="cooperationCheck.enterprisepro"/>
						</td>
						<td width="16%">
							法人代表或负责人
						</td>
						<td colspan="2">
							<s:property value="cooperationCheck.legalpers"/>
						</td>
					</tr>
					<tr>
						<td>
							上级主管单位
						</td>
						<td colspan="5">
							<s:property value="cooperationCheck.supedept"/>
						</td>
					</tr>
					<tr>
						<td>
							通信地址
						</td>
						<td colspan="5">
							<s:property value="cooperationCheck.mailaddress"/>
						</td>
					</tr>
					<tr>
						<td>
							邮政编码
						</td>
						<td width="16%">
							<s:property value="cooperationCheck.postcode"/>
						</td>
						<td width="16%">
							电话
						</td>
						<td>
							<s:property value="cooperationCheck.cellphone"/>
						</td>
						<td width="16%">
							传真
						</td>
						<td width="16%">
							<s:property value="cooperationCheck.fax"/>
						</td>
					</tr>
					<tr>
						<td>
							保密工作机构名称
						</td>
						<td colspan="2">
							<s:property value="cooperationCheck.securitydept"/>
						</td>
						<td>
							保密负责人电话、传真
						</td>
						<td colspan="2">
							<s:property value="cooperationCheck.bmtel"/>
						</td>
					</tr>
					<tr>
						<td>
							监督检查方式
						</td>
						<td colspan="5">
							<hi:select disabled="true" type="radio" emu="BM-10-02checkType" name="cooperationCheck.checktype"
								id="checktype"  />
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
							<hi:select disabled="true" type="radio" emu="BM-10-02deptBelong" name="cooperationCheck.deptbelong"
								id="deptbelong"  />
							<br/>
							<div align="left">
								其他：<s:property value="cooperationCheck.belongelse"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							2.有效期
						</td>
						<td colspan="4">
							<s:date name="cooperationCheck.begindate" format="yyyy-MM-dd HH:mm:ss"/>
							至
							<s:date name="cooperationCheck.enddate" format="yyyy-MM-dd HH:mm:ss"/>
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isorgperfect"
								id="isorgperfect" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							4.保密工作是否权限清晰，责任明确，落实到人
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isauthorclear"
								id="isauthorclear"  />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.issysclear" id="issysclear"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							6.是否有保密奖惩和泄漏国家秘密事件报告和查处制度
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.ishavesys"
								id="ishavesys" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							7.保密审查、审批流程是否明确
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isflowclear"
								id="isflowclear"  />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.issecident" id="issecident"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							9.是否对涉密岗位的人员进行严格审查
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isstrictcheck" id="isstrictcheck"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							10.是否对涉密人员教育定期进行培训
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.issecedu" id="issecedu" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							11.是否对涉密人员签订保密责任书
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.issigndoc"
								id="issigndoc" />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isprocright" id="isprocright"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							13.载体标密是否及时、规范
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isstandard" id="isstandard" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							14.涉密载体制作、收发、保存、销毁是否符合国家规定
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isaccordgd" id="isaccordgd" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							15.是否根据工作需要对国家秘密接触和知悉范围有控制措施
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.ismeasure"
								id="ismeasure" />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isconfdept"
								id="isconfdept"  />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							17.要害部门部位制度是否完善，严格执行
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isdeptperfect"
								id="isdeptperfect" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							18.要害部门部位是否采取有效安防保密措施
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.iseffeaction"
								id="iseffeaction"  />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isisolation"
								id="isisolation" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							20.涉密信息系统管理人员职责是否明晰
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isdutyclear"
								id="isdutyclear" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							21.对涉密电子信息有密级标识、输入输出是否得到有效控制
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.iscontrol"
								id="iscontrol" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							22.对传真机、复印机等办公自动化设备是否有效控制
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isfoxcontrol"
								id="isfoxcontrol"  />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.issecwork"
								id="issecwork"  />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.iskeep"
								id="iskeep" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							25.是否擅自复制由甲方提供的有关资料、图纸等涉密载体
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isszcopy"
								id="isszcopy"  />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							26.是否按规定使用和保存涉密载体
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.isusecarrier"
								id="isusecarrier" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							27.当存在不符合保密要求的事项，是否及时纠正
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.iscorrect"
								id="iscorrect" />
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
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="cooperationCheck.ishappen"
								id="ishappen" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							监督检查整体情况或情况说明
						</td>
						<td colspan="5">
							<s:property value="cooperationCheck.checkcondition"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							协作配套单位保密工作机构责任人签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="cooperationCheck.orgsign" id="orgsign"  />
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
								其他：<s:property value="cooperationCheck.xzdeptprom"/>
							</p>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							协作配套单位保密工作分管领导签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="cooperationCheck.fgleader" id="fgleader" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							监督检查审核意见
						</td>
						<td colspan="5">
							<s:property value="cooperationCheck.checkopinion"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							协作（分包）涉密任务部门领导签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="cooperationCheck.deptleader" id="deptleader"  />
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
				
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>