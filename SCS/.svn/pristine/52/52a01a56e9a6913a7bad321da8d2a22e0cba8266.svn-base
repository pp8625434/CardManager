<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedprint/js/classifiedprint.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
	</head>
	<body class="adminMain">
		<s:if test="classifiedprint.id !=null">
			<div class="mainTitle">
				编辑涉密信息打印输出审批登记
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新增涉密信息打印输出审批登记
			</div>
		</s:else>		
		<form action="${applicationScope.ctx}/classifiedprint/saveClassifiedprint.action" method="post" name="formSearch" id="formSearch" onsubmit="saveClassifiedprint();">
			<input type="hidden" id="cpid" name="classifiedprint.id" value="<s:property value="classifiedprint.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table class="tableEdit">
					<tr>
						<td width="80px">
							日期:
						</td>
						<td>
							<input type="text" name="classifiedprint.registdate" id="rq" dtype="date(yyyy-MM-dd)" value="<s:date name="classifiedprint.registdate" format="yyyy-MM-dd"/>" isnull="no"  mes="登记日期不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							文件资料名称或标题:
						</td>
						<td>
							<input type="text" name="classifiedprint.filename" value="<s:property value="classifiedprint.filename"/>" id="cnrzz" isnull="no" mes="文件资料名称或标题不能为空"/>
							&nbsp;<span style="color: red;">*</span>	
						</td>
					</tr>
					<tr>
						<td>
							密级:
						</td>
						<td>
							<hi:select  type="radio" emu="BM-02-03procls" name="classifiedprint.classification" isnull="no"  mes="请选择密级" />
						</td>
					</tr>
					<tr>
						<td>
							页数（单份）:
						</td>
						<td>
							<input type="text" name="classifiedprint.pages" value="<s:property value="classifiedprint.pages"/>" id="ys" isnull="no" dtype="number" mes="页数不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							份数:
						</td>
						<td>
							<input type="text" name="classifiedprint.copies" value="<s:property value="classifiedprint.copies"/>" id="fs" isnull="no" dtype="number" mes="份数不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							去向或用途:
						</td>
						<td>
							<input type="text" name="classifiedprint.qxyt" id="qxyt" value="<s:property value="classifiedprint.qxyt"/>" null="no" mes="去向或用途不能为空"/>	
						</td>
					</tr>
					<tr>
						<td>
							打印人:
						</td>
						<td>
							<input type="text" name="classifiedprint.printername" id="dyr" value="<s:property value="classifiedprint.printername"/>" isnull="no"  mes="打印人不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							批准人:
						</td>
						<td>
							<input type="text" name="classifiedprint.approver" id="pzr" value="<s:property value="classifiedprint.approver"/>" isnull="no"  mes="批准人不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							登记编号:
						</td>
						<td>
							<input type="text" name="classifiedprint.rcode" id="rcode" value="<s:property value="classifiedprint.rcode"/>" isnull="no"  mes="登记编号不能为空"/>
						</td>
					</tr>
					<tr>
						<td>
							领取人:
						</td>
						<td>
							<input type="text" name="classifiedprint.gname" id="gname" value="<s:property value="classifiedprint.gname"/>" isnull="no"  mes="领取人不能为空"/>
						</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/classifiedprint/classifiedprintList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>