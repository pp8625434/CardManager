<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/ldesc/js/ldesc1.js"></script>
		
		<script type="text/javascript">
			function Ldesc_add(){
				parent.addTab("添加网站图片",ctx+"/admin/toSaveLdesc1.action","icon icon-nav");
			}
			
			function toEditLdesc(ldesc_id){
				var para = pageInfo();
				var s = ctx+"/admin/toSaveLdesc1.action?ldesc_Id="+ldesc_id+"&" + para;
				parent.addTab("更新网站图片",s,"icon icon-nav");
				}
		</script>
	</head>	
	<body class="adminMain">
	
		<div class="mainTitle">
			更新网站图片
		</div>
	
		<form name="formSearch" id="formSearch" method="post" action="${applicationScope.ctx}/admin/ldescList1.action">
				
				
				<div class="mainConText" >
				
					<table class="tableCon" >
								<tr class="TRtit">
								<td width="15">
										<input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox">
								</td>
									<td style="width: 260px"><a href="javascript:sortBy('name')">名称</a></td>
									
									<td><a>操作</a></td>
								</tr>
	
								<s:iterator value="ldescList" status="ldescList">
								<tr class="<s:if test="#ldescList.odd==false">trEven</s:if><s:else> trOdd</s:else>">
								
								<td width="15">
										<input name="orderId" value="<s:property  value="Id"/>" type="checkbox">
								</td>
									<td> 
										<s:property  value="name"/>
									</td>
									
									<td>
										<a href="javascript: toEditLdesc(<s:property  value="id"/>)">编辑</a>
										
				  					</td>
								</tr>
								</s:iterator>	  																									
					</table>
					<table >
						<tr>
							<td align="left" class="pageBoxLeft">
								
							</td>
							<td align="right" class="pageBoxRight">
								
							</td>
						</tr>
					</table>
			    </div>

	   </form>
	</body>
</html>