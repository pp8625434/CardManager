<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@page import="java.util.List"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/commodity/js/commodity.js"></script>		
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			商品管理
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/admin/commodityList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">商品名称：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_cname" value="<s:property value="pageInfo.f_cname"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_cname_op" value="">	
						</td>
						
						<td style="padding:0px">
							<span class="fLBox">商铺名称：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_mname" value="<s:property value="pageInfo.f_mname"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_mname_op" value="">	
						</td>
						<td style="padding:0px">
						&nbsp;&nbsp;是否上架:
						<select name="isused" id="isused">
							<option value="" >全部</option>
				  			<option value="0" <s:if test="isused.equals(\"0\")"> selected </s:if> >否 </option>
				  			<option value="1" <s:if test="isused.equals(\"1\")"> selected </s:if> >是 </option>	
						</select>
						</td>
						
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="200"></z:button>
					  		</s:if>
					  		<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
					  	</td>
					</tr>
				</table>
			</div>
			<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit">
						<td width="15"><input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox"></td>
						 
						<td width="80"> <a href="javascript:sortBy('cname')" id="title_cname">商品名称</a></td>
						<td> <a href="javascript:sortBy('mname')" id="title_mname">商铺名称</a></td>
						<td> <a href="javascript:sortBy('price')" id="title_price">商品单价</a></td>
						<td> <a href="javascript:sortBy('unit')" id="title_unit">商品单位</a></td>
						<td> <a href="javascript:sortBy('isused')" id="title_isused">是否上架</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="commodityList" status="commodity">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#commodity.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:property  value="cname"/></td>
							<td> <s:property  value="mname"/></td>
							<td> <s:property  value="price"/></td>
							<td> <s:property  value="unit" /></td>
							<td> 
								<s:if test='isused =="0"'>否</s:if> 
								<s:if test='isused =="1"'>是</s:if>
							</td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="200" parametervlue="id:${id}"></z:label>
								</s:if>
		  					</td>
						</tr>
					</s:iterator>				  																															
				</table>
				<table>
					<tr>
						<td align="left" class="pageBoxLeft">
							<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>
							<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
						
						</td>	
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" buttonClass="btnInput4"
									url="${applicationScope.ctx}/admin/commodityList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 