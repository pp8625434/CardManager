<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/subsidiesdetainperper/js/subsidiesDetainperper.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<div class="mainTitle">
			新增保密补贴扣发通知
		</div>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/subsidiesdetainper/subsidiesDetainperSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="subsidiesDetainper.id" id="id" />
				<input type="hidden" name="subsidiesDetainper.version" id="version" />
				<input type="hidden" name="subsidiesDetainper.username" id="username" />
				<input type="hidden" name="subsidiesDetainper.userid" id="userid" />
				<div>
		     		<span>
		     			编号：<input type="text" name="subsidiesDetainper.pcode" id="pcode" isnull="no" mes="编号不能为空"/>
		     		</span>
		     		<span> 日期：<input type="text"
							name="subsidiesDetainper.pnoticedate" id="pnoticedate"
							dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"
							mes="日期不能为空" /> 
					</span>
		     	</div>
		    	<table class="bordered">
					<tr>
						<td width="20%">部门</td>
					    <td width="30%"><input type="text" name="subsidiesDetainper.orgname" id="orgname" isnull="no" mes="部门不能为空"/>
					    	<input type="hidden" name="subsidiesDetainper.orgid"/>
					    </td>
					    <td width="15%">姓名</td>
						<td width="35%"><input type="text" name="subsidiesDetainper.pname" id="pname" isnull="no" mes="姓名不能为空"/></td>
					</tr>
					<tr>
					    <td>扣发意见</td>
					    <td colspan="3"><textarea name="subsidiesDetainper.pdetaindesc" id="pdetaindesc" ></textarea></td>
					</tr>
					<tr>
		    			<td>保密办签字：</td>
		    			<td>签字</td>
		    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="subsidiesDetainper.officesign" isnull="no"  mes="请选择保密办签字" />
		    				<input type="hidden" name="subsidiesDetainper.officeid"/>
		    				<input type="hidden" name="subsidiesDetainper.signdate"/>
		    			</td>
		  			</tr>
				</table>
				<br />
				<div class="btnBox">
					<input type="submit" id="addBut" value="保存" class="btnInput1" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消"
						onclick="cancelBtn();" />
				</div>
			</form>
		</div>
	</body>
</html>
