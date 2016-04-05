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
			src="${applicationScope.ctx}/admin/advertisement/js/advertisement.js"></script>
			
		<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/advertisement/js/orgtree.js"></script>
		<!-- 机构选择的js/css 结束 -->
		
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			<s:if test="advertisement == null">新增广告信息</s:if>
			<s:if test="advertisement != null">编辑广告信息</s:if>
			
		</div>

		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/advertisement/saveAdvertisement.action" enctype="multipart/form-data" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
				<input type="hidden" id="cid" name="advertisement.id" value="<s:property value="advertisement.id" />">
				<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
				<input type="hidden" id="version" name="advertisement.version" value="<s:property value="advertisement.version" />">
				<input type="hidden" id="addtime" name="advertisement.addtime" value="<s:property value="advertisement.addtime" />">
				<input type="hidden" id="imgurl" name="advertisement.imgurl " value="<s:property value="advertisement.imgurl" />">
				<input type="hidden" id="creator" name="advertisement.creator" value="<s:property value="advertisement.creator" />">
				<s:if test="advertisement.imgurl != null && advertisement.imgurl != ''">
					<input type="hidden" id="imgnull"  value="notNull"/>
				</s:if><s:else>
					<input type="hidden" id="imgnull"  value=""/>
				</s:else>
				<table class="tableEdit">
					
					<tr>
						<td>
							所在社区:
						</td>
						<td>
							<input type="text" id="orgname" readOnly onclick="showMenu(); return false;">
							<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
								<ul id="treeDemo" class="ztree" style="margin-top:0; width:250px;"></ul>
							</div>
							<input type="hidden" name="advertisement.orgid" id="orgid" value="<s:property value="advertisement.orgid"/>" />
							&nbsp;&nbsp;&nbsp;<span style="color: red;">*</span>
						</td>
					</tr>
					
					<tr>
						<td width="80px">
							广告标题:
						</td>
						<td>
							<input type="text" class="input1"  id="adname" name="advertisement.adname" value="<s:property value="advertisement.adname"/>" maxlength="50">
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
							<span class="fontCom" id="appendStr3"></span>
						</td>
					</tr>
					<tr>
						<td>图片地址</td>
						<td>
							<div id="localImagLogo" style="margin-top: 2px;"><img name="photoimage" id="hpathLogo" src="<s:property value="advertisement.imgurl"/>" height="250" width="550" ></div> 
							（只能上传 JPG、JPEG、PNG、GIF、BMP、TIF 格式的图片，建议图片高宽为79*79，图片大小不超过300KB）<br/>
							&nbsp;<s:file name="upload" id="file" label="upload File" cssStyle="width:360px;" onchange="pathChange('Logo', 'file')"/>
						</td>
					</tr>
						
					<tr>
						<td width="80px">
							排序:
						</td>
						<td>
							<input type="text" class="input2" id="pxorder" name="advertisement.pxorder" value="<s:property value="advertisement.pxorder"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="12">
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr1"></span>
						</td>
					</tr>
					
					<tr>
						<td>
							是否可用
						</td>
						<td>
							<select name="advertisement.isuse">
								<option value="1" <s:if test="advertisement.isuse ==1">selected</s:if>>
									是
								</option>
								<option value="0" <s:if test="advertisement.isuse ==0">selected</s:if>>
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