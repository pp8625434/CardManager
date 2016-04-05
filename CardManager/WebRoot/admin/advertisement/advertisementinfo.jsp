<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

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
			src="${applicationScope.ctx}/uploader/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" 
			src="${applicationScope.ctx}/admin/advertisement/js/advertisement.js"></script>
		<script type="text/javascript">
			$j(document).ready(function(){
				if($j("#orgid").val()!=""){
					$.ajax({
						type: "POST",
						url: ctx+"/organization/getOrganizationById.action",
						data: {"otagid":$j("#orgid").val()},
						async: false,
						success: function(data){
							$j("#orgname").html(data);
						}
					}); 
				}
			});
		</script>	
	</head>
	<body class="adminMain">
		<div class="mainTitle">广告信息详情</div>
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/advertisement/advertisementInfo.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<input type="hidden" id="id" name="advertisement.id" value="<s:property value="advertisement.id" />"> 
				<table class="tableEdit">
					<tr>
						<td width="80px">所在社区:</td>
						<td>
							<span id="orgname"></span>
							<input type="hidden" id="orgid" value="<s:property value="advertisement.orgid"/>" />
						</td>							
					</tr>
					<tr>
						<td width="80px">广告标题:</td>
						<td>
							<s:property value="advertisement.adname"/>
						</td>							
					</tr>
					<tr>
						<td>图片地址</td>
						<td>
							<div id="localImagLogo" style="margin-top: 2px;"><img name="photoimage" id="hpathLogo" src="<s:property value="advertisement.imgurl"/>" height="250" width="550" ></div> 
						</td>				
					</tr>
					
					<tr>
						<td width="80px">添加时间:</td>
						<td>
							<s:date name="advertisement.addtime" format="yyyy-MM-dd HH:mm:ss"/>
						</td>							
					</tr>
					
					<tr>
						<td>
							是否可用
						</td>
						<td>
							<s:if test="advertisement.isuse ==0">否</s:if> 
							<s:if test="advertisement.isuse ==1">是</s:if>
						</td>
					</tr>
					<tr>
						<td width="80px">排序:</td>
						<td>
							<s:property value="advertisement.pxorder"/>
						</td>							
					</tr>
				</table>
				
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>