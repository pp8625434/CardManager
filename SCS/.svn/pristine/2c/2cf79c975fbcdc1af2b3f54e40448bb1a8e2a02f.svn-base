<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/applykeypart/js/applykeypart.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/applykeypart/applykeypartInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="applykeypart.id" value="<s:property value="applykeypart.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr id="mytr">
					    <td>序号</td>
					    <td>姓名</td>
					    <td>职务</td>
					    <td colspan="2">单位</td>
					</tr>
					<s:iterator value="mlist" status="m">
						<tr id="mytr<s:property value="#m.index+1"/>">
						    <td><s:property value="#m.index+1"/></td>
						    <td><s:property value="name"/></td>
						    <td><s:property value="jobs"/></td>
						    <td colspan="2"><s:property value="workunit"/></td>
						</tr>
					</s:iterator>
					<tr>
						<td>出入人员情况</td>
						<td colspan="4"><p >共计<s:property value="applykeypart.iototal"/>人</p></td>
					</tr>
					<tr>
					    <td>要害部门部位名称</td>
					    <td><s:property value="applykeypart.partname"/></td>
					    <td colspan="2">陪同人员</td>
					    <td colspan="2"><s:property value="applykeypart.acofficials"/></td>
					</tr>
					<tr>
					    <td rowspan="2">进入原因</td>
					    <td rowspan="2"><s:property value="applykeypart.enterreason"/></td>
					    <td>拟进入时间</td>
					    <td colspan="2"><s:date name="applykeypart.enterdate" format="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
					<tr>
					    <td>预计停留时间</td>
					    <td colspan="2"><s:date name="applykeypart.stopdate" format="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
					<tr>
					    <td rowspan="2">申请部门审查意见</td>
					    <td colspan="4"><s:property value="applykeypart.departmentdesc"/></td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="3" style="text-align:left;"><hi:select emu="yesNo" name="applykeypart.departmentsign" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="2">保密要害部门部位所属部门领导意见</td>
					    <td colspan="4" ><s:property value="applykeypart.partheaddesc"/></td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="3" style="text-align:left;"><hi:select emu="yesNo" name="applykeypart.partheadsign" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="5">监督检查记录</td>
					    <td colspan="3">1.来访人员是否在《来访人员登记簿》上进行登记；</td>
					    <td style="text-align:left;"><hi:select emu="yesOrNo" name="applykeypart.isregist" isLabel="true" /></td>
					</tr>
					<tr>
					    <td colspan="3">2.来访人员是否将手机存入手机屏蔽柜；</td>
					    <td style="text-align:left;"><hi:select emu="yesOrNo" name="applykeypart.isstorage" isLabel="true"/></td>
					</tr>
					<tr>
					    <td colspan="3">3.来访人员是否将照相机、录像机、笔记本电脑等具有摄录、无线发射功能的设备带入保密要害部门、部位。</td>
					    <td style="text-align:left;"><hi:select emu="yesOrNo" name="applykeypart.isdeviceentry" isLabel="true"/></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">其他情况记录：</td>
					    <td><s:property value="applykeypart.otherrecord"/></td>
					</tr>
					<tr>
					    <td colspan="3">要害部门、部位所在部门指定旁站陪同人员签字：</td>
					    <td style="text-align:left;"><hi:select  emu="yesNo" name="applykeypart.acofficialssign" isLabel="true"/></td>
					</tr>
				</table>
				<div>
					<span>注：此表存入所进入的保密要害部门、部位所属部门二级保密工作档案。</span>
				</div>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/applykeypart/applykeypartList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>