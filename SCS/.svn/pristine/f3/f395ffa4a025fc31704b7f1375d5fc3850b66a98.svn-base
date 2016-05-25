<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>用户头像上传</title>
 
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/yy.css" charset="UTF-8"/>
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/icon.css" charset="UTF-8"/>
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/jquery/css/demo.css" charset="UTF-8"/>

	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/jquery-1.8.0.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/jquery.yy.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${applicationScope.ctx}/admin/jquery/js/yy-lang-zh_CN.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${applicationScope.ctx}/js/common/common.js" charset="UTF-8"></script>
	<script type="text/javascript">
		function checkUpload(){
			var path = document.getElementById("upload").value;
			if(path==""||path=="null"||path=="undefind"){
				//alert("请选择照片位置。");
				parent.$.messager.alert('友情提示', '请选择照片位置。', 'info');
				newForm.action="";
				return false;
			}
			if(!uploadFileValidator("upload")){
				parent.$.messager.alert('友情提示', '上传的照片不存在，请重新选择照片！', 'info');
				return false;
			}
		}
		
	</script>
	<style type="text/css">
	<!--

	.STYLE5 {
		color: red;
		font-size: 16px;
	}
	
	-->
	</style>  
  </head>
  
  <body>
  <form name="newForm" action="${applicationScope.ctx}/user/upload.action" enctype="multipart/form-data" method="post" onsubmit="return checkUpload()" >
  
  <input type="hidden" name="headPicPath" id="headPicPath" value="<%=request.getParameter("headPicPath") %>" />
  
  <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  	<td width="17"></td>
    <td width="968" align="center" valign="middle">
  		<p align="center"></p>
  		<p align="center"></p>
  		<p align="center" class="STYLE5"><b>照片上传</b></p>
  		<p align="center"></p>
  		<table>
	  		<tr>
	   			<td><span style="font-size:12px;">选择照片：</span></td>
	   			<td><input type="file" name="upload" id="upload"></td>
	   			<td><input type="hidden" name="savePath" id="savePath" value="admin/user/photo"></td>
	   			<td><input type="submit" value="上传" id="uploadbutton"/></td>
	    	</tr>	
  		</table>	
  		<p align="center"><span style="font-size:12px;color:#FF0000;">注：建议照片宽高比为72*93</span></p>	
    </td>
  </tr>
  </table>
  </form>
  </body>
</html>
