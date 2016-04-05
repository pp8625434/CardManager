<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.base.framework.BaseConfigHolder"%>
<%
String uploadservice = BaseConfigHolder.getUploadfileservice();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/common/validator.js"></script>
		<script type="text/javascript"
			src="${applicationScope.ctx}/admin/commodity/js/commodity.js"></script>

		<script type="text/javascript"
			src="${applicationScope.ctx}/uploader/jquery-1.8.0.min.js"></script>

	</head>
	<body class="adminMain">
		<div class="mainTitle">
			<s:if test="commodity == null">新增商品信息</s:if>
			<s:if test="commodity != null">编辑商品信息</s:if>
			
		</div>

		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/admin/saveCommodity.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
				<input type="hidden" id="id" name="commodity.id" value="<s:property value="commodity.id" />">
				<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
				
				<input type="hidden" id="version" name="commodity.version" value="<s:property value="commodity.version" />">
				
				<input type="hidden" id="createdate" name="commodity.createdate" value="<s:property value="commodity.createdate" />">
				<input type="hidden" id="creator" name="commodity.creator" value="<s:property value="commodity.creator" />">
				<input type="hidden" id="isdeleted" name="commodity.isdeleted" value="<s:property value="commodity.isdeleted" />">
				
				<table class="tableEdit">
					<tr>
						<td width="80px">
							商铺名称:
						</td>
						<td>
							<% 
								Integer shopid = (Integer)request.getAttribute("shopid");
								String shopname = (String)request.getAttribute("shopname");
								if(shopid!=null){
							%>
								<input type="text" class="input1" readOnly id="mname" name="commodity.mname" value="<%=shopname%>" >
								<input type="hidden" id="mid" name="commodity.mid" value="<%=shopid%>" />
							<%}else{ %>
								<input type="text" class="input1" readOnly id="mname" name="commodity.mname" value="<s:property value="commodity.mname"/>" maxlength="100">
								&nbsp;&nbsp;
								<font size="5" color="red">*</font>&nbsp;&nbsp;
								<input type="button" class="btnInput3" value="选择" onclick="selectProject()" />
								&nbsp;&nbsp;<span class="fontCom" id="appendStr3"></span>
								<input type="hidden" id="mid" name="commodity.mid" value="<s:property value="commodity.mid" />" />
							<%} %>
						</td>
					</tr>
					<tr>
						<td width="80px">
							商品来源:
						</td>
						<td>
							<input type="text" class="input1" readOnly id="sourcename" name="commodity.sourcename" value="<s:property value="commodity.sourcename"/>" maxlength="100">
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
							<input type="button" class="btnInput3" value="选择" onclick="selectProjectSource()" />
							&nbsp;&nbsp;<span class="fontCom" id="appendStr4"></span>
							<input type="hidden" id="sourceid" name="commodity.sourceid" value="<s:property value="commodity.sourceid" />" />
						</td>
					</tr>
					<tr>
						<td width="80px">
							商品名称:
						</td>
						<td>
							<input type="text" id="cname" name="commodity.cname" value="<s:property value="commodity.cname"/>" maxlength="200"/>
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr"></span>
							<input type="hidden" id="oldName" name="oldName" value="<s:property value="commodity.cname"/>">
						</td>
					</tr>
					<tr>
						<td width="80px">
							商品单价:
						</td>
						<td>
							<input type="text" class="input2" id="price" name="commodity.price" value="<s:property value="commodity.price"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="12">
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr1"></span>
						</td>
					</tr>
					<tr>
						<td width="80px">
							商品单位:
						</td>
						<td>
							<input type="text" name="commodity.unit" id="unit" value="<s:property value="commodity.unit"/>" maxlength="20"/>
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr2"></span>
						</td>
					</tr>
					<tr>
						<td>图片路径</td>
						<td>
							<div id="localImagLogo" style="margin-top: 2px;"><img name="photoimage" id="hpathLogo" src="<s:property value="commodity.imgpath"/>" height="250" width="550" ></div> 
							（只能上传 JPG、JPEG、PNG、GIF、BMP、TIF 格式的图片，建议图片高宽为79*79，图片大小不超过300KB）<br/>
							&nbsp;<s:file name="upload" id="file" label="upload File" cssStyle="width:360px;" onchange="pathChange('Logo', 'file')"/>
						</td>
					</tr>
					<tr>
						<td>
							是否上架
						</td>
						<td>
							<select name="commodity.isused">
								<option value="1" <s:if test="commodity.isused ==1">selected</s:if>>
									是
								</option>
								<option value="0" <s:if test="commodity.isused ==0">selected</s:if>>
									否
								</option>
							</select>
						</td>
					</tr>
					
				</table>
				<br />
				<div class="btnBox">
					<input type="button" id="addBut" value="保存" onclick="onSubEdit()" class="btnInput1"/>
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" />
				</div>
			</form>
		</div>
	</body>
</html>