<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.base.framework.BaseConfigHolder"%>

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
			src="${applicationScope.ctx}/admin/moneylog/js/moneyLog.js"></script>
		
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			充值
		</div>

		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/moneylog/saveMoneyLog.action" enctype="multipart/form-data" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
				
				<table class="tableEdit">
					
					<tr>
						<td width="80px">
							卡号:
						</td>
						<td>
							<input type="text" class="input1"  id="cardnum" name="moneyLog.cardnum" maxlength="50" />
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
							<input type="button" class="btnInput3" value="读卡" onclick="readCard()" />
							&nbsp;&nbsp;<span class="fontCom" id="appendStr3"></span>
							<input type="hidden" id="uid" name="moneyLog.uid" value="<s:property value="moneyLog.uid" />" />
						</td>
					</tr>
					<tr>
						<td >
							姓名:
						</td>
						<td>
							<input type="text" class="input1"  id="name"  disabled="disabled">
						</td>
					</tr>
					<tr>
						<td >
							身份证号码:
						</td>
						<td>
							<input type="text" class="input1"  id="identitycard"  disabled="disabled">
						</td>
					</tr>
					<tr>
						<td >
							手机号:
						</td>
						<td>
							<input type="text" class="input1"  id="cellphone"  disabled="disabled">
						</td>
					</tr>
					<tr>
						<td >
							余额:
						</td>
						<td>
							<input type="text" class="input1"  id="money1"  disabled="disabled">
						</td>
					</tr>
					<tr>
						<td >
							积分:
						</td>
						<td>
							<input type="text" class="input1"  id="credit1"  disabled="disabled">
						</td>
					</tr>
					<tr>
						<td >
							充值金额:
						</td>
						<td>
							<input type="text" class="input1"  id="money" name="moneyLog.money" value="<s:property value="0.0"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="15">
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
							<span class="fontCom" id="appendStr3"></span>
						</td>
					</tr>
					<tr>
						<td>
							备注:
						</td>
						<td>
							<textarea rows="6" cols="60" name="moneyLog.remarks" id="remarks" maxlength="200"></textarea>	
						</td>
					</tr>	
				</table>
				<br />
				<div class="btnBox">
					<input type="button" id="addBut" value="充值" onclick="onSubEdit()" class="btnInput1"/>
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" />
					&nbsp;
					<input type="button" id="rechargeLog" value="充值记录" onclick="moneyLog()" class="btnInput1"/>
					
				</div>
			</form>
		</div>
	</body>
</html>