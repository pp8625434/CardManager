<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/user/js/tempuser.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/common/validator.js"></script>

	</head>	
	<body class="adminMain">
		<div class="mainTitle">添加联系记录</div>
		
		<form name="addUser" method="post" action="${applicationScope.ctx}/user/saveConnection.action" onkeypress="if(event.keyCode==13||event.which==13){return false;}" enctype="multipart/form-data">
			<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
			<input type="hidden" name="tempUserConnection.tempuserid" value="<s:property value="tempUser.id"/>"/>
			<input type="hidden" name="pageInfo1.f_tempuserid" value="<s:property value="tempUser.id"/>"/>
			<div class="mainConText">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableEdit">
					
						<tr>
							<td>电话</td>
							<td><input type="text" name="tempUserConnection.phonenum" id="phonenum" size="50" maxlength="50" value="<s:property value="tempUser.phonenum"/>" onblur="vailPhoneNum(this)"/>
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="phonenumspan"></span>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="btnInput4" value="查看记录" onclick="javascript:connectionList('<s:property value="tempUser.id"/>')" />
							</td>
						</tr>
						<tr>
							<td>记录</td>
							<td>
								<textarea cols="100" rows="10" class="textareaInput" style="float:none" name="tempUserConnection.description" id="description" onchange="taCheckOnChange(this.id,150)" onkeyup="taCheckOnKeyUp(this.id,150)"></textarea>
								<font></font>&nbsp;&nbsp;<font size="5" color="red">*</font>
							</td>
						</tr>
						
				</table>
				<div class="btnBox">
					<input type="button" value="保存" class="btnInput1" id="addBut" onclick="addConnectionSubmit();">
					<input type="button" value="取消" class="btnInput2 chancleButton" >
				</div>
			</div>
	   </form>
	</body>
</html>