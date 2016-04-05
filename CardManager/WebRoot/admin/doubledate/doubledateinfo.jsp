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
			src="${applicationScope.ctx}/admin/doubledate/js/doubledate.js"></script>
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
		<div class="mainTitle">活动日信息详情</div>
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/doubledate/doubledateInfo.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<input type="hidden" id="id" name="doubledate.id" value="<s:property value="doubledate.id" />"> 
				<table class="tableEdit">
					<tr>
						<td width="80px">所在社区:</td>
						<td>
							<span id="orgname"></span>
							<input type="hidden" id="orgid" value="<s:property value="doubledate.orgid"/>" />
						</td>							
					</tr>
					<tr>
						<td width="80px">活动标题:</td>
						<td>
							<s:property value="doubledate.doublename"/>
						</td>							
					</tr>
					
					<tr>
						<td width="80px">双倍时间:</td>
						<td>
							<s:date name="doubledate.adate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">添加时间:</td>
						<td>
							<s:date name="doubledate.addtime" format="yyyy-MM-dd HH:mm:ss"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">倍数:</td>
						<td>
							<s:property value="doubledate.times"/>
						</td>							
					</tr>
					<tr>
						<td>
							是否启用
						</td>
						<td>
							<s:if test="doubledate.isuse ==0">否</s:if> 
							<s:if test="doubledate.isuse ==1">是</s:if>
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