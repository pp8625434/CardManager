<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css"/>
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/enumeration/enumeration.js"></script>
		<script>
			function addNew(){
				parent.addTab("新增枚举实例",ctx+"/admin/enumerationView.action?enumeration.id=-1","icon icon-nav");
			}
			function enumerationEdit(id){
				var para = pageInfo();
				parent.addTab("编辑枚举实例",ctx+"/admin/enumerationView.action?enumeration.id="+id+"&"+para,"icon icon-nav");
			}
			</script>
	</head>

	<body class="adminMain">

		<div class="mainTitle">
			枚举管理
		</div>

		<form name="formSearch" id="formSearch" method="post" 
			action="${applicationScope.ctx}/admin/enumerationList.action">

			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td width="300">
							<span class="fLBox">枚举名称:</span>
							<hi:search name="pageInfo.f_displayRef" cssClass="inputtext1" />
						</td>
						<td>
							<input type="button" class="btnInput4" value="查询" onClick="javascript:formSearchSubmit()" />
							<!--  onclick="document.formSearch.submit()"  -->
							<s:if test="lookup==null">
								<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}" mlinkid="1" parametervlue="type:'enumeration'"></z:button>
								<%--<input type="button" class="btnInput4" value="新建" onClick="addNew()" />
								--%>
							</s:if>
						</td>
					</tr>

					<input type="hidden" name="pageInfo.sorterName"
						id="pageInfo.sorterName"
						value="<s:property value="pageInfo.sorterName" default=""/>" />
					<input type="hidden" name="pageInfo.sorterDirection"
						id="pageInfo.sorterDirection"
						value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />


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
							<a href="javascript:sortBy('displayRef')" id="title_displayRef">枚举名称</a>
						</td>
						<td>
							<a href="javascript:sortBy('enName')" id="title_enName">枚举代码</a>
						</td>
						
						<%--<td>
							<a href="javascript:sortBy('description')" id="title_description">描述</a>
						</td>
						--%><td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
							<s:else>
										查找带回
									</s:else>
						</td>
					</tr>

					<s:iterator value="enumerations" status="enumeration">
						<tr>
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>"
									type="checkbox">
							</td>
							<td>
								<s:property value="displayRef" />
							</td>
							<td>
								<s:property value="enName" />
								<!--<s:property value="#enumeration.count" /> -->
							</td>
							
							<%--<td>
								<s:property value="description" />
							</td>
							--%>
							<td>
								<s:if test="lookup==null">

									<z:label rids="${sessionScope.rIDs}" mlinkid="1" parametervlue="id:${id }"></z:label>
									<%--<a href="javascript:enumerationEdit(<s:property value="id"/>)">编辑</a>
									<a href="#" onclick="enumeration_Delete(<s:property  value="id"/>);">删除</a>
									--%>
								</s:if>

								<s:else>
									<span style="cursor: pointer"
										onClick="lookupEnumeration('<s:property  value="id"/>','<s:property value="enName"/>','<s:property  value="displayRef"/>','<s:property  value="description"/>')">选择</span>
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
									onclick="javascript:deleteChecked('enumeration')">删除选中</font>
							</s:if>
						--%>
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox" >
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}"
									url="${applicationScope.ctx}/admin/enumerationList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>