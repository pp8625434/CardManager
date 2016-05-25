<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedrecord/js/classifiedrecord.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/classifiedrecord/classifiedrecordInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="classifiedrecord.id" value="<s:property value="classifiedrecord.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
						<td width="20%">复制单位名称</td>
					    <td colspan="2" width="40%"><s:property value="classifiedrecord.cuname"/></td>
					    <td width="20%">承办部门</td>
					    <td width="20%"><s:property value="classifiedrecord.orgname"/></td>
					</tr>
					<tr>
					    <td>检查时间</td>
					    <td colspan="2"><s:date name="classifiedrecord.cdate" format="yyyy-MM-dd HH:mm:ss"/></td>
					    <td>检查地点</td>
					    <td><s:property value="classifiedrecord.caddress"/></td>
					</tr>
					<tr>
					    <td>检查人员</td>
					    <td colspan="2"><s:property value="classifiedrecord.cname"/></td>
					    <td>保密责任人</td>
					    <td><s:property value="classifiedrecord.bmname"/></td>
					</tr>
					<tr>
					    <td rowspan="9">监督检查情况记录</td>
					    <td colspan="3" style="text-align:left;">1.复制单位是否为保密行政管理部门审查批准的单位</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.isapproval" isnull="no"  mes="请选择复制单位是否为保密行政管理部门审查批准的单位" isLabel="true"/></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">2.复制单位是否为院指定的定点复制单位。</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.isdcopy" isnull="no"  mes="请选择复制单位是否为院指定的定点复制单位" isLabel="true"/></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">3.是否与该单位签订了保密协议书。</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.issignsec" isnull="no"  mes="请选择是否与该单位签订了保密协议书" isLabel="true"/></td>
					</tr>
					<tr>
					    <td height="25" colspan="3" style="text-align:left;">4.复制场所是否符合保密要求。</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.isconrequire" isnull="no"  mes="请选择复制场所是否符合保密要求" isLabel="true"/><br/>备注：<s:property value="classifiedrecord.note"/></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">5.复制原稿是否收回。</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.isback" isnull="no"  mes="请选择复制原稿是否收回" isLabel="true"/><br/>共<s:property value="classifiedrecord.bcopies"/>份。</td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">6.是否按审批单复制数量制作。</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.ismark" isnull="no"  mes="请选择是否按审批单复制数量制作" isLabel="true"/>
					    <br/>共印<s:property value="classifiedrecord.printnum"/>份，接收<s:property value="classifiedrecord.renum"/>份。</td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">7.是否对印制过程中产生的成品、半成品、废品以及印制用的各种版、纸、胶片等相关涉密次材料情况进行了清点回收。</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.iscountrecycle" isnull="no"  mes="请选择是否进行了清点回收" isLabel="true"/><br/>处理方式<s:property value="classifiedrecord.handling"/></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">8.有关计算机等印制设备中的电子文档，是否在专人监督下进行了彻底删除。</td>
					    <td style="text-align:left;"><hi:select  emu="yesOrNo" name="classifiedrecord.isdelete" isnull="no"  mes="请选择是否进行了彻底删除" isLabel="true"/><br/>监督人<s:property value="classifiedrecord.supervisor"/></td>
					</tr>
					<tr>
					    <td colspan="3">承办部门保密负责人签字：</td>
					    <td style="text-align:left;"><hi:select emu="yesNo" name="classifiedrecord.departmentsign" isnull="no"  mes="请选择承办部门保密负责人签字意见" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="2">院办公室审核意见</td>
					    <td colspan="4"><s:property value="classifiedrecord.officedesc"/></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="3" style="text-align:left;"><hi:select emu="yesNo" name="classifiedrecord.officesign" isnull="no"  mes="请选择院办公室签字意见" isLabel="true"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/classifiedrecord/classifiedrecordList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>