<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/enumeration/enumerationValue.js"></script>
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			枚举值管理
		</div>
 <div class="mainConText">
		<form action="${applicationScope.ctx}/admin/enumerationValueSave.action" method="post" >
			<!--  'enumerationValue.valueName','enumerationValue.enumeration.id'  -->
    	<input type="hidden" id="enumerationValue.id" name="enumerationValue.id" value="<s:property value="enumerationValue.id" />">
    	<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
    	
			<!-- <input type="hidden" id="" name="pageInfo.currentPage" value="<s:property value="request['pageInfo.currentPage']" />">-->
			
			<!-- 	
			<input type="hidden" id="id" name="id" value="3"/>
			<input type="hidden" id="a.id" name="a.id" value="555"/>
			
				<script>
						alert($j("#id").val());
						alert($j("input[name='a.id']").val());
						//alert($j("input[@name='a.id']").val());
				</script>
			 -->
			<table class="tableEdit"> 
				<tbody>
				  <tr>
						<td width="10%">枚举值名称:</td>
						<td >
							<input type="text" maxlength="25" id="enumerationValue.valueName" onblur="checkOnlyEname();"  class="inputText2"
							name="enumerationValue.valueName" value="<s:property value="enumerationValue.valueName"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_eName" class="fontCom"></span>
							<input type="hidden" id="oldValueName" name="oldValueName" value="<s:property value="enumerationValue.valueName"/>">
						</td>
					</tr>
					<tr>
						<td width="10%">显示信息:</td>
						<td  >
							<input type="text" maxlength="50" id="enumerationValue.displayRef" onblur="check_evalueName();"  class="inputText2"
							name="enumerationValue.displayRef" value="<s:property value="enumerationValue.displayRef"/>">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_eDis" class="fontCom"></span>
						</td>
					</tr>
					<tr>
						<td width="10%">描述:</td>
						<td >
							<input type="text" maxlength="120" class="inputText2" id="enumerationValue.description" name="enumerationValue.description" value="<s:property value="enumerationValue.description"/>">
						</td>
						
					</tr>
					<tr>
						<td width="10%">枚举项名称:</td>
						<td >
							<input type="hidden"  id="enumerationValue.enumeration.id"  name="enumerationValue.enumeration.id" value="<s:property value="enumerationValue.enumeration.id"/>">
							<input type="text" class="inputText2" readonly="readonly" id="enumerationValue.enumeration.enName" onblur="check_eId();"
							 name="enumerationValue.enumeration.enName" value="<s:property value="enumerationValue.enumeration.enName"/>">
							     <input type="button" class="btnInput4" value="选择"  onclick="enumerationValue_lookupPOP('enumeration')" />&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span id="check_eId" class="fontCom"></span>
						</td>
					</tr>
					<tr>
						<td width="10%">排序:</td>
						<td >
							<input type="text" maxlength="4" class="inputText1" id="enumerationValue.pxorder" name="enumerationValue.pxorder" value="<s:property value="enumerationValue.pxorder"/>" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}">
						</td>
					</tr>
					<input type="hidden" id="enumerationValue.creator" name="enumerationValue.creator" value="<s:property value="enumerationValue.creator"/>">
				</tbody>

		</table>  <!-- fields to edit end -->
			<br/>
			<!-- orderDetail edit -->

	<script language="JavaScript">
		var detailNames = Array();
		var detailTabButtons = Array();
	</script>
    	
    	<div class="btnBox">
			<input type="button" class="btnInput1" value="保存" onclick="onSubmitValue();"/>
			&nbsp;
			<input type="button" class="btnInput2 chancleButton" value="取消"
				onclick="javascript:window.location='${applicationScope.ctx}/admin/enumerationValueList.action'" />
			</div>
    	
		</form>
		
		</div>
	</body>
</html>