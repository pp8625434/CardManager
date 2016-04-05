<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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
			src="${applicationScope.ctx}/admin/workdate/js/workdate.js"></script>
			
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			<s:if test="workdate == null">新增工作日信息</s:if>
			<s:if test="workdate != null">编辑工作日信息</s:if>
			
		</div>

		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/workdate/saveWorkdate.action" enctype="multipart/form-data" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
				<input type="hidden" id="cid" name="workdate.id" value="<s:property value="workdate.id" />">
				<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
				<input type="hidden" id="version" name="workdate.version" value="<s:property value="workdate.version" />">
				<table class="tableEdit">
					<tr>
						<td width="80px">
							日期:
						</td>
						<td>
							<s:textfield name="workdate.thedate" id="thedate"
								onclick="WdatePicker({isShowWeek:true,dateFmt:'yyyy-MM-dd'})"
								cssClass="input2" cssStyle="width:145px;" readonly="true"
								disabled='mark in {"view"}?true:false' title="起始时间">
								<s:param name="value">
									<s:date name="workdate.thedate" format="yyyy-MM-dd"/>
								</s:param>
							</s:textfield>
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
						</td>
					</tr>
					<s:if test="workdate==null">
						<tr>
							<td>
								日期类型:
							</td>
							<td>
								<input type="radio" name="workdate.dtype" value="0" checked/>休息日
								<input type="radio" name="workdate.dtype" value="1" />工作日
							</td>
						</tr>
					</s:if>
					<s:elseif test="workdate!=null">
						<tr>
							<td>
								日期类型:
							</td>
							<td>
								<input type="radio" name="workdate.dtype" value="0" <s:if test="workdate.dtype==0">checked="true"</s:if>/>休息日
								<input type="radio" name="workdate.dtype" value="1"<s:if test="workdate.dtype==1">checked="true"</s:if> />工作日
							</td>
						</tr>
					</s:elseif>	
				</table>
				<br />
				<div class="btnBox">
					<input type="button" id="addBut" value="保存" onclick="onSubEdit()" class="btnInput1"/>
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" />
				</div>
			</form>
		</div>
	</body>
</html>