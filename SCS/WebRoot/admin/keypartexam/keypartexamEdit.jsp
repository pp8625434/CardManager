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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/keypartexam/js/keypartexam.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/keypartexam/saveKeypartexam.action" method="post" name="formSearch" id="formSearch" onsubmit="saveKeypartexam();">
			<input type="hidden" id="cid" name="keypartexam.id" value="<s:property value="keypartexam.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		    		<strong>申报单位：<input type="text" name="keypartexam.notification" id="dw" value="<s:property value="keypartexam.notification"/>" isnull="no" mes="申报单位不能为空"/></strong>
		    	</div>
				<table width="100%" class="bordered">
					<tr>
						<td>申报部门、部位名称</td>
					    <td colspan="3"><input type="text" name="keypartexam.partname" id="mc" value="<s:property value="keypartexam.partname"/>" isnull="no" mes="申报部门、部位名称不能为空"/></td>
					</tr>
					<tr>
						<td>部门、部位负责人</td>
					    <td><input type="text" name="keypartexam.parthead" id="fzr" value="<s:property value="keypartexam.parthead"/>" isnull="no" mes="部门、部位负责人不能为空"/></td>
					    <td>涉密人员总数</td>
					    <td><input type="text" name="keypartexam.totalstaff" id="ryzs" value="<s:property value="keypartexam.totalstaff"/>" isnull="no" dtype="number" mes="涉密人员总数不能为空"/></td>
					</tr>
					<tr>
					    <td>部门、部位所处位置</td>
					    <td colspan="3"><input type="text" name="keypartexam.partlocation" id="wz" value="<s:property value="keypartexam.partlocation"/>" isnull="no" mes="部门、部位所处位置不能为空"/></td>
					</tr>
					<tr>
					    <td>申报理由</td>
					    <td colspan="3"><textarea name="keypartexam.declarationreason" id="sbly" ><s:property value="keypartexam.declarationreason"/></textarea></td>
					</tr>
					<tr>
					    <td>已采取防护措施的情况</td>
					    <td colspan="3"><p style="text-align:left;">&#9670; 人工防护措施：<input type="text" name="keypartexam.apmeasures" id="rgfh" value="<s:property value="keypartexam.apmeasures"/>" isnull="no" mes="人工防护措施不能为空"/></p>      
					    <p style="text-align:left;">&#9670; 物理防护措施：<input type="text" name="keypartexam.ppmeasures" id="wlfh" value="<s:property value="keypartexam.ppmeasures"/>" isnull="no" mes="物理防护措施不能为空"/></p>
					    <p style="text-align:left;">&#9670;技术防护措施：<input type="text" name="keypartexam.tpmeasures" id="jsfh" value="<s:property value="keypartexam.tpmeasures"/>" isnull="no" mes="技术防护措施不能为空"/></p></td>
					</tr>
					<tr>
					    <td>申报单位保密委员会审查意见</td>
					    <td colspan="3">（应明确申报为保密要害部门或保密要害部位。）<textarea name="keypartexam.uscomdesc" id="scyj" ><s:property value="keypartexam.uscomdesc"/></textarea></td>
					</tr>
					<tr>
					    <td>院保密委员会审定意见</td>
					    <td colspan="3"><textarea name="keypartexam.yscomdesc" id="sdyj" ><s:property value="keypartexam.yscomdesc"/></textarea></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/keypartexam/keypartexamList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>