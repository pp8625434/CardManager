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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/emailexamine/js/emailExamine.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="emailExamine.id !=null">
			<div class="mainTitle">
				编辑外网邮箱开通、撤销申请审批
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建外网邮箱开通、撤销申请审批
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/emailexamine/emailExamineSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="emailExamine.id" id="id" value="<s:property value="emailExamine.id" />"/>
			<input type="hidden" name="emailExamine.version" id="version" value="<s:property value="emailExamine.version" />"/>
			<input type="hidden" name="emailExamine.firstperson" id="firstperson" value="<s:property value="emailExamine.firstperson" />"/>
			<input type="hidden" name="emailExamine.firstpid" id="firstpid" value="<s:property value="emailExamine.firstpid" />"/>
			<input type="hidden" name="emailExamine.firstsubdate" id="firstsubdate" value="<s:property value="emailExamine.firstsubdate" />"/>
			<table width="100%" class="bordered">
				<caption>
					外网邮箱开通、撤销申请审批表
				</caption>
				<tr>
					<td width="25%">
						申请人所在单位（部门）
					</td>
					<td width="25%">
						<input type="text" name="emailExamine.deptname" id="deptname" value="<s:property value="emailExamine.deptname" />" isnull="no" dorder="1"  mes="申请人所在单位（部門）不能为空" size="25"/>
						<input type="hidden" name="emailExamine.deptid" value="<s:property value="emailExamine.deptid" />"/>
					</td>
					<td width="25%">
						申请人
					</td>
					<td width="25%">
						<input type="text" name="emailExamine.applicant" id="applicant" value="<s:property value="emailExamine.applicant" />" isnull="no" dorder="2"  mes="申请人不能为空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						申请人所在处室
					</td>
					<td>
						<input type="text" name="emailExamine.offices" id="offices" value="<s:property value="emailExamine.offices" />" isnull="no" dorder="3"  mes="申请人所在处室不能为空" size="25"/>
						<input type="hidden" name="emailExamine.officesid" value="<s:property value="emailExamine.officesid" />"/>
					</td>
					<td>
						联系方式
					</td>
					<td>
						<input type="text" name="emailExamine.linktype" id="linktype" value="<s:property value="emailExamine.linktype" />" isnull="no" dorder="4"  mes="联系方式不能为空" size="25"/>
					</td>
				</tr>
				<tr>
					<td rowspan="1">
						申请开通外网邮箱原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="emailExamine.openreason" id="openreason"><s:property value="emailExamine.openreason" /></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="1">
						申请撤销外网邮箱原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="emailExamine.revokereason" id="revokereason"><s:property value="emailExamine.revokereason" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="emailExamine.applicantsign" id="applicantsign" isnull="no" dorder="5" mes="请签字" />
						<input type="hidden" name="emailExamine.applicantid" value="<s:property value="emailExamine.applicantid" />"/>
						<input type="hidden" name="emailExamine.applicantdate" value="<s:property value="emailExamine.applicantdate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请人所在部门或单位意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="emailExamine.applydeptopinion" id="applydeptopinion"><s:property value="emailExamine.applydeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="emailExamine.applydeptsign" id="applydeptsign" isnull="no" dorder="9" mes="请申请人所在部门或单位签字" />
						<input type="hidden" name="emailExamine.applydeptsignid" value="<s:property value="emailExamine.applydeptsignid" />"/>
						<input type="hidden" name="emailExamine.applydeptsigndate" value="<s:property value="emailExamine.applydeptsigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息档案部审查意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="emailExamine.archivesdept" id="archivesdept"><s:property value="emailExamine.archivesdept" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="emailExamine.archivessign" id="archivessign" isnull="no" dorder="11" mes="请信息化管理部门签字" />
						<input type="hidden" name="emailExamine.archivesid"  value="<s:property value="emailExamine.archivesid" />"/>
						<input type="hidden" name="emailExamine.archivesdate"  value="<s:property value="emailExamine.archivesdate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						网管操作结果记录
					</td>
					<td colspan="3">
						<textarea rows="3" name="emailExamine.operatrecord" id="operatrecord"><s:property value="emailExamine.operatrecord" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="emailExamine.webmaster" id="webmaster" isnull="no" dorder="12" mes="请签字" />
						<input type="hidden" name="emailExamine.webmasterid"  value="<s:property value="emailExamine.webmasterid" />"/>
						<input type="hidden" name="emailExamine.webmasterdate" value="<s:property value="emailExamine.webmasterdate" />" />
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
