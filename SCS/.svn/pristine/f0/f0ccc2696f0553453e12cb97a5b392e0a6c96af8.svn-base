<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%
	String isdeleted = "0";
	if(request.getAttribute("isdeleted")!=null && request.getAttribute("isdeleted").equals("1")){
		isdeleted ="1";
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css"  >
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css"  >
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/common/validator.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/org/js/org.js"></script>
	</head>

	<body class="adminMain">
		<div class="mainTitle">
			添加/修改机构
		</div>
		
		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/org/orgSave.action" method="post" onsubmit="return onSubEdit();" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
				<input type="hidden" id="id" name="org.id" value="<s:property value="org.id" />">
	    		<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
	    		<input type="hidden" name="isdeleted" id="isdeleted" value="<%=isdeleted %>">
	    		<input type="hidden" name="org.parent" id="orgId" value="<s:property value="parent"/>">
				<table class="tableEdit"> 
				<input type="hidden" name="title" value="机构管理" />
					<thead>
					</thead>
					<tbody>
						<tr>
							<td width="80px">机构名称:</td>
							<td>
								<input type="text" id="name" name="org.name" maxlength="50" style="width:300px" value="<s:property value="org.name"/>">
								&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr"></span>
								<input type="hidden" id="oldName" name="oldName" value="<s:property value="org.name"/>">
							</td>
						</tr>
						<tr>
							<td width="80px">机构简介:</td>
							<td>
								<textarea cols="100" rows="10" class="textareaInput" maxlength="500" style="float:none" name="org.description" id="description" onchange="taCheckOnChange(this.id,150)" onkeyup="taCheckOnKeyUp(this.id,150)" ><s:property value="org.description"/></textarea>
								<font></font>
							</td>
						</tr>
						<tr>
							<td width="10%">机构地址:</td>
							<td>
								<input type="text" id="address" name="org.address" maxlength="100" style="width:300px" value="<s:property value="org.address"/>">
								<input type="hidden" name="org.deleted" value="0"></input>
							</td>
						</tr>
						<tr>
							<td width="10%">类型:</td>
							<td colspan="2">
								<select name="org.orgType">
									<option value="0">地区</option>
									<option value="1">商圈</option>
								</select>
								<s:if test="org.orgType=='1'" ></s:if>
							</td>
						</tr>
						<!-- 
						<tr>
							<td width="10%">是否删除:</td>
							<td colspan="2">
								<s:if test="org.id != null && org.id > 0">
									<s:if test="org.deleted == 0">										
										<input type="radio" name="org.deleted" value="0" checked="checked">否</input>
										<input type="radio"	name="org.deleted" value="1">是</input>
									</s:if>
									<s:else>
										<input type="radio" name="org.deleted" value="0" >否</input>
										<input type="radio"	name="org.deleted" value="1" checked="checked">是</input>
									</s:else>
								</s:if>
								<s:else>
									<input type="radio" name="org.deleted" value="0" checked="checked">否</input>
									<input type="radio"	name="org.deleted" value="1">是</input> 
								</s:else>
							</td>
						</tr>
						-->
					</tbody>
					<tfoot>
						<!-- 
						<tr>
							<td colspan="4">
								&nbsp;
							</td>
						</tr>
						 -->
					</tfoot>
			</table>   
			<br/>
	     	<div class="btnBox">
				<input type="submit" id="addBut" value="保存" class="btnInput1"/>&nbsp;<input type="button" class="btnInput2 chancleButton" value="取消" " />
			</div>
			
			<input type="hidden" name="pageInfo.f_name" id="pageInfo.f_name" value="<%=request.getParameter("pageInfo.f_name")!=null?request.getParameter("pageInfo.f_name"):""%>">
			</form>
		</div>
	</body>
</html>