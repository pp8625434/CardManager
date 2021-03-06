<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/vregist/js/vregist.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/vregist/saveVregist.action" method="post" name="formSearch" id="formSearch" onsubmit="saveVregist()">
			<input type="hidden" id="vid" name="vregist.id" value="<s:property value="vregist.id" />">
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered" id="mytable">
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
								<input type="text" name="vdate2" value="" id="vdate2"  dtype="date(yyyy-MM-dd)" />
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
							<div align="left"><input type="text" name="vregist.partname" id="partname" value="<s:property value="vregist.partname"/>" isnull="no" dorder="1"  mes="部门部位名称不能空" size="20"/></div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div align="right">
								房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
							</div>
						</td>
						<td colspan="4">
							<div align="left"><input type="text" name="vregist.roomcode" id="roomcode" value="<s:property value="vregist.roomcode"/>" isnull="no" dorder="2"  mes="房间号不能空" size="20"/></div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div align="right">
								<input type="text" name="vregist.recordstartdate" id="recordstartdate" value="<s:date name="vregist.recordstartdate"/>" isnull="no" dorder="3" dtype="date(yyyy-MM-dd)" mes="起始日期不能为空" />
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
								<input type="text" name="vregist.recordenddate" id="recordenddate" value="<s:date name="vregist.recordenddate"/>" isnull="no" dorder="4" dtype="date(yyyy-MM-dd)" mes="结束日期不能为空" />
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
						<td width="12%">
							来访时间
						</td>
						<td width="12%">
							离开时间
						</td>
						<td width="16%">
							备注
						</td>
					</tr>
					<s:iterator value="infoList" status="info">
						<tr>
							<td>
								<input type="text" name="vdate" value="<s:date name="vdate" format="yyyy-MM-dd"/>" id="vdate"  dtype="date(yyyy-MM-dd)" />
							</td>
						<td>
								<input type="text" name="visitorunit" id="visitorunit" value="<s:property value="visitorunit"/>" size="50"/>
							</td>
							<td>
								<input type="text" name="vname" id="vname"  value="<s:property value="vname"/>" size="50"/>
							</td>
							<td>
								<input type="text" name="vpurpose" id="vpurpose" value="<s:property value="vpurpose"/>" size="50"/>
							</td>
							<td>
								<input type="text" name="acofficials" id="acofficials" value="<s:property value="acofficials"/>" size="50"/>
							</td>
							<td>
								<input type="text" name="vstartdate" id="vstartdate" value="<s:date name="vstartdate" format="yyyy-MM-dd HH:mm:ss"/>" dtype="date(yyyy-MM-dd HH:mm:ss)" />
							</td>
							<td>
								<input type="text" name="venddate" id="venddate" value="<s:date name="venddate" format="yyyy-MM-dd HH:mm:ss"/>" dtype="date(yyyy-MM-dd HH:mm:ss)" />
							</td>
							<td>
								<textarea rows="3" name="note" id="note"><s:property value="note"/></textarea>
							</td>
						</tr>
					</s:iterator>
				</table>
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput5" value="添加来访人员" onclick="addPerpson()" />
					&nbsp;
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/vregist/vregistList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>