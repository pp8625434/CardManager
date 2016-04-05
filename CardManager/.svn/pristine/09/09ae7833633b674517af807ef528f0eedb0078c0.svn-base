<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/common/validator.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/ldesc/js/ldesc1.js"></script>
		
	</head>

	<body class="adminMain">
	
		<div class="mainTitle">
			更新网站图片
		</div>
	
		<form action="${applicationScope.ctx}/admin/saveLdesc1.action" method="post" id="formSearch" name="formSearch" enctype="multipart/form-data">
			<input type="hidden" name="ldesc.Id" value="<s:property value="ldesc.Id"/>" >
			<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
			<div class="mainConText">
				<table class="tableEdit" > 
				  	<tr>
						<td class="EditTableTDKeyLabel">名称:</td>
						<td class="EditTableTDData" >
							<input type="text" style="width: 250px;" class="inputText1" disabled id="ldescName" name="ldesc.name" value="<s:property value="ldesc.name"/>" maxlength="50"  onblur="checkName();">
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="ldesc_name"></span>
						</td>
					</tr>
					
					<tr>
						<td class="EditTableTDLabel">上传图片:</td>
						<td class="EditTableTDData" colspan="3">
							<s:if test="ldesc.imageurl != null">
								<div id="localImagCf" style="margin-top: 2px;"><img name="photoimage" id="hpathCf" src="${applicationScope.ctx}/<s:property value='ldesc.imageurl'/>" height="90" width="130" ></div>
							</s:if>
							<s:else>
								<div id="localImagCf" style="margin-top: 2px;"><img name="photoimage" id="hpathCf" src="${applicationScope.ctx}/images/qsimage.jpg" height="90" width="130" ></div> 
							</s:else>
							（只能上传 JPG、JPEG、PNG、GIF、BMP、TIF 格式的图片，尺寸视网站前台显示而定，图片大小不超过300KB）<br/>
							&nbsp;<s:file name="myFile" id="myFile" label="Certificate File" cssStyle="width:360px;" onchange="pathChange('Cf', 'myFile')"/>
						</td>
					</tr>
					
					<tr>
						<td class="EditTableTDLabel" width="80px;" >链接地址:</td>
						<td class="EditTableTDData" >
							<input type="text" style="width: 250px;" class="inputText1" id="ldesc.imagelink" name="ldesc.imagelink" value="<s:if test="ldesc.Id >0"><s:property value="ldesc.imagelink"/></s:if>" maxlength="50" >
							&nbsp;&nbsp;<span class="fontCom" id="spandesc5">（如：http://www.baidu.com/）（注：不填则表示该图片没有链接）</span>
						</td>
					</tr>
					
				</table>  
			<br/>
			<script language="JavaScript">
				var detailNames = Array();
				var detailTabButtons = Array();
			</script>
			
			<!-- orderDetail edit end  -->
			<div class="btnBox">
					<input type="button" onclick="onSubmit();" value="保存" class="btnInput1">
					
					<input type="button" class="btnInput2 chancleButton" value="返回" />
    		</div>
    		
    		</div>
		</form>
	</body>
</html>
