<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>保密要害部门、部位审定表</title>
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
				<td>申报部门、部位名称</td>
			    <td><input type="text" name="mc" id="mc" isnull="no" mes="申报部门、部位名称不能为空"/></td>
			</tr>
			<tr>
			    <td>部门、部位所处位置</td>
			    <td><input type="text" name="wz" id="wz" isnull="no" mes="部门、部位所处位置不能为空"/></td>
			</tr>
			<tr>
			    <td>申报理由</td>
			    <td><textarea name="sbly" id="sbly" ></textarea></td>
			</tr>
			<tr>
			    <td>已采取防护措施的情况</td>
			    <td><p style="text-align:left;">&#9670; 人工防护措施：<input type="text" name="rgfh" id="rgfh" isnull="no" mes="人工防护措施不能为空"/></p>      
			    <p style="text-align:left;">&#9670; 物理防护措施：<input type="text" name="wlfh" id="wlfh" isnull="no" mes="物理防护措施不能为空"/></p>
			    <p style="text-align:left;">&#9670;技术防护措施：<input type="text" name="jsfh" id="jsfh" isnull="no" mes="技术防护措施不能为空"/></p></td>
			</tr>
			<tr>
			    <td>申报单位保密委员会审查意见</td>
			    <td>（应明确申报为保密要害部门或保密要害部位。）<textarea name="scyj" id="scyj" ></textarea></td>
			</tr>
			<tr>
			    <td>院保密委员会审定意见</td>
			    <td><textarea name="sdyj" id="sdyj" ></textarea></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
