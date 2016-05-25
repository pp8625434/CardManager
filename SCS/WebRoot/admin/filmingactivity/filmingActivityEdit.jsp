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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/filmingactivity/js/filmingActivity.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增本部拍摄活动审批
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/filmingactivity/filmingActivitySave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="filmingActivity.id" id="id"/>
			<input type="hidden" name="filmingActivity.version" id="version"/>
			<input type="hidden" name="filmingActivity.username" id="username"/>
			<input type="hidden" name="filmingActivity.userid" id="userid"/>
			<table width="100%" class="bordered">
				<tr>
				    <td width="25%">承办部门</td>
				    <td width="25%">
				    	<input type="text" name="filmingActivity.orgname" id="orgname" isnull="no" mes="承办部门不能为空" size="50"/>
				    	<input type="hidden" name="filmingActivity.orgid"/>	
				    </td>
				    <td width="25%">本次活动保密负责人</td>
				    <td width="25%"><input type="text" name="filmingActivity.shead" id="shead" isnull="no" mes="本次活动保密负责人不能为空" size="25"/></td>
				</tr>
				<tr>
				    <td>拍摄目的</td>
				    <td colspan="3"><textarea name="filmingActivity.purpose" id="purpose" isnull="no" mes="拍摄目的不能为空"></textarea></td>
				</tr>
				<tr>
				    <td width="25%">拍摄范围</td>
				    <td width="25%"><input type="text" name="filmingActivity.shootrange" id="shootrange" isnull="no" mes="拍摄范围不能为空" size="100"/></td>
				    <td width="25%">拍摄时间</td>
				    <td width="25%"><input type="text" name="filmingActivity.shootdate" id="shootdate" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="拍摄时间不能为空"/></td>
				</tr>
				<tr>
				    <td rowspan="3">拍摄内容是否涉密</td>
				    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="BM-07-04psnr" name="filmingActivity.isclassification" isnull="no"  mes="请选择拍摄内容是否涉密" /></td>
				</tr>
				<tr>
					<td>涉密等级：<hi:select  type="radio" emu="BM-07-04psdj" name="filmingActivity.classification" isnull="no"  mes="请选择涉密等级" /></td>
					<td>负责拍摄人员：<input type="text" name="filmingActivity.cameras" id="cameras" size="25"/></td>
					<td>承办部门监督人员：<input type="text" name="filmingActivity.monitors" id="monitors" size="25"/></td>
				<tr>
					<td>保密委员会办公室跟踪情况记录：</td>
					<td colspan="2"><input type="text" name="filmingActivity.trackrecord" id="trackrecord" size="400"/></td>
				</tr>
				<tr>
				    <td rowspan="2">承办部门意见</td>
				    <td colspan="3"><textarea name="filmingActivity.depdesc" id="depdesc" isnull="no" mes="承办部门意见不能为空"></textarea></td>
				</tr>
				<tr>
				    <td>签字：</td>
				    <td colspan="2" style="text-align:left;">
				    	<hi:select  type="radio" emu="yesNo" name="filmingActivity.depsign" isnull="no"  mes="请选择承办部门签字" />
				    	<input type="hidden" name="filmingActivity.depid"/>
				    	<input type="hidden" name="filmingActivity.depdate"/>
				    </td>
				</tr>
				<tr>
				    <td rowspan="2">保密要害部门、部位所在部门意见</td>
				    <td colspan="3"><textarea name="filmingActivity.partdesc" id="partdesc" isnull="no" mes="保密要害部门、部位所在部门意见不能为空"></textarea></td>
				</tr>
				<tr>
				    <td>签字：</td>
				    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="filmingActivity.partsign" isnull="no"  mes="请选择承办部门签字" />
				    	<input type="hidden" name="filmingActivity.partid"/>
				    	<input type="hidden" name="filmingActivity.partdate"/>
				    </td>
				</tr>
				<tr>
				    <td rowspan="2">保密委员会办公室意见</td>
				    <td colspan="3"><textarea name="filmingActivity.officedesc" id="officedesc" isnull="no" mes="保密委员会办公室意见不能为空"></textarea></td>
				</tr>
				<tr>
				    <td>签字：</td>
				    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="filmingActivity.officesign" isnull="no"  mes="请选择保密委员会办公室签字" />
				    	<input type="hidden" name="filmingActivity.officeid"/>
				    	<input type="hidden" name="filmingActivity.officedate"/>
				    </td>
				</tr>
				<tr>
				    <td rowspan="2">院保密委员会意见</td>
				    <td colspan="3"><textarea name="filmingActivity.scomdesc" id="scomdesc" isnull="no" mes="院保密委员会意见不能为空"></textarea></td>
				</tr>
				<tr>
				    <td>签字：</td>
				    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="filmingActivity.scomsign" isnull="no"  mes="请选择院保密委员会签字" />
				    	<input type="hidden" name="filmingActivity.scomid"/>
				    	<input type="hidden" name="filmingActivity.scomdate"/>
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
