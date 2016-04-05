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
			src="${applicationScope.ctx}/admin/card/js/card.js"></script>
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
		<div class="mainTitle">卡片信息详情</div>
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/card/cardInfo.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<input type="hidden" id="cid" name="card.id" value="<s:property value="card.id" />"> 
				<table class="tableEdit">
					<tr>
						<td width="80px">所在社区:</td>
						<td>
							<s:property value="card.orgid"/>
							<input type="hidden" id="orgid" value="<s:property value="card.orgid"/>" />
						</td>							
					</tr>
					<tr>
						<td width="80px">卡号:</td>
						<td>
							<s:property value="card.cardnum"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">姓名:</td>
						<td>
							<s:property value="card.name"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">手机号:</td>
						<td>
							<s:property value="card.cellphone"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">性别:</td>
						<td>
							<s:if test="card.sex==1">
								男
							</s:if>
							<s:elseif test="card.sex==0">
								女
							</s:elseif>
						</td>							
					</tr>
					<tr>
						<td width="80px">身份证号码:</td>
						<td>
							<s:property value="card.identitycard"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">电话:</td>
						<td>
							<s:property value="card.phone"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">住址:</td>
						<td>
							<s:property value="card.address"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">使用状态:</td>
						<td>
							<s:if test="card.state==0">
								正常使用
							</s:if>
							<s:elseif test="card.state==1">
								停用
							</s:elseif>
						</td>							
					</tr>
					<tr>
						<td width="80px">头像地址:</td>
						<td>
							<s:property value="card.headpath"/>
						</td>							
					</tr>
					<s:if test="card.credit == null">
						<tr>
							<td width="80px">积分:</td>
							<td>
								0
							</td>							
						</tr>
					</s:if>
					<s:else>
						<tr>
							<td width="80px">积分:</td>
							<td>
								<s:property value="card.credit"/>
							</td>							
						</tr>
					</s:else>
					<s:if test="card.money == null">
						<tr>
							<td width="80px">余额:</td>
							<td>
								0
							</td>							
						</tr>
					</s:if>
					<s:else>
						<tr>
							<td width="80px">余额:</td>
							<td>
								<s:property value="card.money"/>
							</td>							
						</tr>
					</s:else>
					<s:if test="card.discount == null">
						<tr>
							<td width="80px">折扣:</td>
							<td>
								0
							</td>							
						</tr>
					</s:if>
					<s:else>
						<tr>
							<td width="80px">折扣:</td>
							<td>
								<s:property value="card.discount"/>
							</td>							
						</tr>
					</s:else>
					<tr>
						<td width="80px">办卡时间:</td>
						<td>
							<s:date name="card.addtime" format="yyyy-MM-dd HH:mm:ss" />
						</td>							
					</tr>
					<tr>
						<td width="80px">补卡时间:</td>
						<td>
							<s:date name="card.changetime" format="yyyy-MM-dd HH:mm:ss" />
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