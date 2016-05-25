<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/borrowmedium/js/borrowmedium.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
	</head>
	<body class="adminMain">
		<s:if test="borrowmedium.id !=null">
			<div class="mainTitle">
				编辑部门存储介质借用登记
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新增部门存储介质借用登记
			</div>
		</s:else>		
		<form action="${applicationScope.ctx}/borrowmedium/saveBorrowmedium.action" method="post" name="formSearch" id="formSearch" onsubmit="saveBorrowmedium();">
			<input type="hidden" id="cpid" name="borrowmedium.id" value="<s:property value="borrowmedium.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table class="tableEdit">
					<tr>
						<td width="80px">
							日期:
						</td>
						<td>
							<input type="text" name="borrowmedium.borrowdate" id="rq" dtype="date(yyyy-MM-dd)" value="<s:date name="borrowmedium.borrowdate" format="yyyy-MM-dd"/>" isnull="no"  mes="登记日期不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							类型:
						</td>
						<td>
							<hi:select  type="radio" emu="BM-03-04ztlb" name="borrowmedium.mediumtype" isnull="no"  mes="请选择类型" />
						</td>
					</tr>
					<tr>
						<td>
							涉密级别:
						</td>
						<td>
							<hi:select  type="radio" emu="BM-05-04jzmj" name="borrowmedium.mclassified" isnull="no"  mes="请选择涉密级别" />
						</td>
					</tr>
					<tr>
						<td>
							保密编号:
						</td>
						<td>
							<input type="text" name="borrowmedium.scode" value="<s:property value="borrowmedium.scode"/>" id="bh" isnull="no" mes="保密编号不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							连接设备编号:
						</td>
						<td>
							<input type="text" name="borrowmedium.devicecode" value="<s:property value="borrowmedium.devicecode"/>" id="fs" isnull="no" mes="连接设备编号不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							连接设备密级:
						</td>
						<td>
							<hi:select  type="radio" emu="page_27_devsecurity" name="borrowmedium.dclassified" isnull="no"  mes="请选择连接设备密级" />
						</td>
					</tr>
					<tr>
						<td>
							借用期限:
						</td>
						<td>
							<input type="text" name="borrowmedium.ulimite" id="ulimite" value="<s:property value="borrowmedium.ulimite"/>" isnull="no" mes="借用期限不能为空"/>	
						</td>
					</tr>
					<tr>
						<td>
							使用人签字:
						</td>
						<td>
							<input type="text" name="borrowmedium.usesign" id="usesign" value="<s:property value="borrowmedium.usesign"/>" isnull="no"  mes="使用人签字不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							返回时间:
						</td>
						<td>
							<input type="text" name="borrowmedium.receivedate" id="receivedate" dtype="date(yyyy-MM-dd)" value="<s:date name="borrowmedium.receivedate" format="yyyy-MM-dd"/>" isnull="no"  mes="返回时间不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							检查情况:
						</td>
						<td>
							<s:textarea name="borrowmedium.checkdesc" id="checkdesc"></s:textarea>
						</td>
					</tr>
					<tr>
						<td>
							检查人:
						</td>
						<td>
							<input type="text" name="borrowmedium.cname" id="cname" value="<s:property value="borrowmedium.cname"/>" isnull="no"  mes="检查人不能为空"/>
						</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/borrowmedium/borrowmediumList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>