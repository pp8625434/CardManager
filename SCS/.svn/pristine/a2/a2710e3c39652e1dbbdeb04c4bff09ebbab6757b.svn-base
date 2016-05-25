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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedrecord/js/classifiedrecord.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/classifiedrecord/saveClassifiedrecord.action" method="post" name="formSearch" id="formSearch" onsubmit="saveClassifiedrecord();">
			<input type="hidden" id="cid" name="classifiedrecord.id" value="<s:property value="classifiedrecord.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
						<td width="20%">复制单位名称</td>
					    <td colspan="2" width="40%"><input type="text" name="classifiedrecord.cuname" id="dwmc" value="<s:property value="classifiedrecord.cuname"/>" isnull="no" mes="复制单位名称不能为空"/></td>
					    <td width="20%">承办部门</td>
					    <td width="20%"><input type="text" name="classifiedrecord.orgname" id="cbbm" value="<s:property value="classifiedrecord.orgname"/>" isnull="no" mes="承办部门不能为空"/></td>
					</tr>
					<tr>
					    <td>检查时间</td>
					    <td colspan="2"><input type="text" name="classifiedrecord.cdate" id="jcsj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="<s:date name="classifiedrecord.cdate" format="yyyy-MM-dd HH:mm:ss"/>" isnull="no"  mes="检查时间不能为空"/></td>
					    <td>检查地点</td>
					    <td><input type="text" name="classifiedrecord.caddress" id="jcdd" value="<s:property value="classifiedrecord.caddress"/>" isnull="no" mes="检查地点不能为空"/></td>
					</tr>
					<tr>
					    <td>检查人员</td>
					    <td colspan="2"><input type="text" name="classifiedrecord.cname" id="jcry" value="<s:property value="classifiedrecord.cname"/>" isnull="no" mes="检查人员不能为空"/></td>
					    <td>保密责任人</td>
					    <td><input type="text" name="classifiedrecord.bmname" id="bmzrr" value="<s:property value="classifiedrecord.bmname"/>" isnull="no" mes="保密责任人不能为空"/></td>
					</tr>
					<tr>
					    <td rowspan="9">监督检查情况记录</td>
					    <td colspan="3" style="text-align:left;">1.复制单位是否为保密行政管理部门审查批准的单位</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.isapproval" isnull="no"  mes="请选择复制单位是否为保密行政管理部门审查批准的单位" /></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">2.复制单位是否为院指定的定点复制单位。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.isdcopy" isnull="no"  mes="请选择复制单位是否为院指定的定点复制单位" /></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">3.是否与该单位签订了保密协议书。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.issignsec" isnull="no"  mes="请选择是否与该单位签订了保密协议书" /></td>
					</tr>
					<tr>
					    <td height="25" colspan="3" style="text-align:left;">4.复制场所是否符合保密要求。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.isconrequire" isnull="no"  mes="请选择复制场所是否符合保密要求" /><br/>备注：<input type="text" name="classifiedrecord.note" id="bz" value="<s:property value="classifiedrecord.note"/>" /></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">5.复制原稿是否收回。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.isback" isnull="no"  mes="请选择复制原稿是否收回" /><br/>共<input type="text" name="classifiedrecord.bcopies" id="gf"  dtype="number" value="<s:property value="classifiedrecord.bcopies"/>"/>份。</td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">6.是否按审批单复制数量制作。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.ismark" isnull="no"  mes="请选择是否按审批单复制数量制作" />
					    <br/>共印<input type="text" name="classifiedrecord.printnum" id="gyfs"  dtype="number" value="<s:property value="classifiedrecord.printnum"/>"/>份，接收<input type="text" name="classifiedrecord.renum" id="jfs"  dtype="number" value="<s:property value="classifiedrecord.renum"/>"/>份。</td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">7.是否对印制过程中产生的成品、半成品、废品以及印制用的各种版、纸、胶片等相关涉密次材料情况进行了清点回收。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.iscountrecycle" isnull="no"  mes="请选择是否进行了清点回收" /><br/>处理方式<input type="text" name="classifiedrecord.handling" id="clfs" value="<s:property value="classifiedrecord.handling"/>"/></td>
					</tr>
					<tr>
					    <td colspan="3" style="text-align:left;">8.有关计算机等印制设备中的电子文档，是否在专人监督下进行了彻底删除。</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="classifiedrecord.isdelete" isnull="no"  mes="请选择是否进行了彻底删除" /><br/>监督人<input type="text" name="classifiedrecord.supervisor" id="jdr" value="<s:property value="classifiedrecord.supervisor"/>"/></td>
					</tr>
					<tr>
					    <td colspan="3">承办部门保密负责人签字：</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="classifiedrecord.departmentsign" isnull="no"  mes="请选择承办部门保密负责人签字意见" /></td>
					</tr>
					<tr>
					    <td rowspan="2">院办公室审核意见</td>
					    <td colspan="4"><textarea name="classifiedrecord.officedesc" id="shyj" ><s:property value="classifiedrecord.officedesc"/></textarea></td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="classifiedrecord.officesign" isnull="no"  mes="请选择院办公室签字意见" /></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/classifiedcopy/classifiedcopyList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>