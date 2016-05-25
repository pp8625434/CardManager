<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>本部涉密载体外出复制审批单</title>
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
			    <td colspan="2">申请人</td>
			    <td colspan="2"><input type="text" name="sqr" id="sqr" isnull="no" mes="申请人不能为空" dorder="0"/></td>
			    <td>部门</td>
			    <td colspan="3"><input type="text" name="bm" id="bm" isnull="no" mes="部门不能为空" dorder="1"/></td>
			</tr>
			<tr>
			    <td>序号</td>
			    <td colspan="2">涉密载体内容（或文件名称）</td>
			    <td>份数</td>
			    <td>每份总页数</td>
			    <td>密级</td>
			    <td colspan="2">准印号</td>
			</tr>
			<tr>
			    <td>1</td>
			    <td colspan="2"><input type="text" name="wjmc" id="wjmc" isnull="no" mes="涉密载体内容（或文件名称）不能为空" dorder="2"/></td>
			    <td><input type="text" name="fs" id="fs" isnull="no" mes="份数不能为空" dtype="number" dorder="3"/></td>
			    <td><input type="text" name="zys" id="zys" isnull="no" mes="每份总页数不能为空" dtype="number" dorder="4"/></td>
			    <td><input type="text" name="mj" id="mj" isnull="no" mes="密级不能为空" dorder="5"/></td>
			    <td colspan="2">CAAET------<input type="text" name="zyh" id="zyh" isnull="no" mes="准印号不能为空" dorder="6"/></td>
			</tr>
			<tr>
			    <td>2</td>
			    <td colspan="2"><input type="text" name="wjmc1" id="wjmc1" /></td>
			    <td><input type="text" name="fs1" id="fs1"  dtype="number"/></td>
			    <td><input type="text" name="zys1" id="zys1"  dtype="number"/></td>
			    <td><input type="text" name="mj1" id="mj1" /></td>
			    <td colspan="2">CAAET------<input type="text" name="zyh1" id="zyh1" /></td>
			</tr>
			<tr>
			    <td>3</td>
			    <td colspan="2"><input type="text" name="wjmc2" id="wjmc2" /></td>
			    <td><input type="text" name="fs2" id="fs2"  dtype="number"/></td>
			    <td><input type="text" name="zys2" id="zys2"  dtype="number"/></td>
			    <td><input type="text" name="mj2" id="mj2" /></td>
			    <td colspan="2">CAAET------<input type="text" name="zyh2" id="zyh2" /></td>
			</tr>
			<tr>
			    <td>复印用途</td>
			    <td colspan="7" style="text-align:left;"><hi:select  type="radio" emu="BM-03-02fyyt" name="fyyt" isnull="no"  mes="请选择复印用途" dorder="7"/></td>
			</tr>
			<tr>
			    <td>承制单位</td>
			    <td colspan="7" style="text-align:left;"><hi:select  type="radio" emu="BM-03-02czdw" name="czdw" isnull="no"  mes="请选择承制单位" dorder="8"/></td>
			</tr>
			<tr>
			    <td rowspan="2">处室领导意见</td>
			    <td colspan="7" style="text-align:left;">（负责审批秘密级涉密载体复制；审核机密级载体复制）</td>
			</tr>
			<tr>
			    <td colspan="2">签字：</td>
			    <td colspan="4" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="csld" isnull="no"  mes="请选择处室领导签字意见" dorder="9"/></td>
			</tr>
			<tr>
			    <td rowspan="2">部门领导意见</td>
			    <td colspan="7" style="text-align:left;">（负责审批机密级及以下涉密载体复制）</td>
			</tr>
			<tr>
			    <td colspan="2">签字：</td>
			    <td colspan="4" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="bmld" isnull="no"  mes="请选择部门领导签字意见" dorder="10"/></td>
			</tr>
			<tr>
			    <td rowspan="2">承办单位确认</td>
			    <td colspan="7" style="text-align:left;">已按申请单位需求完成涉密载体复制，并全部交付申请单位。</td>
			</tr>
			<tr>
			    <td colspan="2" >经办人签字：</td>
			    <td colspan="4" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="jbr" isnull="no"  mes="请选择承办单位签字意见" dorder="11"/></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
