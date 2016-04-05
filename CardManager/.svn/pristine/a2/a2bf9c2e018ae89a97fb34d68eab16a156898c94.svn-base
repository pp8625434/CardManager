<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">﻿
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css"/>
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/enumeration/enumerationValue.js"></script>
		<script>
			function addValueNew(){
				parent.addTab("新增枚举值",ctx+"/admin/enumerationValueView.action?enumerationValue.id=-1","icon icon-nav");
			}
			function enumerationValueEdit(id){
				var para = pageInfo();
				parent.addTab("编辑枚举值",ctx+"/admin/enumerationValueView.action?enumerationValue.id="+id+"&"+para,"icon icon-nav");
			}
		</script>
	</head>

	<body class="adminMain">

		<form name="formSearch" id="formSearch" method="post"
			action="${applicationScope.ctx}/admin/enumerationValueList.action">

			<div class="mainTitle">
				枚举管理
			</div>

			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td width="300">
							<span class="fLBox">枚举值名称:</span>
							<hi:search name="pageInfo.f_displayRef" cssClass="inputtext1" />
						</td>
						<td width="300">
							<span class="fLBox">枚举项名称:</span>
								<hi:search name="pageInfo.enumeration.f_displayRef" cssClass="inputtext1" />
						</td>
						
						<td>
							<input type="button" class="btnInput4" value="查询"
								onClick="javascript:formSearchSubmit()" />
							<!--  onclick="document.formSearch.submit()"  -->
							<s:if test="lookup==null">
								<%--<input type="button" class="btnInput4" value="新建"
									onClick="addValueNew()" />
							--%>
							<z:button  cssClass="btnInput4" rids="${sessionScope.rIDs}" mlinkid="2" parametervlue="type:'enumerationValue'" ></z:button>
							</s:if>
					</tr>
					<input type="hidden" name="pageInfo.sorterName" id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default="id"/>" />
					<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
				</table>
			</div>


			<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit">
						<td width="15">
							<input name="chkall" value="checkbox"
								onClick="javascript:selectAll()" type="checkbox">
						</td>
						<td>
							<a href="javascript:sortBy('displayRef')" id="title_displayRef">枚举值名称</a>
						</td>
						<td>
						<a href="javascript:sortBy('enumeration.displayRef')"
							id="title_enumeration.displayRef">枚举项名称</a>
						</td>
						<td>
							<a href="javascript:sortBy('pxorder')" id="title_pxorder">枚举值代码排序</a>
						</td>		
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
							<s:else>
								查找带回
							</s:else>
						</td>
					</tr>

					<s:iterator value="enumerationValues" status="enumerationValue">
						<tr>
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>"
									type="checkbox">
							</td>
							<td>
								<s:property value="displayRef" />
							</td>
							<td>
								<s:property value="enumeration.displayRef" />
							</td>
							<td>
								<s:property value="pxorder" />
							</td>
							<td>
								<s:if test="lookup==null">
								<z:label rids="${sessionScope.rIDs}" mlinkid="2" parametervlue="id:${id}"></z:label>
								<%--
									 <a href="javascript:enumerationValueEdit(<s:property value="id"/>)">编辑</a>
									<a href="#" onclick="enumerationValue_Delete(<s:property value="id"/>)">删除</a>
								--%>
								</s:if>
								<s:else>
									<span style="cursor: pointer"
										onclick="lookupEnumerationValue('<s:property   value="id"/>','<s:property   value="valueName"/>','<s:property   value="displayRef"/>','<s:property   value="description"/>','<s:property   value="enName"/>')">选择</span>
								</s:else>
							</td>
						</tr>
					</s:iterator>
				</table>
		

				<table >
					<tr>
						<td align="left" class="pageBoxLeft">
							<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>/
							<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
							<%--<s:if test="lookup==null">
				 - <font id="delete" style="cursor: hand"
									onclick="javascript:deleteChecked('enumerationValue')">删除选中</font>
							</s:if>
						--%></td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" 
									url="${applicationScope.ctx}/admin/enumerationValueList.action" />
							</dl>
						</td>
					</tr>
				</table>
		</form>
		

	</body>

</html>