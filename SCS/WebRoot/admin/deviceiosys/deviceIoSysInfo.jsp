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
			设备接入/退出涉密信息系统审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						设备接入/退出涉密信息系统审批表
					</caption>
					<tr>
						<td width="11%">
							申请人
						</td>
						<td colspan="2">
							<s:property value="deviceIoSys.applicant"/>
						</td>
						<td width="10%">
							电话
						</td>
						<td colspan="2">
							<s:property value="deviceIoSys.cellphone"/>
						</td>
						<td width="10%">
							申请日期
						</td>
						<td width="16%" colspan="2">
							<s:date name="deviceIoSys.appliydate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							申请人类别
						</td>
						<td colspan="7">
							<hi:select disabled="true" type="radio" emu="page_27_applyerstyle" name="deviceIoSys.applicanttype" id="deviceIoSys.applicanttype" />
							<br/>
							<div align="left">
								其他申请人类别：<s:property value="deviceIoSys.applicantelse"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							类型
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="page_27_devoperatstyle" name="deviceIoSys.type" id="deviceIoSys.type"  />
						</td>
						<td width="11%">
							申请人密级
						</td>
						<td colspan="4">
							<hi:select disabled="true" type="radio" emu="page_27_applyersecurity" name="deviceIoSys.applicantsecurity" id="deviceIoSys.applicantsecurity" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							所在部门及处室
						</td>
						<td colspan="7">
							<s:property value="deviceIoSys.orgname"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							设备基本情况
						</td>
						<td width="9%">
							设备类型
						</td>
						<td colspan="7">
							<hi:select disabled="true" type="checkbox" emu="page_27_devstyle" name="deviceIoSys.devicetype" id="deviceIoSys.devicetype"  />
							<br/>
							<div align="left">
								其他设备类型：<s:property value="deviceIoSys.deviceelse"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							设备编号
						</td>
						<td colspan="3">
							<s:property value="deviceIoSys.deviceindex"/>
						</td>
						<td width="10%">
							硬盘序列号
						</td>
						<td colspan="3">
							<s:property value="deviceIoSys.hardpanserialnum"/>
						</td>
					</tr>
					<tr>
						<td >
							设备密级
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="page_27_devsecurity" name="deviceIoSys.devicesecurity" id="deviceIoSys.devicesecurity"  />
						</td>
						<td>
							存放地点
						</td>
						<td colspan="3">
							<s:property value="deviceIoSys.storageplace"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							申请人申请开通（退出）系统名称
						</td>
						<td colspan="7">
							<hi:select disabled="true" type="checkbox" emu="page_27_openoroutsys" name="deviceIoSys.inoutsysname" id="deviceIoSys.inoutsysname"  />
							<br/>
							<div align="left">
								其他系统名称：<s:property value="deviceIoSys.sysnameelse"/>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							申请接入原因
						</td>
						<td colspan="7">
							<hi:select disabled="true" type="radio" emu="page_27_applyinreasion" name="deviceIoSys.insysreason" id="deviceIoSys.insysreason"  />
							<br/>
							<div align="left">
								其他接入原因：<s:property value="deviceIoSys.inreasonelse"/>
							</div>
							
						</td>
					</tr>
					<tr>
						<td colspan="2">
							申请退出原因
						</td>
						<td colspan="7">
							<hi:select disabled="true" type="radio" emu="page_27_applyoutreasion" name="deviceIoSys.outsysreason" id="deviceIoSys.outsysreason"  />
							<br/>
							<div align="left">
								其他退出原因：
								<s:property value="deviceIoSys.outreasonelse"/>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2" rowspan="2">
							申请部门意见
						</td>
						<td colspan="7">
							<s:property value="deviceIoSys.applydeptopinion"/> 
						</td>
					</tr>
					<tr>
						<td width="10%">
							签字
						</td>
						<td colspan="6">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.applydeptsign" id="deviceIoSys.applydeptsign" />
						</td>
					</tr>
					<tr>
						<td colspan="2" rowspan="2">
							信息化管理部门意见
						</td>
						<td colspan="7">
							<s:property value="deviceIoSys.infordeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="6">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.infordeptsign" id="deviceIoSys.infordeptsign" />
						</td>
					</tr>
					<tr>
						<td colspan="2" rowspan="2">
							设备移交情况
						</td>
						<td>
							设备负责人签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.devprincipalsign" id="deviceIoSys.devprincipalsign" />
						</td>
						<td>
							接收人签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.devrecipientsign" id="deviceIoSys.devrecipientsign" />
						</td>
					</tr>
					<tr>
						<td colspan="7">
							注：设备负责人负责将设备要素更新情况通知本部门台账管理人员。
						</td>
					</tr>
					<tr>
						<td colspan="9">
							以下部分由操作人员填写
						</td>
					</tr>
					<tr>
						<td colspan="2" rowspan="3">
							存储介质信息清除、拆除、设备移交情况
						</td>
						<td colspan="2">
							是否已完成信息清除
						</td>
						<td width="15%">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="deviceIoSys.isclearinformation" id="deviceIoSys.isclearinformation" />
						</td>
						<td colspan="2">
							是否已拆除存储固件
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="deviceIoSys.isremovefirmware" id="deviceIoSys.isremovefirmware" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							设备是否移交
						</td>
						<td colspan="5">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="deviceIoSys.istransferdevice" id="deviceIoSys.istransferdevice" />
						</td>
					</tr>
					<tr>
						<td>
							操作人签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.operatorsign" id="deviceIoSys.operatorsign" />
						</td>
						<td>
							接收人签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.storeinforecipient" id="deviceIoSys.storeinforecipient" />
						</td>
					</tr>
					<tr>
						<td rowspan="5">
							开通（关闭）账户操作结果
						</td>
						<td colspan="2">
							分配(关闭)的IP地址
						</td>
						<td colspan="6">
							<s:property value="deviceIoSys.allocationip"/>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							交换机操作：
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="checkbox" emu="openOrClose" name="deviceIoSys.switchboard" id="deviceIoSys.switchboard" />开放（关闭）
						</td>
						<td>
							签字
						</td>
						<td colspan="3">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.switchboardsign" id="deviceIoSys.switchboardsign" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input  type="checkbox" readonly name="deviceIoSys.isoa" id="deviceIoSys.isoa" />OA
						</td>
						<td colspan="2">
							操作人签字
						</td>
						<td colspan="4">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.oaoperatorsign" id="deviceIoSys.oaoperatorsign" />
						</td>
					</tr>
					<tr>
						<td colspan="8">
							<hi:select disabled="true" type="checkbox" emu="page_27_openAccountResult" name="deviceIoSys.domainemail" id="deviceIoSys.domainemail" />
							<br/>
							<div align="left">
								其他：<s:property value="deviceIoSys.domainemailelse"/>
							</div>
							
						</td>
					</tr>
					<tr>
						<td colspan="2">
							操作人签字
						</td>
						<td colspan="6">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.domainoperator" id="deviceIoSys.domainoperator" />
						</td>
					</tr>
					<tr>
						<td rowspan="4">
							信息档案部资产管理人员
						</td>
						<td colspan="6">
							台账是否更新
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="deviceIoSys.isupdate" id="deviceIoSys.isupdate" />
						</td>
					</tr>
					<tr>
						<td colspan="6">
							是否将台账信息告知申请人部门台账管理员
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="deviceIoSys.isinform" id="deviceIoSys.isinform" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							是否到保密管理部门备案
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="deviceIoSys.isrecord" id="deviceIoSys.isrecord" />
						</td>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.recordorsign" id="deviceIoSys.recordorsign" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							签字
						</td>
						<td colspan="6">
							<hi:select disabled="true" type="radio" emu="yesNo" name="deviceIoSys.managersign" id="deviceIoSys.managersign" />
						</td>
					</tr>
					<tr><td colspan="9">注：1、申请部门负责对申请人员的密级进行确定；2、此表交由信息化管理部门存档。</td></tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>