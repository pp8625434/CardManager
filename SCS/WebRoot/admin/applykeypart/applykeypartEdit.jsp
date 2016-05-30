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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/applykeypart/js/applykeypart.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/applykeypart/saveApplykeypart.action" method="post" name="formSearch" id="formSearch" onsubmit="saveApplykeypart()">
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
						    <td><input type="text" name="name" id="xm" value="<s:property value="name"/>"/></td>
						    <td><input type="text" name="jobs" id="zw" value="<s:property value="jobs"/>"/></td>
						    <td colspan="2"><input type="text" name="workunit" id="dw" value="<s:property value="workunit"/>"/></td>
						</tr>
					</s:iterator>
					<tr>
						<td>出入人员情况</td>
						<td colspan="4"><p >共计<input type="text" name="applykeypart.iototal" id="gj" dtype="number" disabled="true" value="<s:property value="applykeypart.iototal"/>" />人</p></td>
					</tr>
					<tr>
					    <td>要害部门部位名称</td>
					    <td><input type="text" name="applykeypart.partname" id="mc" value="<s:property value="applykeypart.partname"/>" isnull="no" mes="要害部门部位名称不能为空"/></td>
					    <td >陪同人员</td>
					    <td colspan="2"><input type="text" name="applykeypart.acofficials" id="pt" value="<s:property value="applykeypart.acofficials"/>"/></td>
					</tr>
					<tr>
					    <td rowspan="2">进入原因</td>
					    <td rowspan="2"><input type="text" name="applykeypart.enterreason" id="yy" value="<s:property value="applykeypart.enterreason"/>"/></td>
					    <td>拟进入时间</td>
					    <td colspan="2"><input type="text" name="applykeypart.enterdate" id="jrsj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="<s:date name="applykeypart.enterdate" format="yyyy-MM-dd HH:mm:ss"/>" isnull="no"  mes="拟进入时间不能为空"/></td>
					</tr>
					<tr>
					    <td>预计停留时间</td>
					    <td colspan="2"><input type="text" name="applykeypart.stopdate" id="tlsj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="<s:date name="applykeypart.stopdate" format="yyyy-MM-dd HH:mm:ss"/>" isnull="no"  mes="预计停留时间不能为空"/></td>
					</tr>
					<tr>
					    <td rowspan="2">申请部门审查意见</td>
					    <td colspan="4"><s:textarea name="applykeypart.departmentdesc" id="scyj" ></s:textarea></td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="applykeypart.departmentsign" isnull="no"  mes="请申请部门审查签字意见" /></td>
					</tr>
					<tr>
					    <td rowspan="2">保密要害部门部位所属部门领导意见</td>
					    <td colspan="4" ><s:textarea name="applykeypart.partheaddesc" id="ldyj" ></s:textarea></td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="applykeypart.partheadsign" isnull="no"  mes="请选择保密要害部门部位所属部门领导意见" /></td>
					</tr>
					<tr>
					    <td rowspan="5">监督检查记录</td>
					    <td colspan="3">1.来访人员是否在《来访人员登记簿》上进行登记；</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="applykeypart.isregist" isnull="no"  mes="请选择来访人员是否在《来访人员登记簿》上进行登记" /></td>
					</tr>
					<tr>
					    <td colspan="3">2.来访人员是否将手机存入手机屏蔽柜；</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="applykeypart.isstorage" isnull="no"  mes="请选择来访人员是否将手机存入手机屏蔽柜" /></td>
					</tr>
					<tr>
					    <td colspan="3">3.来访人员是否将照相机、录像机、笔记本电脑等具有摄录、无线发射功能的设备带入保密要害部门、部位。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="applykeypart.isdeviceentry" isnull="no"  mes="请选择来访人员是否将照相机、录像机、笔记本电脑等具有摄录、无线发射功能的设备带入保密要害部门、部位" /></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">其他情况记录：</td>
					    <td><s:textarea name="applykeypart.otherrecord" id="qt" ></s:textarea></td>
					</tr>
					<tr>
					    <td colspan="3">要害部门、部位所在部门指定旁站陪同人员签字：</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="applykeypart.acofficialssign" isnull="no"  mes="请选择要害部门、部位所在部门指定旁站陪同人员签字" /></td>
					</tr>
				</table>
				<div>
					<span>注：此表存入所进入的保密要害部门、部位所属部门二级保密工作档案。</span>
				</div>
				
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput5" value="添加人员" onclick="addRy()" />
					&nbsp;
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/applykeypart/applykeypartList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>