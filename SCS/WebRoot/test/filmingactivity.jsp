<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>本部拍摄活动审批表</title>
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
			    <td width="25%">承办部门</td>
			    <td width="25%"><input type="text" name="cbbm" id="cbbm" isnull="no" mes="承办部门不能为空"/></td>
			    <td width="25%">本次活动保密负责人</td>
			    <td width="25%"><input type="text" name="hdfzr" id="hdfzr" isnull="no" mes="本次活动保密负责人不能为空"/></td>
			</tr>
			<tr>
			    <td>拍摄目的</td>
			    <td colspan="3"><textarea name="md" id="md" isnull="no" mes="拍摄目的不能为空"></textarea></td>
			</tr>
			<tr>
			    <td width="25%">拍摄范围</td>
			    <td width="25%"><input type="text" name="psfw" id="psfw" isnull="no" mes="拍摄范围不能为空"/></td>
			    <td width="25%">拍摄时间</td>
			    <td width="25%"><input type="text" name="pssj" id="pssj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="拍摄时间不能为空"/></td>
			</tr>
			<tr>
			    <td rowspan="3">拍摄内容是否涉密</td>
			    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="BM-07-04psnr" name="pz" isnull="no"  mes="请选择拍摄内容是否涉密" /></td>
			</tr>
			<tr>
				<td>涉密等级：<hi:select  type="radio" emu="BM-07-04psdj" name="smdj" isnull="no"  mes="请选择涉密等级" /></td>
				<td>负责拍摄人员：<input type="text" name="psry" id="psry"/></td>
				<td>承办部门监督人员：<input type="text" name="jdry" id="jdry"/></td>
			<tr>
				<td>保密委员会办公室跟踪情况记录：</td>
				<td colspan="2"><input type="text" name="qkjl" id="qkjl"/></td>
			</tr>
			<tr>
			    <td rowspan="2">承办部门意见</td>
			    <td colspan="3"><textarea name="cbbm" id="ldyj" isnull="no" mes="承办部门意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="cbqz" isnull="no"  mes="请选择承办部门签字" /></td>
			</tr>
			<tr>
			    <td rowspan="2">保密要害部门、部位所在部门意见</td>
			    <td colspan="3"><textarea name="szbm" id="szbm" isnull="no" mes="保密要害部门、部位所在部门意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="zrr" isnull="no"  mes="请选择承办部门签字" /></td>
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
			    <td rowspan="2">院保密委员会意见</td>
			    <td colspan="3"><textarea name="bwh" id="bwh" isnull="no" mes="院保密委员会意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="zrr2" isnull="no"  mes="请选择院保密委员会签字" /></td>
			</tr>
  		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
