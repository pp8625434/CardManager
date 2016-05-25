<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/enumeration/enumeration.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/enumeration/enumerationValue.js"></script>
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			枚举管理
		</div>
		<form action="${applicationScope.ctx}/admin/enumerationSave.action" method="post" >
		<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>	
		<input type="hidden" id="enumeration.id" name="enumeration.id" value="<s:property value="enumeration.id" />">	
		<div class="mainConText">
				<table class="tableEdit">
					<tbody>
						<tr>
							<td width="10%">
								枚举名称:
							</td>
							<td>
								<input type="text" size="50" maxlength="25" id="enumeration.enName"
									name="enumeration.enName" onblur="checkOnlyName();" class="inputText2"
									value="<s:property value="enumeration.enName"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="ckeck_name" class="fontCom"></span>
								<input type="hidden" id="oldname" name="oldname" value="<s:property value="enumeration.enName"/>">
							</td>
						</tr>
						<tr>
							<td width="10%">
								显示信息:
							</td>
							<td>
								<input type="text" size="50" maxlength="50" id="enumeration.displayRef"
									name="enumeration.displayRef" onblur="checkNull();" class="inputText2"
									value="<s:property value="enumeration.displayRef"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id=check_dis class="fontCom"></span>
						</tr>
						<tr>
							<td>
								描述:
							</td>
							<td>
								<input type="text" maxlength="120" size="30" id="enumeration.description"
									name="enumeration.description" class="inputText2" 	
									value="<s:property value="enumeration.description"/>">
							</td>

							<input type="hidden" id="enumeration.enumerationType"
								name="enumeration.enumerationType"
								value="<s:property value="enumeration.enumerationType"/>">
							<input type="hidden" id="enumeration.creator"
								name="enumeration.creator"
								value="<s:property value="enumeration.creator"/>">
							<s:if test="enumeration == null">
							<input type="hidden" id="enumeration.isIndexShow" name="enumeration.isIndexShow" value="">
							<input type="hidden" id="enumeration.pxorder" name="enumeration.pxorder" value="">	
							</s:if>
							<s:else>
							<input type="hidden" id="enumeration.isIndexShow" name="enumeration.isIndexShow" value="<s:property value="enumeration.isIndexShow"/>">
							<input type="hidden" id="enumeration.pxorder" name="enumeration.pxorder" value="<s:property value="enumeration.pxorder"/>">							
							</s:else>	
					</tbody>
				</table>
				</div>
				<!-- fields to edit end -->
				<br />
				<!-- orderDetail edit -->
				<%--<div class="siteTag">
					<ul class="tagUl2"><li class="On">通用切换标签</li></ul>
	<div class="siteTagCon">
		<input type="hidden" name="enumerationValue_Length"
						id="enumerationValue_Length"
						value='<s:property value="enumeration.enumerationValues.size" default="0"/>' />
		<table class="EditDetailTable" cellpadding="2" cellspacing="1"
							width="100%">
							<tr>
								<input type="button" class="btnInput3"
									onclick="enumeration_addDetail('enumerationValue')" value="新建"></input>
							</tr>

							<thead>
								<tr >
									<!-- detail header -->
									<td>
										枚举值名称
									</td>
									<td>
										显示信息
									</td>
									<td>
										描述
									</td>
									<!-- <td>枚举项名称</td>-->
									<td>
										操作
									</td>
								</tr>
								<!-- detail header end -->
							</thead>

							<tbody id="enumerationValue_Tbody">
								<s:iterator value="enumeration.enumerationValues"
									status="enumerationValueIndex">
									<tr>
										<!-- detail body -->
										<td>
											<input type="hidden"
												id="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].id"
												name="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].id"
												value="<s:property value="id"/>" />
											<input type="text"
												id="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].valueName"
												name="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].valueName"
												value="<s:property   value="valueName"/>" />
										</td>
										<td>
											<input type="text"
												id="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].displayRef"
												name="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].displayRef"
												value="<s:property   value="displayRef"/>" />
										</td>
										<td>
											<input type="text"
												id="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].description"
												name="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].description"
												value="<s:property   value="description"/>" />
										</td>
										<!-- 
										<td>
											<input type="hidden"
												id="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].enumeration.id"
												name="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].enumeration.id"
												value="<s:property   value="enumeration.id"/>"/>
											<input type="text"
												id="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].enName"
												name="enumeration.enumerationValues[<s:property value="#enumerationValueIndex.count-1"/>].enName"
												value="<s:property   value="enumeration.enName"/>"/>
												<span onclick="enumerationValue_lookupPOP('enumeration',<s:property value="#enumerationValueIndex.count-1"/>)">查找带回</span>
										</td>
										-->
										<td>
											<image src="/images/delete.gif"
												onclick="enumeration_delDetail('<s:property   value="id"/>','enumerationValue','event')">
										</td>
									</tr>
									<!-- detail body end -->
								</s:iterator>
							</tbody>
						</table>
	
	</div>
</div>
				--%>
				<script language="JavaScript">
		var detailNames = Array('枚举值');
		var detailTabButtons = Array('true');
	</script>


			
			
			<div class="btnBox">
			<input type="button" class="btnInput1" value="保存" onclick="onSubmit()" />
			&nbsp;
			<input type="button" class="btnInput2 chancleButton" value="取消"
				onclick="javascript:window.location='${applicationScope.ctx}/admin/enumerationList.action'" />
			</div>
	
</form>
	</body>
</html>