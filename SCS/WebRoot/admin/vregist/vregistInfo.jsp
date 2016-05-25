<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/vregist/js/vregist.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/vregist/vregistInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="vid" name="vregist.id" value="<s:property value="vregist.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<caption>
						来访人员登记簿（样本）
					</caption>
					<tr>
						<td colspan="8">
							<p align="left">
								妥&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;善&nbsp;&nbsp;&nbsp;&nbsp;保&nbsp;&nbsp;&nbsp;&nbsp;管
							</p>
							<p align="left">
								使用完毕部门归档
							</p>
						</td>
					</tr>
	
					<tr>
						<td colspan="8">
							<span>保密要害部门部位来访人员登记薄</span>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div align="right">
								部门部位名称：
							</div>
						</td>
						<td colspan="4">
							<div align="left"><s:property value="vregist.partname"/></div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div align="right">
								房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
							</div>
						</td>
						<td colspan="4">
							<div align="left"><s:property value="vregist.roomcode"/></div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div align="right">
								<s:date name="vregist.recordstartdate" format="yyyy-MM-dd"/>
							</div>
						</td>
						<td colspan="4">
							<div align="left">
								起
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div align="right">
								<s:date name="vregist.recordenddate" format="yyyy-MM-dd"/>
							</div>
						</td>
						<td colspan="4">
							<div align="left">
								至
							</div>
						</td>
					</tr>
					<tr>
						<td width="12%">
							日期
						</td>
						<td width="12%">
							来访人员单位
						</td>
						<td width="12%">
							姓名
						</td>
						<td width="12%">
							来访目的
						</td>
						<td width="12%">
							陪同人员
						</td>
						<td width="16%">
							备注
						</td>
					</tr>
					<s:iterator value="infoList" status="info">
						<tr>
							<td>
								<s:date name="vdate" format="yyyy-MM-dd"/>
							</td>
							<td>
								<s:property value="visitorunit"/>
							</td>
							<td>
								<s:property value="vname"/>
							</td>
							<td>
								<s:property value="vpurpose"/>
							</td>
							<td>
								<s:property value="acofficials"/>
							</td>
							<td>
								<s:date name="vstartdate" format="yyyy-MM-dd HH:mm:ss"/>
							</td>
							<td>
								<s:date name="venddate" format="yyyy-MM-dd HH:mm:ss"/>
							</td>
							<td>
								<s:property value="note"/>
							</td>
						</tr>
					</s:iterator>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/vregist/vregistList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>