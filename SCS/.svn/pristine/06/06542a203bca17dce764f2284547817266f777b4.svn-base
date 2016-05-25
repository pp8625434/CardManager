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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/internetdeclear/js/internetdeclear.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/internetdeclear/saveInternetdeclear.action" method="post" name="formSearch" id="formSearch" onsubmit="saveInternetdeclear();">
			<input type="hidden" id="cid" name="internetdeclear.id" value="<s:property value="internetdeclear.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		     		<span>
		     			<span>申报单位：<input type="text" name="internetdeclear.unit" id="sbdw" value="<s:property value="internetdeclear.unit"/>" isnull="no" mes="申报单位不能为空"/></span>
		     		</span>
     			</div>
		    	<table class="bordered">
					<tr>
						<td width="25%">申报部门或单位保密负责人</td>
					    <td width="25%"><input type="text" name="internetdeclear.shead" id="sbbm" value="<s:property value="internetdeclear.shead"/>" isnull="no" mes="申报部门或单位保密负责人不能为空"/></td>
					    <td width="25%">联网计算机所在处、室</td>
					    <td width="25%"><input type="text" name="internetdeclear.office" id="szcs" value="<s:property value="internetdeclear.office"/>" isnull="no" mes="联网计算机所在处、室不能为空"/></td>
					</tr>
					<tr>
					    <td>联网机型</td>
					    <td><input type="text" name="internetdeclear.models" id="lwjx" value="<s:property value="internetdeclear.models"/>" isnull="no" mes="联网机型不能为空"/></td>
					    <td>主机（MAC）地址</td>
					    <td><input type="text" name="internetdeclear.haddress" id="zjdz" value="<s:property value="internetdeclear.haddress"/>" isnull="no" mes="主机（MAC）地址不能为空"/></td>
					</tr>
					<tr>
					    <td>硬盘序列号</td>
					    <td><input type="text" name="internetdeclear.serialnum" id="xlh" value="<s:property value="internetdeclear.serialnum"/>" isnull="no" mes="硬盘序列号不能为空"/></td>
					    <td>是否专机专用</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="internetdeclear.isspecial" isnull="no"  mes="请选择是否专机专用" /></td>
					</tr>
					<tr>
					    <td>联网计算机保密责任人</td>
					    <td><input type="text" name="internetdeclear.sresponsible" id="bmzrr" value="<s:property value="internetdeclear.sresponsible"/>" isnull="no" mes="联网计算机保密责任人不能为空"/></td>
					    <td>计算机联网许可证编号</td>
					    <td><input type="text" name="internetdeclear.licensenum" id="xkzbh" value="<s:property value="internetdeclear.licensenum"/>" isnull="no" mes="计算机联网许可证编号不能为空"/></td>
					</tr>
					<tr>
					    <td>联网目的及上网主要事项</td>
					    <td colspan="3"><s:textarea name="internetdeclear.mainmatter" id="zysx" ></s:textarea></td>
					</tr>
					<tr>
					    <td>安全保密措施</td>
					    <td colspan="3"><s:textarea name="internetdeclear.smeasures" id="abcs" ></s:textarea></td>
					</tr>
					<tr>
					    <td>申报部门或单位领导审查意见</td>
					    <td colspan="3"><s:textarea name="internetdeclear.departmentdesc" id="scyj" ></s:textarea></td>
					</tr>
					<tr>
					    <td>公司（院、基地）主管部门审批意见</td>
					    <td colspan="3"><s:textarea name="internetdeclear.comdepartdesc" id="spyj" ></s:textarea></td>
					</tr>
					<tr>
					    <td>备注</td>
					    <td colspan="3" style="text-align:left;">此表须申报单位和公司（院、基地）保密主管部门备案</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/internetdeclear/internetdeclearList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>