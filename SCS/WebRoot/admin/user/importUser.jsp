<%@ page language="java" pageEncoding="GBK"%>
<%@ include file="/includes/main.jsp"%>
<html>
  <head>
    <title>导入用户</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
	<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
	<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
	
	<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/user/js/orgtree.js"></script>
	<!-- 机构选择的js/css 结束 -->
		
    <script type="text/javascript">
    	function toup(){
    		//if(document.getElementById("orgId").value==""){
    		//	parent.$.messager.alert('友情提示', '请先选择导入用户所属机构', 'info');
    		//	return false;
    		//}
			if(document.getElementById("upload").value==""){
				parent.$.messager.alert('友情提示', '请先选择文件', 'info');
				return false;
			}else{
				var filevalue = document.getElementById("upload").value;
				var dot = filevalue.lastIndexOf('.');
				if(dot>0){
					if(filevalue.substring(dot+1) == "xls"){
						document.importform.action=ctx+"/user/importUser.action";
	    				document.importform.submit();
					}else{
						parent.$.messager.alert('友情提示', '你上传的不是excel 文件，请重新选择!', 'info');
						return false;
					}
				}else{
					parent.$.messager.alert('友情提示', '你上传的不是excel 文件，请重新选择!', 'info');
					return false;
				}
			}
    	}
    	
    	function downmb(){
    		window.open("userimport.xls");
    	}
    </script>
  </head>
  
  <body class="adminMain">
  	<div class="mainTitle">批量导入用户-注意事项</div>
		<form name="importform" method="post" action="" enctype="multipart/form-data">
			<div class="mainConText">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableEdit">
					<tr>
						<td>1、请先选择文件，然后再导入。</td>
						<td> </td>
					</tr>
					<tr>
						<td>2、导入的文件为excel文件，请按模板中的样式制表。</td>
						<td> </td>
					</tr>
					<tr>
						<td>3、请将excel文件中的单元格格式中的数字设置为文本。</td>
						<td></td>
					</tr>
					<tr>
						<td>第一步：下载文件模板&nbsp;&nbsp;<a href="#" onclick="downmb()" style="color:blue;"><u>下载模板</u></a>&nbsp;（点击下载）</td>
						<td></td>
					</tr>
					<!-- 
					<tr>
						<td>
							第二步:选择用户所属机构&nbsp;&nbsp;&nbsp;
							
								<div class="content_wrap" style="width:210px">
									<div class="zTreeDemoBackground left">
										<ul class="list">
											<li class="title"><input onclick="showMenu(); return false;" id="citySel" class="inputtext3" type="text" readonly value="" style="width:200px;"/>&nbsp;
											<a id="menuBtn" href="#" onclick="removeDate()">清空</a></li>
										</ul>
									</div>
								</div>
								<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
									<ul id="treeDemo" class="ztree" style="margin-top:0; width:250px;"></ul>
								</div>
								<input type="hidden" name="orgId" id="orgId">
							
						</td>
					</tr>
					 -->
					<tr>
						<td>第三步：导入用户文件&nbsp;&nbsp;&nbsp;<input type="file" name="upload" id="upload"></td>
						<td></td>
					</tr>
					
				</table>
				<div class="btnBox">
					<input type="button" value="确定" class="btnInput1" id="addBut" onclick="javascript:toup()">
					<input type="button" value="返回" class="btnInput2 chancleButton">
				</div>
			</div>
		</form>
  </body>
</html>
