<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>国际互联网计算机变更审批表</title>
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
     		<span style="text-align:left;">
     			单位/部门（盖章）：<input type="text" name="bm" id="bm" isnull="no" mes="单位/部门不能为空"/>
     		</span>
     	</div>
    	<table class="bordered">
			<tr>
				<td width="2%" rowspan="2">序号</td>
			    <td width="8%" rowspan="2">许可证编号</td>
			    <td colspan="4">变更前情况</td>
			    <td colspan="4">变更后情况</td>
			    <td width="10%" rowspan="2">变更原因</td>
			</tr>
			<tr>
			    <td width="10%">责任部门</td>
			    <td width="10%">责任人</td>
			    <td width="10%">硬盘序列号</td>
			    <td width="10%">MAC地址</td>
			    <td width="10%">责任部门</td>
			    <td width="10%">责任人</td>
			    <td width="10%">硬盘序列号</td>
			    <td width="10%">MAC地址</td>
			</tr>
			<tr>
			    <td>1</td>
			    <td><input type="text" name="xhgg" id="xhgg" isnull="no" mes="许可证编号不能为空"/></td>
			    <td><input type="text" name="qbm" id="qbm" isnull="no" mes="变更前责任部门不能为空"/></td>
			    <td><input type="text" name="qbgr" id="qbgr" isnull="no" mes="变更前责任人不能为空"/></td>
			    <td><input type="text" name="qxlh" id="qxlh" isnull="no" mes="变更前硬盘序列号不能为空"/></td>
			    <td><input type="text" name="qmac" id="qmac" isnull="no" mes="变更前MAC地址不能为空"/></td>
			    <td><input type="text" name="hbm" id="hbm" isnull="no" mes="变更后责任部门不能为空"/></td>
			    <td><input type="text" name="hbgr" id="hbgr" isnull="no" mes="变更后责任人不能为空"/></td>
			    <td><input type="text" name="hxlh" id="hxlh" isnull="no" mes="变更后硬盘序列号不能为空"/></td>
			    <td><input type="text" name="hmac" id="hmac" isnull="no" mes="变更后MAC地址不能为空"/></td>
			    <td><input type="text" name="bgyy" id="bgyy" isnull="no" mes="变更原因不能为空"/></td>
			</tr>
			<tr>
			    <td>2</td>
			    <td><input type="text" name="xhgg1" id="xhgg1"/></td>
			    <td><input type="text" name="qbm1" id="qbm1"/></td>
			    <td><input type="text" name="qbgr1" id="qbgr1"/></td>
			    <td><input type="text" name="qxlh1" id="qxlh1"/></td>
			    <td><input type="text" name="qmac1" id="qmac1"/></td>
			    <td><input type="text" name="hbm1" id="hbm1"/></td>
			    <td><input type="text" name="hbgr1" id="hbgr1"/></td>
			    <td><input type="text" name="hxlh1" id="hxlh1"/></td>
			    <td><input type="text" name="hmac1" id="hmac1"/></td>
			    <td><input type="text" name="bgyy1" id="bgyy1"/></td>
			</tr>
			<tr>
			    <td>3</td>
			    <td><input type="text" name="xhgg2" id="xhgg2"/></td>
			    <td><input type="text" name="qbm2" id="qbm2"/></td>
			    <td><input type="text" name="qbgr2" id="qbgr2"/></td>
			    <td><input type="text" name="qxlh2" id="qxlh2"/></td>
			    <td><input type="text" name="qmac2" id="qmac2"/></td>
			    <td><input type="text" name="hbm2" id="hbm2"/></td>
			    <td><input type="text" name="hbgr2" id="hbgr2"/></td>
			    <td><input type="text" name="hxlh2" id="hxlh2"/></td>
			    <td><input type="text" name="hmac2" id="hmac2"/></td>
			    <td><input type="text" name="bgyy2" id="bgyy2"/></td>
			</tr>
			<tr>
			    <td>4</td>
			    <td><input type="text" name="xhgg3" id="xhgg3"/></td>
			    <td><input type="text" name="qbm3" id="qbm3"/></td>
			    <td><input type="text" name="qbgr3" id="qbgr3"/></td>
			    <td><input type="text" name="qxlh3" id="qxlh3"/></td>
			    <td><input type="text" name="qmac3" id="qmac3"/></td>
			    <td><input type="text" name="hbm3" id="hbm3"/></td>
			    <td><input type="text" name="hbgr3" id="hbgr3"/></td>
			    <td><input type="text" name="hxlh3" id="hxlh3"/></td>
			    <td><input type="text" name="hmac3" id="hmac3"/></td>
			    <td><input type="text" name="bgyy3" id="bgyy3"/></td>
			</tr>
			<tr>
			    <td>5</td>
			    <td><input type="text" name="xhgg4" id="xhgg4"/></td>
			    <td><input type="text" name="qbm4" id="qbm4"/></td>
			    <td><input type="text" name="qbgr4" id="qbgr4"/></td>
			    <td><input type="text" name="qxlh4" id="qxlh4"/></td>
			    <td><input type="text" name="qmac4" id="qmac4"/></td>
			    <td><input type="text" name="hbm4" id="hbm4"/></td>
			    <td><input type="text" name="hbgr4" id="hbgr4"/></td>
			    <td><input type="text" name="hxlh4" id="hxlh4"/></td>
			    <td><input type="text" name="hmac4" id="hmac4"/></td>
			    <td><input type="text" name="bgyy4" id="bgyy4"/></td>
			</tr>
			<tr>
			    <td>6</td>
			    <td><input type="text" name="xhgg5" id="xhgg5"/></td>
			    <td><input type="text" name="qbm5" id="qbm5"/></td>
			    <td><input type="text" name="qbgr5" id="qbgr5"/></td>
			    <td><input type="text" name="qxlh5" id="qxlh5"/></td>
			    <td><input type="text" name="qmac5" id="qmac5"/></td>
			    <td><input type="text" name="hbm5" id="hbm5"/></td>
			    <td><input type="text" name="hbgr5" id="hbgr5"/></td>
			    <td><input type="text" name="hxlh5" id="hxlh5"/></td>
			    <td><input type="text" name="hmac5" id="hmac5"/></td>
			    <td><input type="text" name="bgyy5" id="bgyy5"/></td>
			</tr>
			<tr>
			    <td colspan="2">单位/部门领导意见</td>
			    <td colspan="4"><textarea name="bmldyj" id="bmldyj" ></textarea></td>
			    <td colspan="2">院主管部门审批意见</td>
			    <td colspan="3"><textarea name="bgsyj" id="bgsyj" ></textarea></td>
			</tr>
		</table>
		<br/>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
