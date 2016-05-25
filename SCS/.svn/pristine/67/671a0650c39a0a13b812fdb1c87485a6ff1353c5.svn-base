<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>航天科技集团公司（院、基地）计算机国际联网申报审批表</title>
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
    		<span>申报单位：<input type="text" name="sbdw" id="sbdw" isnull="no" mes="申报单位不能为空"/></span>
    	</div>
		<table width="100%" class="bordered">
			<tr>
				<td width="25%">申报部门或单位保密负责人</td>
			    <td width="25%"><input type="text" name="sbbm" id="sbbm" isnull="no" mes="申报部门或单位保密负责人不能为空"/></td>
			    <td width="25%">联网计算机所在处、室</td>
			    <td width="25%"><input type="text" name="szcs" id="szcs" isnull="no" mes="联网计算机所在处、室不能为空"/></td>
			</tr>
			<tr>
			    <td>联网机型</td>
			    <td><input type="text" name="lwjx" id="lwjx" isnull="no" mes="联网机型不能为空"/></td>
			    <td>主机（MAC）地址</td>
			    <td><input type="text" name="zjdz" id="zjdz" isnull="no" mes="主机（MAC）地址不能为空"/></td>
			</tr>
			<tr>
			    <td>硬盘序列号</td>
			    <td><input type="text" name="xlh" id="xlh" isnull="no" mes="硬盘序列号不能为空"/></td>
			    <td>是否专机专用</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="zjzy" isnull="no"  mes="请选择是否专机专用" /></td>
			</tr>
			<tr>
			    <td>联网计算机保密责任人</td>
			    <td><input type="text" name="bmzrr" id="bmzrr" isnull="no" mes="联网计算机保密责任人不能为空"/></td>
			    <td>计算机联网许可证编号</td>
			    <td><input type="text" name="xkzbh" id="xkzbh" isnull="no" mes="计算机联网许可证编号不能为空"/></td>
			</tr>
			<tr>
			    <td>联网目的及上网主要事项</td>
			    <td colspan="3"><textarea name="zysx" id="zysx" ></textarea></td>
			</tr>
			<tr>
			    <td>安全保密措施</td>
			    <td colspan="3"><textarea name="abcs" id="abcs" ></textarea></td>
			</tr>
			<tr>
			    <td>申报部门或单位领导审查意见</td>
			    <td colspan="3"><textarea name="scyj" id="scyj" ></textarea></td>
			</tr>
			<tr>
			    <td>公司（院、基地）主管部门审批意见</td>
			    <td colspan="3"><textarea name="spyj" id="spyj" ></textarea></td>
			</tr>
			<tr>
			    <td>备注</td>
			    <td colspan="3" style="text-align:left;">此表须申报单位和公司（院、基地）保密主管部门备案</td>
			</tr>
  		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
