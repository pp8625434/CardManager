<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>本部外来人员参观审批表</title>
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
			    <td>参观目的及参观内容</td>
			    <td colspan="3"><textarea name="mdnr" id="mdnr" isnull="no" mes="参观目的及参观内容不能为空"></textarea></td>
			</tr>
			
			<tr>
				<td>参观人员范围</td>
				<td colspan="3"><input type="text" name="ryfw" id="ryfw" isnull="no" mes="参观人员范围不能为空"/></td>
			</tr>
			<tr>
			    <td width="25%">参观位置</td>
			    <td width="25%"><input type="text" name="cgwz" id="cgwz" isnull="no" mes="参观位置不能为空"/></td>
			    <td width="25%">参观时间</td>
			    <td width="25%"><input type="text" name="cgsj" id="cgsj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="参观时间不能为空"/></td>
			</tr>
			<tr>
			    <td>是否进行拍照、摄录</td>
			    <td colspan="3"><hi:select  type="radio" emu="BM-07-03pzsl" name="pz" isnull="no"  mes="请选择是否进行拍照、摄录" />　《中国航天科技集团公司第九研究院拍摄活动审批表》附后，请一同进行审批。</td>
			</tr>
			<tr>
				<td>保密负责人职责</td>
				<td colspan="3">
					<p style="text-align:left;">1.督促办理参观活动中需要履行的各项审批手续；</p >
			    	<p style="text-align:left;">2.陪同跟踪参观全过程，并提醒、监督参观人员遵守院有关保密管理规定和要求； </p>
			    	<p style="text-align:left;">3.对参观活动需要进入的区域，事先进行检查，对不适宜参观人员知悉的内容，采取必要的安全保密措施； </p>
			     	<p style="text-align:left;">4.对在参观活动中不符合院保密规定要求的事宜及时进行协调，发现有威胁国家秘密安全事宜及时给予制止。 </p>
				</td>
			</tr>
			<tr>
			    <td rowspan="2">承办部门意见</td>
			    <td colspan="3"><textarea name="ldyj" id="ldyj" isnull="no" mes="承办部门意见不能为空"></textarea></td>
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
  		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
