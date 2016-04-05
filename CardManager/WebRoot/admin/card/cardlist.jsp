<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/card/js/card.js"></script>
	</head>	
	
	<body class="adminMain">
		<div class="mainTitle">
			卡片管理
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/card/cardList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">卡号：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_cardnum" value="<s:property value="pageInfo.f_cardnum"/>" size="30">
						 	<input type="hidden" name="pageInfo.f_cardnum_op" value="">	
						</td>
						<td style="padding:0px">
							<span class="fLBox">　手机号：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_cellphone" value="<s:property value="pageInfo.f_cellphone"/>" size="30">
						 	<input type="hidden" name="pageInfo.f_cellphone_op" value="">	
						</td>
					</tr>
					<tr>
						<td style="padding:0px">
							<span class="fLBox">姓名：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_name" value="<s:property value="pageInfo.f_name"/>" size="30">
						 	<input type="hidden" name="pageInfo.f_name_op" value="">	
						</td>
						<td style="padding:0px">
							<span class="fLBox">身份证号：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_identitycard" value="<s:property value="pageInfo.f_identitycard"/>" size="30">
						 	<input type="hidden" name="pageInfo.f_identitycard_op" value="">	
						</td>
						<!--
						<td style="padding:0px">
							<span class="fLBox">使用状态：</span>
							<select name="state" id="state">
								<option value="" <s:if test="2 == state"> selected </s:if> >全部</option>
				  				<option value="0" <s:if test="0 == state"> selected </s:if> >正常使用</option>
				  				<option value="1" <s:if test="1 == state"> selected </s:if> >停用</option>	
							</select>
						</td>
						 -->	
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="300"></z:button>
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
						<td> <a href="javascript:sortBy('cardnum')" id="title_cardnum">卡号</a></td>
						<td> <a href="javascript:sortBy('cellphone')" id="title_cellphone">手机号</a></td>
						<td> <a href="javascript:sortBy('name')" id="title_name">姓名</a></td>
						<td> <a href="javascript:sortBy('identitycard')" id="title_identitycard">身份证号</a></td>
						<td> <a href="javascript:sortBy('state')" id="title_state">使用状态</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="cardList" status="card">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#card.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox"/>
							</td>
							<td> <s:property  value="cardnum" /></td>
							<td> <s:property  value="cellphone" /></td>
							<td> <s:property  value="name" /></td>
							<td> <s:property  value="identitycard" /></td>
							<td>
								<s:if test="state==null || state==0">
									正常使用
								</s:if>
								<s:elseif test="state==1">
									停用
								</s:elseif>
							</td>
							<td>
								<s:if test="lookup==null">
									<z:label rids="${sessionScope.rIDs}" mlinkid="300" parametervlue="id:${id}"></z:label>
								</s:if>
								<s:else>
									<a href="javascript:selectProject('<s:property value="id"/>','<s:property value="cardnum"/>','<s:property value="name"/>','<s:property value="identitycard"/>','<s:property value="cellphone"/>')">选择</a>
								</s:else>
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
									url="${applicationScope.ctx}/card/cardList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 