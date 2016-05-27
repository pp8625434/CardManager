<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css"  >
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css"  >
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/table/js/table.js"></script>
			
		
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			添加/编辑表字段
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/table/saveTableField.action" onsubmit="return onSubAdd();">
	    	<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
	    	<input type="hidden" id="id" name="tablesInfo.id" value="<s:property value='tablesInfo.id' />">
	    	<input type="hidden" id="tid" name="tablesInfo.tid" value="<s:property value='tablesInfo.tid' />">
	    	<input type="hidden" id="tableid" name="tables.id" value="<s:property value="tables.id" />">
	    	<table class="tableEdit"> 
				
				<tbody>
					<tr>
						<td width="80px">字段名称:</td>
						<td>
							<input type="text" id="fieldName" name="tablesInfo.fieldName" maxlength="50" style="width:300px" value="<s:property value="tablesInfo.fieldName"/>">
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr"></span>
							<input type="hidden" id="oldName" name="oldName" value="<s:property value="tablesInfo.fieldName"/>">
						</td>
					</tr>
					<tr>
						<td width="80px">描述:</td>
						<td>
							<input type="text" id="fielDesc" name="tablesInfo.fielDesc" maxlength="50" style="width:300px" value="<s:property value="tablesInfo.fielDesc"/>">
						</td>
					</tr>
					<tr>
						<td width="80px">类型:</td>
						<td>
							<input type="radio" name="tablesInfo.fielType" value="1" <s:if test="tablesInfo == null || tablesInfo.fielType==1 ">checked="true"</s:if>/>字符型
							<input type="radio" name="tablesInfo.fielType" value="2"<s:if test="tablesInfo.fielType==2">checked="true"</s:if> />整数型
							<input type="radio" name="tablesInfo.fielType" value="3"<s:if test="tablesInfo.fielType==3">checked="true"</s:if> />其他
						</td>
					</tr>
				</tbody>
				
			</table>   
	    
			<br />
			<div class="btnBox">
				<input type="submit" id="addBut" value="保存" class="btnInput1" />&nbsp;<input type="button" class="btnInput2 chancleButton" value="取消" " />
			</div>
		</form>
		</div>
	</body>
</html>
