<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedtz/js/classifiedtz.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/classifiedtz/classifiedtzInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="classifiedtz.id" value="<s:property value="classifiedtz.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
     				<span>
     					所属部门：<s:property value="classifiedtz.orgname"/>　　　　　　　　　　　　　　　　　　　
     			　　　　	登记日期：<s:date name="classifiedtz.registdate" format="yyyy-MM-dd"/>
     				</span>
	     		</div>
	    		<table class="bordered">
					<tr>
						<td width="5%">序号</td>
					    <td width="10%">文件资料名称</td>
					    <td width="10%">制作发文单位</td>
					    <td width="20%">载体类别</td>
					    <td width="10%">文号或编号</td>
					    <td width="15%">密级</td>
					    <td width="5%">页数或容量</td>
					    <td width="5%">份数</td>
					    <td width="10%">使用范围</td>
					    <td width="10%">备注</td>
					</tr>
					<s:iterator value="infoList" status="info">
						<tr>
							<td><s:property value="#info.index+1"/></td>
							<td>
								<s:property value="filename"/>
							</td>
							<td>
								<s:property value="productunit"/>
							</td>
							<td>
								<s:property value="carriertype"/>
							</td>
							<td>
								<s:property value="code"/>
							</td>
							<td>
								<s:property value="classification"/>
							</td>
							<td>
								<s:property value="pages"/>
							</td>
							<td>
								<s:property value="copies"/>
							</td>
							<td>
								<s:property value="usrange"/>
							</td>
							<td>
								<s:property value="note"/>
							</td>
						</tr>
					</s:iterator>
				</table>
				<div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td style="padding:0px"><span class="fLBox">保管人签字：</span><hi:select emu="yesNo" name="classifiedtz.depsign" isnull="no"  mes="请选择保管人签字" isLabel="true"/></td>
			 　　　　			<td style="padding:0px"><span class="fLBox">批准人签字：</span><hi:select emu="yesNo" name="classifiedtz.approvesign" isnull="no"  mes="请选择批准人签字" isLabel="true"/></td>
						</tr>
					</table>
				</div>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/classifiedtz/classifiedtzList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>