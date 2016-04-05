<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.base.framework.BaseConfigHolder"%>

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
			src="${applicationScope.ctx}/admin/doubledate/js/doubledate.js"></script>
			
		<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/doubledate/js/orgtree.js"></script>
		<!-- 机构选择的js/css 结束 -->
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			<s:if test="doubledate == null">新增活动日信息</s:if>
			<s:if test="doubledate != null">编辑活动日信息</s:if>
			
		</div>

		<div class="mainConText">
			<form action="<%=request.getContextPath()%>/doubledate/saveDoubledate.action" enctype="multipart/form-data" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
				<input type="hidden" id="cid" name="doubledate.id" value="<s:property value="doubledate.id" />">
				<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
				<input type="hidden" id="version" name="doubledate.version" value="<s:property value="doubledate.version" />">
				<input type="hidden" id="addtime" name="doubledate.addtime" value="<s:property value="doubledate.addtime" />">
				<input type="hidden" id="creator" name="doubledate.creator" value="<s:property value="doubledate.creator" />">
				<input type="hidden" id="creator" name="doubledate.isdeleted" value="<s:property value="doubledate.isdeleted" />">
				<table class="tableEdit">
					<tr>
						<td>
							所在社区:
						</td>
						<td>
							<input type="text" id="orgname" readOnly onclick="showMenu(); return false;">
							<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
								<ul id="treeDemo" class="ztree" style="margin-top:0; width:250px;"></ul>
							</div>
							<input type="hidden" name="doubledate.orgid" id="orgid" value="<s:property value="doubledate.orgid"/>" />
							&nbsp;&nbsp;&nbsp;<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td width="80px">
							活动标题:
						</td>
						<td>
							<input type="text" class="input1"  id="doublename" name="doubledate.doublename" value="<s:property value="doubledate.doublename"/>" maxlength="50">
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
							<span class="fontCom" id="appendStr"></span>
						</td>
					</tr>
					<tr>
						<td width="80px">
							双倍时间:
						</td>
						<td>
							<s:textfield name="doubledate.adate" id="adate"
								onclick="WdatePicker({isShowWeek:true,dateFmt:'yyyy-MM-dd'})"
								cssClass="input2" cssStyle="width:145px;" readonly="true"
								disabled='mark in {"view"}?true:false' title="起始时间">
								<s:param name="value">
									<s:date name="doubledate.adate" format="yyyy-MM-dd"/>
								</s:param>
							</s:textfield>
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
							<span class="fontCom" id="appendStr1"></span>
						</td>
					</tr>
					<tr>
						<td>
							倍数
						</td>
						<td>
							<select name="doubledate.times" style="width:50px">
								<option value="2" <s:if test="doubledate.times ==2">selected</s:if>>
									2
								</option>
								<option value="3" <s:if test="doubledate.times ==3">selected</s:if>>
									3
								</option>
								<option value="4" <s:if test="doubledate.times ==4">selected</s:if>>
									4
								</option>
								<option value="5" <s:if test="doubledate.times ==5">selected</s:if>>
									5
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							是否启用
						</td>
						<td>
							<select name="doubledate.isuse" style="width:50px">
								<option value="1" <s:if test="doubledate.isuse ==1">selected</s:if>>
									是
								</option>
								<option value="0" <s:if test="doubledate.isuse ==0">selected</s:if>>
									否
								</option>
							</select>
						</td>
					</tr>
					
				</table>
				<br />
				<div class="btnBox">
					<input type="button" id="addBut" value="保存" onclick="onSubEdit()" class="btnInput1"/>
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" />
				</div>
			</form>
		</div>
	</body>
</html>