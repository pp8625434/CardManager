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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/devicepurchase/js/devicePurchase.js"></script>

		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="devicePurchase.id !=null">
			<div class="mainTitle">
				编辑年度设备购置需求
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新增年度设备购置需求
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/devicepurchase/devicePurchaseSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="devicePurchase.id" id="id" value="<s:property value="devicePurchase.id" />"/>
			<input type="hidden" name="devicePurchase.version" id="version" value="<s:property value="devicePurchase.version" />"/>
			<input type="hidden" name="devicePurchase.firstperson" id="firstperson" value="<s:property value="devicePurchase.firstperson" />"/>
			<input type="hidden" name="devicePurchase.firstpid" id="firstpid" value="<s:property value="devicePurchase.firstpid" />"/>
			<input type="hidden" name="devicePurchase.firstsubdate" id="firstsubdate" value="<s:property value="devicePurchase.firstsubdate" />"/>
			<table width="100%" class="bordered">
				<caption>
					设备购置需求表
				</caption>
				<tr>
					<td colspan="3">年度</td>
					<td colspan="3">
						<input type="text" name="devicePurchase.niandu" id="niandu" value="<s:date name="devicePurchase.niandu" format="yyyy"/>"  dtype="date(yyyy-MM-dd HH:mm:ss)"  isnull="no" dorder="1"  mes="年度不能为空" />
					</td>
				</tr>
				<tr>
					<td width="7%">
						申请部门
					</td>
					<td colspan="2">
						<input type="text" name="devicePurchase.applydept" id="applydept" value="<s:property value="devicePurchase.applydept" />" isnull="no" dorder="1"  mes="申请部门不能为空" size="50"/>
						<input type="hidden" name="devicePurchase.applydeptid" id="applydeptid" value="<s:property value="devicePurchase.applydeptid" />"/>
					</td>
					<td width="11%">
						日期
					</td>
					<td colspan="2">
						<input type="text" name="devicePurchase.applydate" id="applydate" value="<s:date name="devicePurchase.applydate" format="yyyy-MM-dd hh:mm:ss"/>"  dtype="date(yyyy-MM-dd HH:mm:ss)"  isnull="no" dorder="2"  mes="日期不能为空" />
					</td>
				</tr>
			
				<tr>
					<td colspan="6">
						购置原因（可分页）
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<textarea rows="3" name="devicePurchase.purchasereason" id="purchasereason"><s:property value="devicePurchase.purchasereason" /></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						本部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="devicePurchase.deptopinion" id="deptopinion"><s:property value="devicePurchase.deptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="devicePurchase.deptsign" id="deptsign" isnull="no" dorder="8" mes="请本部门签字"/>
						<input type="hidden" name="devicePurchase.deptsignid" id="deptsignid" value="<s:property value="devicePurchase.deptsignid" />"/>
						<input type="hidden" name="devicePurchase.signdate" id="signdate" value="<s:property value="devicePurchase.signdate" />"/>
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
