<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>保密补贴扣发通知单（保密办留存）</title>
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
    <form id="formid" action="state" method="post" onsubmit="onForm_Submits();">
     	<div>
     		<span>
     			编号：<input type="text" name="bh" id="bh" isnull="no" mes="编号不能为空"/>
     		</span>
     	</div>
    	<table class="bordered">
			<tr>
				<td width="15%">部门</td>
			    <td width="35%"><input type="text" name="bm" id="bm" isnull="no" mes="部门不能为空"/></td>
			    <td width="15%">姓名</td>
				<td width="35%"><input type="text" name="xm" id="xm" isnull="no" mes="姓名不能为空"/></td>
			</tr>
			<tr>
			    <td>扣发意见</td>
			    <td colspan="3"><textarea name="kfyj" id="kfyj" ></textarea></td>
			</tr>
			<tr>
			    <td>被扣发人签字</td>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="qz" isnull="no"  mes="请选择部门负责人签字" /></td>
			</tr>
			<tr>
    			<td rowspan="2">扣发执行情况</td>
    			<td colspan="3" style="text-align:left;">
    			人力资源部扣发<input type="text" name="kf" id="kf"/>，<input type="text" name="qssj" id="qssj" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="请选择扣发起始日期"/>至<input type="text" name="jzsj" id="jzsj" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="请选择扣发截止日期"/>
    			保密补贴。
    			</td>
  			</tr>
  			<tr>
    			<td>承办人：</td>
    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="cbr" isnull="no"  mes="请选择承办人签字" /></td>
  			</tr>
		</table>
		<br/>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
