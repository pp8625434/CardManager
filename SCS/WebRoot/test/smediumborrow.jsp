<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>专用存储介质借用审批表</title>
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
    		<span>申请日期：<input type="text" name="sqrq" id="sqrq" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="申请日期不能为空"/></span>
    		　　　　　　　　　　　　&nbsp;&nbsp;<span>编号：<input type="text" name="bh" id="bh" isnull="no" mes="编号不能为空"/></span>
    	</div>
		<table width="100%" class="bordered">
			<tr>
				<td width="14%">借用部门</td>
			    <td width="36%"><input type="text" name="jybm" id="jybm" isnull="no" mes="借用部门不能为空"/></td>
			    <td width="14%">借用人</td>
			    <td colspan="2"><input type="text" name="jyr" id="jyr" isnull="no" mes="借用人不能为空"/></td>
			</tr>
			<tr>
			    <td>借用原因</td>
			    <td colspan="4"><textarea name="jyyy" id="jyyy" ></textarea></td>
			</tr>
			<tr>
			    <td>介质编号</td>
			    <td><input type="text" name="jzbh" id="jzbh" isnull="no" mes="介质编号不能为空"/></td>
			    <td>介质密级</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="BM_05-03jzmj" name="jzmj" isnull="no"  mes="请选择介质密级" /></td>
			</tr>
			<tr>
			    <td>使用时间</td>
			    <td><input type="text" name="sysj" id="sysj" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="使用时间不能为空"/></td>
			    <td>连接设备编号</td>
			    <td colspan="2"><input type="text" name="sbbh" id="sbbh" isnull="no" mes="连接设备编号不能为空"/></td>
			</tr>
			<tr>
			    <td>存储信息的主要内容</td>
			    <td colspan="2"><input type="text" name="zynr" id="zynr" isnull="no" mes="存储信息的主要内容不能为空"/></td>
			    <td width="16%">存储信息的最高密级</td>
			    <td width="20%"><input type="text" name="zgmj" id="zgmj" isnull="no" mes="存储信息的最高密级不能为空"/></td>
			</tr>
			<tr>
			    <td>部门领导审批意见</td>
			    <td colspan="4"><textarea name="spyj" id="spyj" ></textarea></td>
			</tr>
			<tr>
			    <td>保密委员会办公室意见</td>
			    <td colspan="4"><textarea name="bgsyj" id="bgsyj" ></textarea></td>
			</tr>
			<tr>
			    <td>返回信息清除情况</td>
			    <td colspan="4"><textarea name="qcqk" id="qcqk" ></textarea></td>
			</tr>
			<tr>
			    <td>备注</td>
			    <td colspan="4"><textarea name="bz" id="bz" ></textarea></td>
			</tr>
  		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
