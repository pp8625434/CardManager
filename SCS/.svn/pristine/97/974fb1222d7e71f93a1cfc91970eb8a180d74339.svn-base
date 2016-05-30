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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/changemedium/js/changemedium.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/changemedium/saveChangemedium.action" method="post" name="formSearch" id="formSearch" onsubmit="saveChangemedium()">
			<input type="hidden" id="cid" name="changemedium.id" value="<s:property value="changemedium.id" />">
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" >
						<tr >
							<td style="padding:0px"><span class="fLBox">部门（盖章）：</span><input type="text" name="changemedium.orgname" id="bm" value="<s:property value="changemedium.orgname"/>" isnull="no" mes="部门不能为空"/></td>
			 　　　　			<td style="padding:0px"><span class="fLBox">编号:</span> <input type="text" name="changemedium.code" id="bh" value="<s:property value="changemedium.code"/>" isnull="no"  mes="编号不能为空"/></td>
						</tr>
					</table>
				</div>
		    	<table class="bordered">
		    		<tr>
						<td width="2%" rowspan="2">序号</td>
					    <td width="8%" rowspan="2">类型</td>
					    <td width="10%" rowspan="2">型号及规格</td>
					    <td colspan="4">变更前情况</td>
					    <td colspan="4">变更后情况</td>
					    <td width="10%" rowspan="2">变更原因</td>
					</tr>
					<tr id="mytable">
					    <td width="10%">责任部门</td>
					    <td width="10%">保管人</td>
					    <td width="10%">涉密级别</td>
					    <td width="5%">保密编号</td>
					    <td width="10%">责任部门</td>
					    <td width="10%">保管人</td>
					    <td width="10%">涉密级别</td>
					    <td width="5%">保密编号</td>
					</tr>
					<s:iterator value="cminfoList" status="cminfo">
						<tr id="mytable<s:property value='#cminfo.index+1'/>">
						    <td><s:property value="#cminfo.index+1"/></td>
						    <td><input type="text" name="mtype" id="mtype" value="<s:property value="mtype"/>"/></td>
						   	<td><input type="text" name="specifications" id="specifications" value="<s:property value="specifications"/>"/></td>
						    <td><input type="text" name="bcorgname" id="bcorgname" value="<s:property value="bcorgname"/>"/></td>
						    <td><input type="text" name="bcdepository" id="bcdepository" value="<s:property value="bcdepository"/>"/></td>
						    <td>
						    	<input type="radio" name='bcclassification<s:property value="#cminfo.index+1"/>' value="0" <s:if test="bcclassification ==0">checked="true"</s:if>/>机密
								<input type="radio" name='bcclassification<s:property value="#cminfo.index+1"/>' value="1" <s:if test="bcclassification ==1">checked="true"</s:if>/>秘密
								<input type="radio" name='bcclassification<s:property value="#cminfo.index+1"/>' value="2" <s:if test="bcclassification ==2">checked="true"</s:if>/>内部
								<input type="radio" name='bcclassification<s:property value="#cminfo.index+1"/>' value="3" <s:if test="bcclassification ==3">checked="true"</s:if>/>上网
						    </td>
						    <td><input type="text" name="bcscode" id="bcscode" value="<s:property value="bcscode"/>"/></td>
						    <td><input type="text" name="acorgname" id="acorgname" value="<s:property value="acorgname"/>"/></td>
						    <td><input type="text" name="acdepository" id="acdepository" value="<s:property value="acdepository"/>"/></td>
						    <td>
						    	<input type="radio" name='acclassification<s:property value="#cminfo.index+1"/>' value="0" <s:if test="acclassification ==0">checked="true"</s:if>/>机密
								<input type="radio" name='acclassification<s:property value="#cminfo.index+1"/>' value="1" <s:if test="acclassification ==1">checked="true"</s:if>/>秘密
								<input type="radio" name='acclassification<s:property value="#cminfo.index+1"/>' value="2" <s:if test="acclassification ==2">checked="true"</s:if>/>内部
								<input type="radio" name='acclassification<s:property value="#cminfo.index+1"/>' value="3" <s:if test="acclassification ==3">checked="true"</s:if>/>上网
						    </td>
						    <td><input type="text" name="acscode" id="acscode" value="<s:property value="acscode"/>"/></td>
						    <td><input type="text" name="changereason" id="changereason" value="<s:property value="changereason"/>"/></td>
						</tr>
					</s:iterator>
					<tr>
					    <td colspan="3">部门领导意见</td>
					    <td colspan="4"><s:textarea name="changemedium.departdesc" id="bmldyj" ></s:textarea></td>
					    <td colspan="2">保密办公室意见</td>
					    <td colspan="3"><s:textarea name="changemedium.officedesc" id="bmldyj" ></s:textarea></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput5" value="添加变更详情" onclick="addCminfo()" />
					&nbsp;
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/changemedium/changemediumList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>