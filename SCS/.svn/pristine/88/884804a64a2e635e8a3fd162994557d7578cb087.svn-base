<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/secretonline/js/secretonline.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/secretonline/secretonlineInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="secretonline.id" value="<s:property value="secretonline.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
					    <td>使用部门</td>
					    <td><s:property value="secretonline.orgname"/></td>
					   	<td>使用人</td>
						<td><s:property value="secretonline.uname"/></td>
					    <td>联网计算机保密责任人</td>
					    <td><s:property value="secretonline.sresponsible"/></td>
						
					</tr>
					<tr>
					    <td>联网计算机型号</td>
					    <td colspan="2"><s:property value="secretonline.models"/></td>
					    <td>计算机联网许可证编号</td>
					    <td colspan="2"><s:property value="secretonline.licensenum"/></td>
					</tr>
					<tr>
						<td colspan="6">
							<p style="text-align:left;">　　本计算机为上国际互联网专用计算机（以下简称上网机），请自觉遵守如下规定:</p >
					    	<p style="text-align:left;">　　一、遵守国家和院有关上网计算机保密管理规定； </p>
					    	<p style="text-align:left;">　　二、使用公用上网机时严格按照要求做好登记记录； </p>
					     	<p style="text-align:left;">　　三、不准在上网计算机内处理、存储涉密信息及办公事务； </p>
					     	<p style="text-align:left;">　　四、不准连接涉密移动存储介质、光盘等涉密载体； </p>
					    	<p style="text-align:left;">　　五、未经审批不得通过上网机向国际互联网发布信息；</p>
					    	<p style="text-align:left;">　　六、在涉密场所内的上网机不得外接多媒体设备或开启多媒体设备功能；</p>
					     	<p style="text-align:left;">　　七、因责任人工作变动不再担任此上网机的责任人时及时通知保密管理部门对其责任人进行变更，重新签定本保密责任书； </p>
					     	<p style="text-align:left;">　　八、因计算机更换主板、硬盘或主机时，及时通知保密管理部门对其进行变更，重新办理上网许可证； </p>
					     	<p style="text-align:left;">　　九、因计算机报废或调做他用时及时通知保密管理部门对其办理注销手续。 </p>
						</td>
					</tr>
					<tr>
		    			<td colspan="2" rowspan="2">责任人签字</td>
		    			<td colspan="4"><p style="text-align:left;">本责任人已清晰阅读并了解上述条款的含义，保证遵守上述条款的约束，并保证将此保密责任书内容传达到每一个使用该上网计算机的人员，并承担监督检查及时报告的责任。</p></td>
		  			</tr>
		  			<tr>
		    			<td>责任人：</td>
		    			<td colspan="3" style="text-align:left;"><hi:select emu="yesNo" name="secretonline.rsign" isnull="no"  mes="请选择责任人签字" isLabel="true"/></td>
		  			</tr>
		  			<tr>
		    			<td colspan="2">保密管理部门领导签字</td>
		    			<td colspan="4" style="text-align:left;"><hi:select emu="yesNo" name="secretonline.dsign" isnull="no"  mes="请选择保密管理部门领导签字" isLabel="true"/></td>
		  			</tr>
		  			<tr>
		    			<td colspan="2">备注</td>
		    			<td colspan="4"><p style="text-align:left;">此表一式三份，联网计算机保密责任人一份，本单位保密管理部门、院行政保卫部各备案一份。</p></td>
		  			</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/secretonline/secretonlineList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>