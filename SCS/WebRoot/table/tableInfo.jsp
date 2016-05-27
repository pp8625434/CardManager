<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css"  >
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css"  >
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/table/js/table.js"></script>
		
	</head>

	<body class="adminMain">
		<div class="mainTitle">
			添加/编辑 表单信息
		</div>
		
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/table/saveTables.action" method="post" id="from" name="from" onsubmit="return onSubEdit();">
				<input type="hidden" id="id" name="tables.id" value="<s:property value="tables.id" />">
	    		<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
	    		
				<table class="tableEdit"> 
				
					<tbody>
						<tr>
							<td width="80px">表名称:</td>
							<td>
								<input type="text" id="tableName" name="tables.tableName" maxlength="50" style="width:300px" value="<s:property value="tables.tableName"/>">
								&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr"></span>
								<input type="hidden" id="oldName" name="oldName" value="<s:property value="tables.tableName"/>">
							</td>
						</tr>
						<tr>
							<td width="80px">描述:</td>
							<td>
								<input type="text" id="tableDesc" name="tables.tableDesc" maxlength="50" style="width:300px" value="<s:property value="tables.tableDesc"/>">
							</td>
						</tr>
						
						
					</tbody>
				
			</table>   
			<br/>
	     	<div class="btnBox">
				<input type="submit" id="addBut" value="保存" class="btnInput1" />&nbsp;<input type="button" class="btnInput2 chancleButton" value="取消" " />
			</div>
			
			
			</form>
		</div>
	</body>
</html>