<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>本部接受采访审批表</title>
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
			    <td width="25%">受访人</td>
			    <td width="25%"><input type="text" name="cbr" id="cbr" isnull="no" mes="受访人不能为空"/></td>
			    <td width="25%">受访人所在部门</td>
			    <td width="25%"><input type="text" name="ssbm" id="ssbm" isnull="no" mes="受访人所在部门不能为空"/></td>
			</tr>
			<tr>
			    <td>受访内容范围</td>
			    <td><input type="text" name="sffw" id="sffw" isnull="no" mes="受访内容范围不能为空"/></td>
			    <td>受访时间</td>
			    <td><input type="text" name="cgsj" id="cgsj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="受访时间不能为空"/></td>
			</tr>
			<tr>
			    <td>采访人</td>
			    <td><input type="text" name="cfr" id="cfr" isnull="no" mes="采访人不能为空"/></td>
			    <td>采访人所在单位</td>
			    <td><input type="text" name="cfrszdw" id="cfrszdw" isnull="no" mes="采访人所在单位不能为空"/></td>
			</tr>
			<tr>
			    <td>采访目的</td>
			    <td colspan="3"><textarea name="cfmd" id="cfmd" isnull="no" mes="采访目的不能为空"></textarea></td>
			</tr>
			<tr>
			    <td rowspan="2">受访人所在部门意见</td>
			    <td colspan="3"><textarea name="bmyj" id="bmyj" isnull="no" mes="受访人所在部门意见不能为空"></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="zrr" isnull="no"  mes="请选择受访人所在部门签字" /></td>
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
			    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="bwhqz" isnull="no"  mes="请选择院保密委员会签字" /></td>
			</tr>
  		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
