<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/advertisement/js/advertisement.js"></script>		
	</head>		
	<body class="adminMain">
		<div class="mainTitle">
			广告管理
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/advertisement/advertisementList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">广告标题：</span>
							<input type="text"  class="inputtext1" name="pageInfo.f_adname" value="<s:property value="pageInfo.f_adname"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_adname_op" value="">	
						</td>
						
						<td style="padding:0px">
						&nbsp;&nbsp;是否可用:
						<select name="isuse" id="isuse">
							<option value="" >全部</option>
				  			<option value="0" <s:if test="isuse.equals(\"0\")"> selected </s:if> >否 </option>
				  			<option value="1" <s:if test="isuse.equals(\"1\")"> selected </s:if> >是 </option>	
						</select>
						</td>
						
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="400"></z:button>
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
						 
						<td width="80"> <a href="javascript:sortBy('adname')" id="title_adname">广告标题</a></td>
						<td> <a href="javascript:sortBy('addtime')" id="title_addtime">添加时间</a></td>
						<td> <a href="javascript:sortBy('isuse')" id="title_isuse">是否可用</a></td>
						<td> <a href="javascript:sortBy('pxorder')" id="title_pxorder">排序</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="advertisementList" status="advertisement">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#advertisement.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox">
							</td>
							<td> <s:property  value="adname"/></td>
							
							<td> <s:date name="addtime" format="yyyy-MM-dd HH:mm:ss"/></td>
							<td> 
								<s:if test='isuse=="0"'>否</s:if> 
								<s:if test='isuse=="1"'>是</s:if>
							</td>
							<td> <s:property  value="pxorder"/></td>
							<td>
								<s:if test="lookup==null">
										<z:label rids="${sessionScope.rIDs}" mlinkid="400" parametervlue="id:${id}"></z:label>
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
									url="${applicationScope.ctx}/advertisement/advertisementList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 