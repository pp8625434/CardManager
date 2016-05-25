<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/smediumborrow/js/smediumborrow.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/smediumborrow/saveSmediumborrow.action" method="post" name="formSearch" id="formSearch" onsubmit="saveSmediumborrow();">
			<input type="hidden" id="cid" name="smediumborrow.id" value="<s:property value="smediumborrow.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		     		<span>
		     			申请日期：<input type="text" name="smediumborrow.applydate" id="sqrq" dtype="date(yyyy-MM-dd)" value="<s:date name="smediumborrow.applydate" format="yyyy-MM-dd"/>" isnull="no"  mes="申请日期不能为空"/>　　　　　　　　　　
		     			编号：<input type="text" name="smediumborrow.scode" id="bh" value="<s:property value="smediumborrow.scode"/>" isnull="no" mes="编号不能为空"/>
		     		</span>
     			</div>
		    	<table class="bordered">
					<tr>
						<td width="14%">借用部门</td>
					    <td width="36%"><input type="text" name="smediumborrow.orgname" id="jybm" value="<s:property value="smediumborrow.orgname"/>" isnull="no" mes="借用部门不能为空"/></td>
					    <td width="14%">借用人</td>
					    <td colspan="2"><input type="text" name="smediumborrow.bname" id="jyr" value="<s:property value="smediumborrow.bname"/>" isnull="no" mes="借用人不能为空"/></td>
					</tr>
					<tr>
					    <td>借用原因</td>
					    <td colspan="4"><s:textarea name="smediumborrow.borrowreason" id="jyyy" ></s:textarea></td>
					</tr>
					<tr>
					    <td>介质编号</td>
					    <td><input type="text" name="smediumborrow.mcode" id="jzbh" value="<s:property value="smediumborrow.mcode"/>" isnull="no" mes="介质编号不能为空"/></td>
					    <td>介质密级</td>
					    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="BM_05-03jzmj" name="smediumborrow.mclassifition" isnull="no"  mes="请选择介质密级" /></td>
					</tr>
					<tr>
					    <td>使用时间</td>
					    <td><input type="text" name="smediumborrow.usedate" id="sysj" dtype="date(yyyy-MM-dd)" value="<s:date name="smediumborrow.applydate" format="yyyy-MM-dd"/>" isnull="no"  mes="使用时间不能为空"/></td>
					    <td>连接设备编号</td>
					    <td colspan="2"><input type="text" name="smediumborrow.dcode" id="sbbh" value="<s:property value="smediumborrow.dcode"/>" isnull="no" mes="连接设备编号不能为空"/></td>
					</tr>
					<tr>
					    <td>存储信息的主要内容</td>
					    <td colspan="2"><input type="text" name="smediumborrow.information" id="zynr" value="<s:property value="smediumborrow.information"/>" isnull="no" mes="存储信息的主要内容不能为空"/></td>
					    <td width="16%">存储信息的最高密级</td>
					    <td width="20%"><input type="text" name="smediumborrow.imaxclassified" id="zgmj" value="<s:property value="smediumborrow.imaxclassified"/>" isnull="no" mes="存储信息的最高密级不能为空"/></td>
					</tr>
					<tr>
					    <td>部门领导审批意见</td>
					    <td colspan="4"><s:textarea name="smediumborrow.departmentdesc" id="spyj" ></s:textarea></td>
					</tr>
					<tr>
					    <td>保密委员会办公室意见</td>
					    <td colspan="4"><s:textarea name="smediumborrow.officedesc" id="bgsyj" ></s:textarea></td>
					</tr>
					<tr>
					    <td>返回信息清除情况</td>
					    <td colspan="4"><s:textarea name="smediumborrow.cleardesc" id="qcqk" ></s:textarea></td>
					</tr>
					<tr>
					    <td>备注</td>
					    <td colspan="4"><s:textarea name="smediumborrow.mark" id="bz" ></s:textarea></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/smediumborrow/smediumborrowList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>