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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifieddestroy/js/classifieddestroy.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/classifieddestroy/saveClassifieddestroy.action" method="post" name="formSearch" id="formSearch" onsubmit="saveClassifieddestroy()">
			<input type="hidden" id="cid" name="classifieddestroy.id" value="<s:property value="classifieddestroy.id" />">
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" >
						<tr >
							<td style="padding:0px"><span class="fLBox">所属部门：</span><input type="text" name="classifieddestroy.orgname" id="bm" value="<s:property value="classifieddestroy.orgname"/>" isnull="no" mes="所属部门不能为空"/></td>
			 　　　　			<td style="padding:0px"><span class="fLBox">编号:</span> <input type="text" name="classifieddestroy.dcode" id="bh" value="<s:property value="classifieddestroy.dcode"/>" isnull="no"  mes="编号不能为空"/></td>
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
					    <td><input type="text" name="filename" id="filename" value="<s:property value="filename"/>"/></td>
					    <td><input type="text" name="productunit" id="productunit" value="<s:property value="productunit"/>"/></td>
					    <td><input type="text" name="carriertype" id="carriertype" value="<s:property value="carriertype"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';"/></td>
					    <td><input type="text" name="code" id="code" value="<s:property value="code"/>"/></td>
					    <td><input type="text" name="classification" id="classification" value="<s:property value="classification"/>"/></td>
					    <td><input type="text" name="pages" id="pages" value="<s:property value="pages"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';"/></td>
					    <td><input type="text" name="copies" id="copies" value="<s:property value="copies"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';"/></td>
					    <td><input type="text" name="depository" id="depository" value="<s:property value="depository"/>"/></td>
					</tr>
					</s:iterator>
					<tr>
			    		<td>合计</td>
			   			<td colspan="8"><input type="text" name="classifieddestroy.total" id="hj" value="<s:property value="classifieddestroy.total"/>"/></td>
					</tr>
					<tr style="display:none;">
		    			<td>销毁人</td>
		    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="classifieddestroy.destroyname" isnull="no"  mes="请选择销毁人签字" /></td>
		    			<td>批准人</td>
		    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="classifieddestroy.approvename" isnull="no"  mes="请选择批准人签字" /></td>
		    			<td>接收人</td>
		    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="classifieddestroy.receivename" isnull="no"  mes="请选择接收人签字" /></td>
		  			</tr>
				</table>
				<div>
					<span style="text-align:left;">填表说明：<br/>1.“文号或编号”栏：载体类别为U盘、移动硬盘的填写保密编号和序列号，为计算机硬盘的填写对应计算机资产编号和硬盘序列号。
					<br/>2.“合计”栏：应根据载体类别进行分类合计。如纸介质：_份，U盘：_个，移动硬盘：_个，......。</span>
				</div>
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput5" value="添加载体" onclick="addZt()" />
					&nbsp;
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/classifieddestroy/classifieddestroyList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>