<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css"
			href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css"
			href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript"
			src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" 
			src="${applicationScope.ctx}/admin/merchant/js/merchant.js"></script>
	</head>
	<body class="adminMain">		
		<s:if test="merchant.id !=null">
			<div class="mainTitle">
				编辑商铺信息
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新增商铺信息
			</div>
		</s:else>
		<form action="${applicationScope.ctx}/merchant/saveMerchant.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="mid" name="merchant.id" value="<s:property value="merchant.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table class="tableEdit">
					<tr>
						<td>
							商铺名称:
						</td>
						<td>
							<input type="text" name="merchant.mname" id="mname" value="<s:property value="merchant.mname"/>" maxlength="100"/>
							<input type="hidden" id="oldMname" value="<s:property value="merchant.mname"/>"/>
							&nbsp;<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td>
							商铺简介:
						</td>
						<td>
							<textarea rows="6" cols="60" name="merchant.mdesc" id="mdesc" maxlength="400"><s:property value="merchant.mdesc"/></textarea>	
						</td>
					</tr>
					<tr>
						<td>
							法人:
						</td>
						<td>
							<input type="text" name="merchant.leader" id="leader" value="<s:property value="merchant.leader"/>" maxlength="25"/>	
						</td>
					</tr>
					<tr>
						<td>
							联系电话:
						</td>
						<td>
							<input type="text" name="merchant.phone" id="phone" value="<s:property value="merchant.phone"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="25"/>
						</td>
					</tr>
					<tr>
						<td>
							地址:
						</td>
						<td>
							<textarea rows="6" cols="60" name="merchant.address" id="address" maxlength="200"><s:property value="merchant.address"/></textarea>	
						</td>
					</tr>
					
				</table>
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput1" value="保存" onclick="saveMerchantInfo()" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/merchant/merchantList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>