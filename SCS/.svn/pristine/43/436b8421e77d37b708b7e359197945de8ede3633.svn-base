<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>保密要害部门、部位撤销表</title>
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
    	<div>
    		<strong>申报单位：<input type="text" name="dw" id="dw" isnull="no" mes="申报单位不能为空"/></strong>
    	</div>
    	<br/>
		<table width="100%" class="bordered">
			<tr>
			    <td width="25%">部门、部位名称</td>
			    <td colspan="3"><input type="text" name="mc" id="mc" isnull="no" mes="部门、部位名称不能为空"/></td>
			</tr>
			<tr>
			    <td>部门、部位负责人</td>
			    <td width="25%"><input type="text" name="fzr" id="fzr" isnull="no" mes="部门、部位负责人不能为空"/></td>
			    <td width="25%">涉密人员总数</td>
			    <td width="25%"><input type="text" name="zs" id="zs" dtype="number" isnull="no" mes="涉密人员总数不能为空"/></td>
			</tr>
			<tr>
			    <td>部门、部位地理位置</td>
			    <td colspan="3"><input type="text" name="wz" id="wz" isnull="no" mes="部门、部位地理位置不能为空"/></td>
			</tr>
			<tr>
			    <td>原确定性质及理由</td>
			    <td colspan="3"><textarea name="sdyj" id="sdyj" ></textarea></td>
			</tr>
			<tr>
			    <td>撤销理由</td>
			    <td colspan="3"><textarea name="sdyj" id="sdyj" ></textarea></td>
			</tr>
			<tr>
			    <td>申报单位保密委员会意见</td>
			    <td colspan="3"><textarea name="sdyj" id="sdyj" ></textarea></td>
			</tr>
			<tr>
			    <td>院保密委员会意见</td>
			    <td colspan="3"><textarea name="sdyj" id="sdyj" ></textarea></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
