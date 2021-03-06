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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/ferrycentre/js/ferryCentre.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="ferryCentre.id !=null">
			<div class="mainTitle">
				编辑建立摆渡中心申请
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建建立摆渡中心申请
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/ferrycentre/ferryCentreSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="ferryCentre.id" id="id" value="<s:property value="ferryCentre.id" />" />
			<input type="hidden" name="ferryCentre.version" id="version" value="<s:property value="ferryCentre.version" />"/>
			<input type="hidden" name="ferryCentre.firstperson" id="firstperson" value="<s:property value="ferryCentre.firstperson" />"/>
			<input type="hidden" name="ferryCentre.firstpid" id="firstpid" value="<s:property value="ferryCentre.firstpid" />"/>
			<input type="hidden" name="ferryCentre.firstsubdate" id="firstsubdate" value="<s:property value="ferryCentre.firstsubdate" />"/>
			<table width="100%" class="bordered">
				<caption>
					建立摆渡中心申请表
				</caption>
				<tr>
					<td width="25%">
						申请部门
					</td>
					<td width="25%">
						<input type="text" name="ferryCentre.applydept" id="applydept" value="<s:property value="ferryCentre.applydept" />" isnull="no" dorder="1"  mes="申请部门不能为空" size="25"/>
						<input type="hidden" name="ferryCentre.applydeptid" id="applydeptid" value="<s:property value="ferryCentre.applydeptid" />"/>
					</td>
					<td width="25%">
						处理信息最高密级
					</td>
					<td width="25%">
						<hi:select  emu="page_43_security" name="ferryCentre.security" id="security" isnull="no" dorder="2" mes="处理信息最高密级不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						联系人
					</td>
					<td>
						<input type="text" name="ferryCentre.linkman" id="linkman" value="<s:property value="ferryCentre.linkman" />" isnull="no" dorder="3"  mes="联系人不能为空" size="25"/>
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input type="text" name="ferryCentre.cellphone" id="cellphone" value="<s:property value="ferryCentre.cellphone" />" isnull="no" dorder="4"  mes="联系电话不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						建立地点
					</td>
					<td>
						<input type="text" name="ferryCentre.createplace" id="createplace" value="<s:property value="ferryCentre.createplace" />" isnull="no" dorder="5"  mes="建立地点不能为空" size="50"/>
					</td>
					<td>
						申请时间
					</td>
					<td>
						<input type="text" name="ferryCentre.applydate" id="applydate" value="<s:date name="ferryCentre.applydate" format="yyyy-MM-dd hh:mm:ss"/>"  dtype="date(yyyy-MM-dd HH:mm:ss)"   isnull="no" dorder="6"  mes="申请日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						摆渡员姓名
					</td>
					<td>
						<input type="text" name="ferryCentre.ferryer" id="ferryer" value="<s:property value="ferryCentre.ferryer" />" isnull="no" dorder="7"  mes="摆渡员姓名不能为空" size="25"/>
					</td>
					<td>
						摆渡员密级
					</td>
					<td>
						<hi:select  emu="page_43_ferryerSecurity" name="ferryCentre.ferryersecurity" id="ferryersecurity" isnull="no" dorder="8" mes="摆渡员密级不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						申请原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="ferryCentre.applyreason" id="applyreason"><s:property value="ferryCentre.applyreason" /></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="ferryCentre.applydeptopinion" id="applydeptopinion"><s:property value="ferryCentre.applydeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="ferryCentre.applydeptsign" id="applydeptsign" isnull="no" dorder="9" mes="请申请部门签字" />
						<input type="hidden" name="ferryCentre.applydeptsignid" id="applydeptsignid" value="<s:property value="ferryCentre.applydeptsignid" />"/>
						<input type="hidden" name="ferryCentre.applydeptsigndate" id="applydeptsigndate" value="<s:property value="ferryCentre.applydeptsigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						保密管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="ferryCentre.securityopinion" id="securityopinion"><s:property value="ferryCentre.securityopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="ferryCentre.securitysign" id="securitysign" isnull="no" dorder="10" mes="请保密管理部门签字" />
						<input type="hidden" name="ferryCentre.securityid" id="securityid" value="<s:property value="ferryCentre.securityid" />"/>
						<input type="hidden" name="ferryCentre.securitysigndate" id="securitysigndate" value="<s:property value="ferryCentre.securitysigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="ferryCentre.infordeptopinion" id="infordeptopinion"><s:property value="ferryCentre.infordeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="ferryCentre.infordeptsign" id="infordeptsign" isnull="no" dorder="11" mes="请信息化管理部门签字" />
						<input type="hidden" name="ferryCentre.infordeptsignid" id="infordeptsignid" value="<s:property value="ferryCentre.infordeptsignid" />"/>
						<input type="hidden" name="ferryCentre.infordeptsigndate" id="infordeptsigndate" value="<s:property value="ferryCentre.infordeptsigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						安全保密管理员办理情况
					</td>
					<td colspan="3">
						<textarea rows="3" name="ferryCentre.trancondition" id="trancondition"><s:property value="ferryCentre.trancondition" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="ferryCentre.transign" id="transign" isnull="no" dorder="12" mes="请签字" />
						<input type="hidden" name="ferryCentre.transignid" id="transignid" value="<s:property value="ferryCentre.transignid" />"/>
						<input type="hidden" name="ferryCentre.transigndate" id="transigndate" value="<s:property value="ferryCentre.transigndate" />"/>
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
