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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/alterusbkey/js/alterUsbkey.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新建更换USBKEY申请
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/alterusbkey/alterUsbkeySave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="alterUsbkey.id" id="id"/>
			<input type="hidden" name="alterUsbkey.version" id="version"/>
			<input type="hidden" name="alterUsbkey.firstperson" id="firstperson"/>
			<input type="hidden" name="alterUsbkey.firstpid" id="firstpid"/>
			<input type="hidden" name="alterUsbkey.firstsubdate" id="firstsubdate"/>
			<table width="100%" class="bordered">
				<caption>
					更换USBKEY申请表
				</caption>
				<tr>
					<td width="25%">
						姓名
					</td>
					<td width="25%">
						<input type="text" name="alterUsbkey.name" id="name" isnull="no" dorder="1"  mes="姓名不能空" size="25"/>
					</td>
					<td width="25%">
						岗位
					</td>
					<td width="25%">
						<input type="text" name="alterUsbkey.position" id="position" isnull="no" dorder="2"  mes="岗位不能空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						所属部门、单位
					</td>
					<td>
						<input type="text" name="alterUsbkey.deptname" id="deptname" isnull="no" dorder="3"  mes="所属部门、单位不能空" size="25"/>
						<input type="hidden" name="alterUsbkey.deptid"/>
					</td>
					<td>
						密级
					</td>
					<td>
						<hi:select  emu="page_36_security" name="alterUsbkey.security" id="security" isnull="no" dorder="4"  mes="密级不能空"/>
					</td>
				</tr>
				<tr>
					<td>
						工作地点
					</td>
					<td>
						<input type="text" name="alterUsbkey.workplace" id="workplace" isnull="no" dorder="5"  mes="工作地点不能空" size="50"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="alterUsbkey.cellphone" id="cellphone" isnull="no" dorder="6"  mes="联系电话不能空" size="20"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						更换USBKEY原因
					</td>
					<td>
						更换原因
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="page_36_alterreasion" name="alterUsbkey.alterreason" id="alterreason" />
					</td>
				</tr>
				<tr>
					<td>
						具体情况描述
					</td>
					<td colspan="2">
						<textarea rows="3" name="alterUsbkey.definitereason" id="definitereason"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						申请人签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.applicantsign" id="applicantsign" isnull="no" dorder="7" mes="请申请人签字"/>
						<input type="hidden" name="alterUsbkey.applicantid"/>
					</td>
					<td>
						申请时间
					</td>
					<td>
						<input type="text" name="alterUsbkey.applydate" id="applydate" isnull="no" dorder="8" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="申请时间不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门负责人意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.deptopinion" id="deptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.deptsign" id="deptsign" isnull="no" dorder="9" mes="请部门负责人签字"/>
						<input type="hidden" name="alterUsbkey.deptsignid"/>
						<input type="hidden" name="alterUsbkey.deptsigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.securityopinion" id="securityopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.securitysign" id="securitysign" isnull="no" dorder="10" mes="请保密管理部门签字" />
						<input type="hidden" name="alterUsbkey.securityid"/>
						<input type="hidden" name="alterUsbkey.securitysigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.infordeptopinion" id="infordeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.infordeptsign" id="infordeptsign" isnull="no" dorder="11" mes="请信息化管理部门签字"/>
						<input type="hidden" name="alterUsbkey.infordeptsignid"/>
						<input type="hidden" name="alterUsbkey.infordeptsigndate"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						安全保密管理员办理情况
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.trancondition" id="trancondition"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.transign" id="transign" isnull="no" dorder="12" mes="请签字"/>
						<input type="hidden" name="alterUsbkey.transignid"/>
						<input type="hidden" name="alterUsbkey.transigndate"/>
					</td>
				</tr>
				<tr>
					<td>
						备注
					</td>
					<td colspan="3">
						USBKEY丢失需要保密部门签字，USBKEY损坏不需要保密部门签字。
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
