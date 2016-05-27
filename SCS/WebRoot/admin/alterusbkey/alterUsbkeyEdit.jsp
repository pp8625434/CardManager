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
		<s:if test="alterUsbkey.id !=null">
			<div class="mainTitle">
				编辑更换USBKEY申请
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建更换USBKEY申请
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/alterusbkey/alterUsbkeySave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="alterUsbkey.id" id="id" value="<s:property value="alterUsbkey.id" />" />
			<input type="hidden" name="alterUsbkey.version" id="version" value="<s:property value="alterUsbkey.version" />"/>
			<input type="hidden" name="alterUsbkey.firstperson" id="firstperson" value="<s:property value="alterUsbkey.firstperson" />"/>
			<input type="hidden" name="alterUsbkey.firstpid" id="firstpid" value="<s:property value="alterUsbkey.firstpid" />"/>
			<input type="hidden" name="alterUsbkey.firstsubdate" id="firstsubdate" value="<s:property value="alterUsbkey.firstsubdate" />"/>
			<table width="100%" class="bordered">
				<caption>
					更换USBKEY申请表
				</caption>
				<tr>
					<td width="25%">
						姓名
					</td>
					<td width="25%">
						<input type="text" name="alterUsbkey.name" id="name" value="<s:property value="alterUsbkey.name" />" isnull="no" dorder="1"  mes="姓名不能空" size="25"/>
					</td>
					<td width="25%">
						岗位
					</td>
					<td width="25%">
						<input type="text" name="alterUsbkey.position" id="position" value="<s:property value="alterUsbkey.position" />" isnull="no" dorder="2"  mes="岗位不能空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						所属部门、单位
					</td>
					<td>
						<input type="text" name="alterUsbkey.deptname" id="deptname" value="<s:property value="alterUsbkey.deptname" />" isnull="no" dorder="3"  mes="所属部门、单位不能空" size="25"/>
						<input type="hidden" name="alterUsbkey.deptid" value="<s:property value="alterUsbkey.deptid" />"/>
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
						<input type="text" name="alterUsbkey.workplace" id="workplace" value="<s:property value="alterUsbkey.workplace" />" isnull="no" dorder="5"  mes="工作地点不能空" size="50"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="alterUsbkey.cellphone" id="cellphone" value="<s:property value="alterUsbkey.cellphone" />" isnull="no" dorder="6"  mes="联系电话不能空" size="20"/>
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
						<textarea rows="3" name="alterUsbkey.definitereason" id="definitereason"><s:property value="alterUsbkey.definitereason" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						申请人签字
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.applicantsign" id="applicantsign" isnull="no" dorder="7" mes="请申请人签字"/>
						<input type="hidden" name="alterUsbkey.applicantid" value="<s:property value="alterUsbkey.applicantid" />"/>
					</td>
					<td>
						申请时间
					</td>
					<td>
						<input type="text" name="alterUsbkey.applydate" id="applydate" value="<s:date name="alterUsbkey.applydate" format="yyyy-MM-dd hh:mm:ss"/>" isnull="no" dorder="8" dtype="date(yyyy-MM-dd HH:mm:ss)" mes="申请时间不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						部门负责人意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.deptopinion" id="deptopinion" value="<s:property value="alterUsbkey.deptopinion" />"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.deptsign" id="deptsign" isnull="no" dorder="9" mes="请部门负责人签字"/>
						<input type="hidden" name="alterUsbkey.deptsignid" value="<s:property value="alterUsbkey.deptsignid" />"/>
						<input type="hidden" name="alterUsbkey.deptsigndate" value="<s:property value="alterUsbkey.deptsigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.securityopinion" id="securityopinion"><s:property value="alterUsbkey.securityopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.securitysign" id="securitysign" isnull="no" dorder="10" mes="请保密管理部门签字" />
						<input type="hidden" name="alterUsbkey.securityid" value="<s:property value="alterUsbkey.securityid" />"/>
						<input type="hidden" name="alterUsbkey.securitysigndate" value="<s:property value="alterUsbkey.securitysigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.infordeptopinion" id="infordeptopinion"><s:property value="alterUsbkey.infordeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.infordeptsign" id="infordeptsign" isnull="no" dorder="11" mes="请信息化管理部门签字"/>
						<input type="hidden" name="alterUsbkey.infordeptsignid" value="<s:property value="alterUsbkey.infordeptsignid" />"/>
						<input type="hidden" name="alterUsbkey.infordeptsigndate" value="<s:property value="alterUsbkey.infordeptsigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						安全保密管理员办理情况
					</td>
					<td colspan="3">
						<textarea rows="3" name="alterUsbkey.trancondition" id="trancondition"><s:property value="alterUsbkey.trancondition" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="alterUsbkey.transign" id="transign" isnull="no" dorder="12" mes="请签字"/>
						<input type="hidden" name="alterUsbkey.transignid" value="<s:property value="alterUsbkey.transignid" />"/>
						<input type="hidden" name="alterUsbkey.transigndate" value="<s:property value="alterUsbkey.transigndate" />"/>
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
