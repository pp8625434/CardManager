<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>存储介质变更审批表</title>
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
     			部门：<input type="text" name="bm" id="bm" isnull="no" mes="部门不能为空"/>
     			　　　　编号：<input type="text" name="bh" id="bh" isnull="no" mes="编号不能为空"/>
     		</span>
     	</div>
    	<table class="bordered">
			<tr>
				<td width="2%" rowspan="2">序号</td>
			    <td width="8%" rowspan="2">类型</td>
			    <td width="10%" rowspan="2">型号及规格</td>
			    <td colspan="4">变更前情况</td>
			    <td colspan="4">变更后情况</td>
			    <td width="10%" rowspan="2">变更原因</td>
			</tr>
			<tr>
			    <td width="10%">责任部门</td>
			    <td width="10%">保管人</td>
			    <td width="10%">涉密级别</td>
			    <td width="5%">保密编号</td>
			    <td width="10%">责任部门</td>
			    <td width="10%">保管人</td>
			    <td width="10%">涉密级别</td>
			    <td width="5%">保密编号</td>
			</tr>
			<tr>
			    <td>1</td>
			    <td><input type="text" name="lx" id="lx"/></td>
			    <td><input type="text" name="xhgg" id="xhgg" isnull="no" mes="型号及规格不能为空"/></td>
			    <td><input type="text" name="qbm" id="qbm" isnull="no" mes="变更前责任部门不能为空"/></td>
			    <td><input type="text" name="qbgr" id="qbgr" isnull="no" mes="变更前保管人不能为空"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="qjzmj" isnull="no"  mes="请选择变更前涉密级别" /></td>
			    <td><input type="text" name="qbh" id="qbh" isnull="no" mes="变更前保密编号不能为空"/></td>
			    <td><input type="text" name="hbm" id="hbm" isnull="no" mes="变更后责任部门不能为空"/></td>
			    <td><input type="text" name="hbgr" id="hbgr" isnull="no" mes="变更后保管人不能为空"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="hjzmj" isnull="no"  mes="请选择变更后涉密级别" /></td>
			    <td><input type="text" name="hbh" id="hbh" isnull="no" mes="变更后保密编号不能为空"/></td>
			    <td><input type="text" name="bgyy" id="bgyy" isnull="no" mes="变更原因不能为空"/></td>
			</tr>
			<tr>
			    <td>2</td>
			    <td><input type="text" name="lx1" id="lx1"/></td>
			    <td><input type="text" name="xhgg1" id="xhgg1"/></td>
			    <td><input type="text" name="qbm1" id="qbm1" /></td>
			    <td><input type="text" name="qbgr1" id="qbgr1"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="qjzmj1"/></td>
			    <td><input type="text" name="qbh1" id="qbh1"/></td>
			    <td><input type="text" name="hbm1" id="hbm1"/></td>
			    <td><input type="text" name="hbgr1" id="hbgr1"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="hjzmj1" /></td>
			    <td><input type="text" name="hbh1" id="hbh1" /></td>
			    <td><input type="text" name="bgyy1" id="bgyy1" /></td>
			</tr>
			<tr>
			    <td>3</td>
			    <td><input type="text" name="lx2" id="lx2"/></td>
			    <td><input type="text" name="xhgg2" id="xhgg2"/></td>
			    <td><input type="text" name="qbm2" id="qbm2" /></td>
			    <td><input type="text" name="qbgr2" id="qbgr2"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="qjzmj2"/></td>
			    <td><input type="text" name="qbh2" id="qbh2"/></td>
			    <td><input type="text" name="hbm2" id="hbm2"/></td>
			    <td><input type="text" name="hbgr2" id="hbgr2"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="hjzmj2" /></td>
			    <td><input type="text" name="hbh2" id="hbh2" /></td>
			    <td><input type="text" name="bgyy2" id="bgyy2" /></td>
			</tr>
			<tr>
			    <td>4</td>
			    <td><input type="text" name="lx3" id="lx3"/></td>
			    <td><input type="text" name="xhgg3" id="xhgg3"/></td>
			    <td><input type="text" name="qbm3" id="qbm3" /></td>
			    <td><input type="text" name="qbgr3" id="qbgr3"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="qjzmj3"/></td>
			    <td><input type="text" name="qbh3" id="qbh3"/></td>
			    <td><input type="text" name="hbm3" id="hbm3"/></td>
			    <td><input type="text" name="hbgr3" id="hbgr3"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="hjzmj3" /></td>
			    <td><input type="text" name="hbh3" id="hbh3" /></td>
			    <td><input type="text" name="bgyy3" id="bgyy3" /></td>
			</tr>
			<tr>
			    <td>5</td>
			    <td><input type="text" name="lx4" id="lx4"/></td>
			    <td><input type="text" name="xhgg4" id="xhgg4"/></td>
			    <td><input type="text" name="qbm4" id="qbm4" /></td>
			    <td><input type="text" name="qbgr4" id="qbgr4"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="qjzmj4"/></td>
			    <td><input type="text" name="qbh4" id="qbh4"/></td>
			    <td><input type="text" name="hbm4" id="hbm4"/></td>
			    <td><input type="text" name="hbgr4" id="hbgr4"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="hjzmj4" /></td>
			    <td><input type="text" name="hbh4" id="hbh4" /></td>
			    <td><input type="text" name="bgyy4" id="bgyy4" /></td>
			</tr>
			<tr>
			    <td>6</td>
			    <td><input type="text" name="lx5" id="lx5"/></td>
			    <td><input type="text" name="xhgg5" id="xhgg5"/></td>
			    <td><input type="text" name="qbm5" id="qbm5" /></td>
			    <td><input type="text" name="qbgr5" id="qbgr5"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="qjzmj5"/></td>
			    <td><input type="text" name="qbh5" id="qbh5"/></td>
			    <td><input type="text" name="hbm5" id="hbm5"/></td>
			    <td><input type="text" name="hbgr5" id="hbgr5"/></td>
			    <td><hi:select  type="radio" emu="BM-05-04jzmj" name="hjzmj5" /></td>
			    <td><input type="text" name="hbh5" id="hbh5" /></td>
			    <td><input type="text" name="bgyy5" id="bgyy5" /></td>
			</tr>
			<tr>
			    <td colspan="3">部门领导意见</td>
			    <td colspan="4"><textarea name="bmldyj" id="bmldyj" ></textarea></td>
			    <td colspan="2">保密办公室意见</td>
			    <td colspan="3"><textarea name="bgsyj" id="bgsyj" ></textarea></td>
			</tr>
		</table>
		<br/>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
