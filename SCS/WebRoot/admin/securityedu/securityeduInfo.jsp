<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/securityedu/js/securityedu.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/securityedu/securityeduInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="secid" name="securityedu.id" value="<s:property value="securityedu.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
					    <td width="10%">部门</td>
					    <td width="15%"><s:property value="securityedu.orgname"/></td>
					    <td width="10%">姓名</td>
					    <td width="15%"><s:property value="securityedu.name"/></td>
					    <td width="10%">岗位密级</td>
						<td width="40%" style="text-align: left;"><hi:select emu="page_27_applyersecurity" name="securityedu.classification" isLabel="true" /></td>
				  	</tr>
				 	<tr>
				    	<td height="200">教育培训内容</td>
				    	<td colspan="5" >
				    		<p style="text-align: left;">1.国家及上级机关有关保密法律、法规。</p>
				    		<p style="text-align: left;">2.单位有关保密规章制度。</p>
				    		<p style="text-align: left;">3.涉密人员保密职责。</p>
				    		<p style="text-align: left;">4.其他有关情况记录：<s:property value="securityedu.educationdesc"/></p>
				    	</td>
				  	</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/securityedu/securityeduList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>