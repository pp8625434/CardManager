<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>保密审查审批登记表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" language="javascript" src="../js/util/jquery-2.2.3.js" ></script>
	<script type="text/javascript" src="../js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript" language="javascript" src="../js/util/formUtil.js" ></script>
	<link rel="stylesheet" type="text/css" href="../style/style.css">
	<script type="text/javascript">
		function onForm_Submits(){
			alert("这是自定义方法");
		}
	</script>
  </head>
  
  <body>
    <form id="formid" action="state2" method="post" onsubmit="onForm_Submits();">
		<table width="100%" class="bordered">
			<tr>
			    <td width="25%">承办人</td>
			    <td width="25%"><input type="text" name="cbr" id="cbr" isnull="no" mes="承办人不能为空"/></td>
			    <td width="25%">所属部门</td>
			    <td width="25%"><input type="text" name="ssbm" id="ssbm" isnull="no" mes="所属部门不能为空"/></td>
			</tr>
			<tr>
			    <td>审查内容</td>
			    <td colspan="3"><textarea name="scnr" id="scnr" isnull="no" mes="审查内容不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>是否涉密</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="zjzy" isnull="no"  mes="请选择是否涉密" /></td>
			    <td>涉密等级</td>
			    <td><input type="text" name="smdj" id="smdj" isnull="no" mes="涉密等级不能为空"/></td>
			</tr>
			<tr>
			    <td>资料用途或接收单位全称</td>
			    <td colspan="3"><input type="text" name="zlyt" id="zlyt" isnull="no" mes="资料用途或接收单位全称不能为空"/></td>
			</tr>
			<tr>
			    <td rowspan="2">部门领导意见</td>
			    <td colspan="3"><textarea name="ldyj" id="ldyj" isnull="no" mes="部门领导意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="zrr" isnull="no"  mes="请选择部门领导签字" /></td>
			</tr>
			<tr>
			    <td rowspan="2">保密委员会办公室意见</td>
			    <td colspan="3"><textarea name="bgsyj" id="bgsyj" isnull="no" mes="保密委员会办公室意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="zrr1" isnull="no"  mes="请选择保密委员会办公室签字" /></td>
			</tr>
			<tr>
			    <td>专家或专家组意见</td>
			    <td colspan="3"><textarea name="zjz" id="zjz" isnull="no" mes="专家或专家组意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td rowspan="2">保密委员会意见</td>
			    <td colspan="3"><textarea name="bwh" id="bwh" isnull="no" mes="保密委员会意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="bwhqz" isnull="no"  mes="请选择保密委员会签字" /></td>
			</tr>
  		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
