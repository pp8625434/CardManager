<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="${applicationScope.ctx}/admin/css/content.css" />
<link rel="stylesheet" type="text/css"
	href="${applicationScope.ctx}/admin/css/style.css" />
<script type="text/javascript"
	src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
<title>表单信息</title>
</head>
<body class="adminMain">

	<div class="mainTitle">表信息</div>

	<form name="formSearch" id="formSearch" method="post"
		action="${applicationScope.ctx}/table/findTablesList.action">
		<div class="tagTable">
			<z:button rids="${sessionScope.rIDs}" mlinkid="1000"
				cssClass="btnInput4"></z:button>
		</div>

		<div class="mainConText">
			<table class="tableCon">
				<tr class="TRtit">
					<td width="15"><input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox" /></td>
					<td><a href="javascript:sortBy('tableName')" id="title_tableName">表信息</a></td>
					<td><a>描述</a></td>
					<td>
						<s:if test="lookup==null">操作</s:if> 
						<s:else>查找带回</s:else>
					</td>
				</tr>
			
				<c:forEach var="table" items="${sessionScope.tablesList}" varStatus="s">
				<tr class="<c:if test="#s.odd==false">trEven</c:if>trOdd">
					<td width="15"><input name="orderId" value="${id}" type="checkbox" /></td>
					<td>${table.tableName}</td>
					<td>${table.tableDesc}</td>
					<td>
						<z:label rids="${sessionScope.rIDs}" mlinkid="1000" parametervlue="id:${id}"></z:label>
					</td>
				</tr>
				</c:forEach>
				<%-- <s:iterator value="flowchartList" status="flowchart">
					<tr class="<s:if test="#flowchart.odd==false">trEven</s:if><s:else> trOdd</s:else>">
						<td width="15"><input name="orderId" value="<s:property  value="id"/>" type="checkbox" /></td>
						<td><s:property value="fcname" /></td>
						<td><s:property value="tableDesc" /></td>
						<td>
							<z:label rids="${sessionScope.rIDs}" mlinkid="1000" parametervlue="id:${id}"></z:label>
						</td>
					</tr>
				</s:iterator> --%>
			</table>
			<table>
				<tr>
					<td align="left" class="pageBoxLeft"><font
						style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>/
						<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>

					</td>
					<td align="right" class="pageBoxRight">
						<dl class="pageBox">
							<hi:page pageBeanName="pageInfo"
								currentPage="${pageInfo.currentPage}"
								url="${applicationScope.ctx}/table/findTablesList.action" />
						</dl>
					</td>
				</tr>
			</table>


		</div>
	</form>
</body>
</html>