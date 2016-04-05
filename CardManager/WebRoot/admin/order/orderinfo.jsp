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
			src="${applicationScope.ctx}/admin/order/js/order.js"></script>
	</head>
	<body class="adminMain">
		<div class="mainTitle">订单详情</div>
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/order/orderInfo.action" method="post" name="formSearch" id="formSearch" enctype="multipart/form-data">
				<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
				<input type="hidden" id="oid" name="order.id" value="<s:property value="order.id" />"> 
				<table class="tableEdit">
					<tr>
						<td width="80px">所在社区:</td>
						<td>
							<span id="orgname"></span>
							<input type="hidden" id="orgid" value="<s:property value="order.orgid"/>" />
						</td>							
					</tr>
					<tr>
						<td width="80px">商户名称:</td>
						<td>
							<s:property value="@com.manage.cache.MerchantCache@getMname(order.mid)"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">收银员编号:</td>
						<td>
							<s:property value="order.userid"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">收银员编号:</td>
						<td>
							<s:if test="order.otype==1">大集订单</s:if>
							<s:if test="order.otype==2">自助订单</s:if>
						</td>							
					</tr>
					<tr>
						<td width="80px">卡号:</td>
						<td>
							<s:property value="order.cardnum"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">结账方式:</td>
						<td>
							<s:if test="order.paytype==1">
								现金
							</s:if>
							<s:elseif test="order.paytype==2">
								余额
							</s:elseif>
							<s:elseif test="order.paytype==3">
								现金+余额
							</s:elseif>
						</td>							
					</tr>
					<tr>
						<td width="80px">总价:</td>
						<td>
							<s:property value="order.allprice"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">现金:</td>
						<td>
							<s:property value="order.cash"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">余额:</td>
						<td>
							<s:property value="order.money"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">使用积分:</td>
						<td>
							<s:property value="order.paycreditmoney"/> / <s:property value="order.paycredit"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">折扣:</td>
						<td>
							<s:property value="order.discount"/>
						</td>							
					</tr>
					<tr>
						<td width="80px">消费时间:</td>
						<td>
							<s:date name="order.addtime" format="yyyy-MM-dd HH:mm:ss" />
						</td>							
					</tr>
				</table>
				<table class="tableCon">
					<tr class="TRtit">
						<td>
							商户名称
						</td>
						<td>
							商品名称
						</td>
						<td>
							数量
						</td>
						<td>
							单价
						</td>
						<td>
							小计
						</td>
						<td>
							实际价格
						</td>
						<td>
							折扣
						</td>
						<td>
							添加时间
						</td>
					</tr>
					<s:iterator value="obList" status="orderbill">
						<tr>
							<td>
								<s:property  value="@com.manage.cache.MerchantCache@getMname(mid)"/>
							</td>
							<td>
								<s:property  value="@com.manage.cache.CommodityCache@getCname(cid)"/>
							</td>
							<td>
								<s:property value="count"/>
							</td>
							<td>
								<s:property value="dprice"/>
							</td>
							<td>
								<s:property value="allprice"/>
							</td>
							<td>
								<s:property value="sprice"/>
							</td>
							<td>
								<s:property value="discount"/>
							</td>
							<td>
								<s:date name="addtime" format="yyyy-MM-dd HH:mm:ss" />
							</td>
						</tr>
					</s:iterator>
  					<s:if test="obList == null || obList.size()==0">
						<tr>
							<td colspan="8">暂无信息</td>
						</tr>
					</s:if>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>