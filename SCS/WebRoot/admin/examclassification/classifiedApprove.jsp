<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/examclassification/js/examclassification.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/examclassification/approveClassified.action" method="post" name="formSearch" id="formSearch" onsubmit="tjClassified();">
			<input type="hidden" id="cid" name="eclassification.id" value="<s:property value="eclassification.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
						<td colspan="2" width="10%">姓名</td>
					    <td width="30%"><input type="text" name="eclassification.ecname" id="xm" value="<s:property value="eclassification.ecname"/>" isnull="no"  mes="姓名不能为空" /></td>
					    <td width="10%">性别</td>
					    <td width="20%"><hi:select  type="radio" emu="sex" name="eclassification.sex" isnull="no"  mes="请选择性别" /></td>
					    <td width="10%">年龄</td>
					    <td colspan="2" width="20%"><input type="text" name="eclassification.age" id="nl" value="<s:property value="eclassification.age"/>" dtype="number" isnull="no"  mes="年龄不能为空"/></td>
					 </tr>
					 <tr>
					    <td colspan="2">所在部门</td>
					    <td><input type="text" name="eclassification.oriname" id="szbm" value="<s:property value="eclassification.oriname"/>" isnull="no"  mes="所在部门不能为空"/></td>
					    <td colspan="2">岗位名称</td>
					    <td colspan="3"><input type="text" name="eclassification.position" id="gwmc" value="<s:property value="eclassification.position"/>" isnull="no"  mes="岗位名称不能为空"/></td>
					 </tr>
					 <tr>
					    <td colspan="2">原岗位名称</td>
					    <td><input type="text" name="eclassification.oposition" id="ygwmc" value="<s:property value="eclassification.oposition"/>" isnull="no"  mes="原岗位名称不能为空"/></td>
					    <td colspan="2">原岗位密级</td>
					    <td colspan="3"><input type="text" name="eclassification.oclassification" id="ygwmj" value="<s:property value="eclassification.oclassification"/>" isnull="no"  mes="原岗位密级不能为空"/></td>
					 </tr>
					 <tr>
					    <td width="10%" >序号</td>
					    <td colspan="4" >涉密项目</td>
					    <td colspan="3">密级</td>
					 </tr>
					<s:iterator value="cpList"  status="cp">
						<tr>
							<td><s:property value="#cp.index+1"/></td>
							<td colspan="4"><s:property value="proname"/></td>
							<td colspan="3">
								<hi:select emu="BM-02-03procls" name="cpList[${cp.count-1}].classification" isLabel="true" />
							</td>
						</tr>
					</s:iterator>
					<tr>
			    		<td colspan="3" rowspan="2">所属部门领导意见</td>
			    		<td colspan="6" style="text-align: left;">拟定为<hi:select  type="select" emu="BM-02-03pidentity" name="eclassification.optype" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
			 		</tr>
					<tr>
						<td colspan="2">签字：</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.leadershipsign" isnull="no"  mes="请选择所属部门领导签字意见" /></td>
					</tr>
					<tr>
					    <td colspan="3" rowspan="2">人力资源部审核意见</td>
					    <td colspan="6" style="text-align: left;">同意拟定为<hi:select  type="select" emu="BM-02-03pidentity" name="eclassification.dptype" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.departmentsign" isnull="no"  mes="请选择人力资源部签字意见" /></td>
					</tr>
					<tr>
					    <td colspan="3" rowspan="2">保密委员会办公室审核意见</td>
					    <td colspan="6" style="text-align: left;">同意拟定为<hi:select  type="select" emu="BM-02-03pidentity" name="eclassification.sptype" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.sofficesign" isnull="no"  mes="请选择保密委员会办公室签字意见" /></td>
					</tr>
					<tr>
					    <td colspan="3" rowspan="2">保密委员会审定意见</td>
					    <td colspan="6" style="text-align: left;">同意该人员确定为<hi:select  type="select" emu="BM-02-03pidentity" name="eclassification.scptype" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
					</tr>
					<tr>
					    <td colspan="2">签字：</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.scomsign" isnull="no"  mes="请选择保密委员会签字意见" /></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="提交" onclick="tjClassified()" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/examclassification/classifiedList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>