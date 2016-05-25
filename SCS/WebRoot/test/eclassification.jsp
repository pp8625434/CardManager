<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>涉密人员密级审定表</title>
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
    <form id="formid" action="state1" method="post" onsubmit="onForm_Submits();">
		<table width="100%" class="bordered">
			<tr>
				<td colspan="2" width="10%">姓名</td>
			    <td width="30%"><input type="text" name="xm" id="xm" isnull="no"  mes="姓名不能为空" /></td>
			    <td width="10%">性别</td>
			    <td width="20%"><hi:select  type="radio" emu="sex" name="xb" isnull="no"  mes="请选择性别" /></td>
			    <td width="10%">年龄</td>
			    <td colspan="2" width="20%"><input type="text" name="nl" id="nl" dtype="number" isnull="no"  mes="年龄不能为空"/></td>
			 </tr>
			 <tr>
			    <td colspan="2">所在部门</td>
			    <td><input type="text" name="szbm" id="szbm" isnull="no"  mes="所在部门不能为空"/></td>
			    <td colspan="2">岗位名称</td>
			    <td colspan="3"><input type="text" name="gwmc" id="gwmc" isnull="no"  mes="岗位名称不能为空"/></td>
			 </tr>
			 <tr>
			    <td colspan="2">原岗位名称</td>
			    <td><input type="text" name="ygwmc" id="ygwmc" isnull="no"  mes="原岗位名称不能为空"/></td>
			    <td colspan="2">原岗位密级</td>
			    <td colspan="3"><input type="text" name="ygwmj" id="ygwmj" isnull="no"  mes="原岗位密级不能为空"/></td>
			 </tr>
			 <tr>
			    <td width="10%" >序号</td>
			    <td colspan="4" >涉密项目</td>
			    <td colspan="3">密级</td>
			 </tr>
			 
			 <tr>
			    <td>1</td>
			    <td colspan="4"><input type="text" name="xm1" id="xm1"/></td>
    			<td colspan="3"><hi:select  type="radio" emu="BM-02-03procls" name="xmmj1" isnull="no"  mes="涉密项目密级不能为空"/></td>
			 </tr>
			 <tr>
			    <td>2</td>
			    <td colspan="4"><input type="text" name="xm1" id="xm2"/></td>
    			<td colspan="3"><hi:select  type="radio" emu="BM-02-03procls" name="xmmj2" /></td>
			 </tr>
			 <tr>
			    <td>3</td>
			    <td colspan="4"><input type="text" name="xm1" id="xm3"/></td>
    			<td colspan="3"><hi:select  type="radio" emu="BM-02-03procls" name="xmmj3" /></td>
			 </tr>
			 <tr>
			    <td>4</td>
			    <td colspan="4"><input type="text" name="xm1" id="xm4"/></td>
    			<td colspan="3"><hi:select  type="radio" emu="BM-02-03procls" name="xmmj4" /></td>
			 </tr>
			 <tr>
			    <td colspan="3" rowspan="2">所属部门领导意见</td>
			    <td colspan="6" style="text-align: left;">拟定为<hi:select  type="select" emu="BM-02-03pidentity" name="rysf1" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
			 </tr>
			 <tr>
			    <td colspan="2">签字：</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="bmld" isnull="no"  mes="请选择所属部门领导签字意见" /></td>
			 </tr>
			 <tr>
			    <td colspan="3" rowspan="2">人力资源部审核意见</td>
			    <td colspan="6" style="text-align: left;">同意拟定为<hi:select  type="select" emu="BM-02-03pidentity" name="rysf2" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
			 </tr>
			 <tr>
			    <td colspan="2">签字：</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="rlzy" isnull="no"  mes="请选择人力资源部签字意见" /></td>
			 </tr>
			 <tr>
			    <td colspan="3" rowspan="2">保密委员会办公室审核意见</td>
			    <td colspan="6" style="text-align: left;">同意拟定为<hi:select  type="select" emu="BM-02-03pidentity" name="rysf3" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
			 </tr>
			 <tr>
			    <td colspan="2">签字：</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="bgs" isnull="no"  mes="请选择保密委员会办公室签字意见" /></td>
			 </tr>
			 <tr>
			    <td colspan="3" rowspan="2">保密委员会审定意见</td>
			    <td colspan="6" style="text-align: left;">同意该人员确定为<hi:select  type="select" emu="BM-02-03pidentity" name="rysf4" isnull="no"  mes="请选择拟定为何种人员" />涉密人员。</td>
			 </tr>
			 <tr>
			    <td colspan="2">签字：</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="bmwyh" isnull="no"  mes="请选择保密委员会签字意见" /></td>
			 </tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
