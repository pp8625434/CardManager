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
			src="${applicationScope.ctx}/admin/commodity/js/commodity.js"></script>
	</head>
	<body class="adminMain">
		<div class="mainTitle">商品信息详情</div>
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/commodity/commodityInfo.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<input type="hidden" id="mid" name="commodity.id" value="<s:property value="commodity.id" />"> 
				<table class="tableEdit">
					<tr>
						<td width="80px">商铺名称:</td>
						<td>
							<s:property value="commodity.mname"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">商品来源:</td>
						<td>
							<s:property value="commodity.sourcename"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">商品名称:</td>
						<td>
							<s:property value="commodity.cname"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">单价:</td>
						<td>
							<s:property value="commodity.price"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">单位:</td>
						<td>
							<s:property value="commodity.unit"/>
						</td>							
					</tr>
					<tr>
						<td>图片路径</td>
						<td>
							<div id="localImagLogo" style="margin-top: 2px;"><img name="photoimage" id="hpathLogo" src="<s:property value="commodity.imgpath"/>" height="250" width="550" ></div> 
						</td>
					</tr>
					<tr>
						<td width="80px">创建时间:</td>
						<td>
							<s:date name="commodity.createdate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>							
					</tr>
					<tr>
						<td>
							是否上架
						</td>
						<td>
							<s:if test="commodity.isused ==0">否</s:if> 
							<s:if test="commodity.isused ==1">是</s:if>
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