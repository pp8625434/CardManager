<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifieddestroy/js/classifieddestroy.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/classifieddestroy/classifieddestroyInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="classifieddestroy.id" value="<s:property value="classifieddestroy.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" >
						<tr >
							<td style="padding:0px"><span class="fLBox">所属部门：</span><s:property value="classifieddestroy.orgname"/></td>
			 　　　　			<td style="padding:0px"><span class="fLBox">编号:</span><s:property value="classifieddestroy.dcode"/></td>
						</tr>
					</table>
				</div>
				<table class="bordered">
			    	<tr id="mytr">
						<td width="5%">序号</td>
					    <td width="10%">文件资料名称</td>
					    <td width="10%">制作发文单位</td>
					    <td width="20%">载体类别</td>
					    <td width="10%">文号或编号</td>
					    <td width="15%">密级</td>
					    <td width="5%">页数或容量</td>
					    <td width="5%">份数或数量</td>
					    <td width="10%">保管人</td>
					</tr>
					<s:iterator value="cdinfoList" status="cdinfo">
						<tr id="mytr<s:property value='#cdinfo.index+1'/>">
						    <td><s:property value="#cdinfo.index+1"/></td>
						    <td><s:property value="filename"/></td>
						    <td><s:property value="productunit"/></td>
						    <td><s:property value="carriertype"/></td>
						    <td><s:property value="code"/></td>
						    <td><s:property value="classification"/></td>
						    <td><s:property value="pages"/></td>
						    <td><s:property value="copies"/></td>
						    <td><s:property value="depository"/></td>
						</tr>
					</s:iterator>
					<tr>
			    		<td>合计</td>
			   			<td colspan="8"><s:property value="classifieddestroy.total"/></td>
					</tr>
					<tr>
		    			<td>销毁人</td>
		    			<td colspan="2" style="text-align:left;"><hi:select  emu="yesNo" name="classifieddestroy.destroyname" isLabel="true" /></td>
		    			<td>批准人</td>
		    			<td colspan="2" style="text-align:left;"><hi:select  emu="yesNo" name="classifieddestroy.approvename" isLabel="true" /></td>
		    			<td>接收人</td>
		    			<td colspan="2" style="text-align:left;"><hi:select  emu="yesNo" name="classifieddestroy.receivename" isLabel="true" /></td>
		  			</tr>
				</table>
				<div>
					<span style="text-align:left;">填表说明：<br/>1.“文号或编号”栏：载体类别为U盘、移动硬盘的填写保密编号和序列号，为计算机硬盘的填写对应计算机资产编号和硬盘序列号。
					<br/>2.“合计”栏：应根据载体类别进行分类合计。如纸介质：_份，U盘：_个，移动硬盘：_个，......。</span>
				</div>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/classifieddestroy/classifieddestroyList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>