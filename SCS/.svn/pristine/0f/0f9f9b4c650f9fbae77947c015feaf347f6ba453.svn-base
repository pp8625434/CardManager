<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>涉密信息打印输出审批登记表</title>
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
				<td width="15%">日期</td>
			    <td width="15%">文件资料名称或标题</td>
			    <td width="16%">密级</td>
			    <td width="4%">页数（单份）</td>
			    <td width="3%">份数</td>
			    <td width="12%">去向或用途</td>
			    <td width="5%">打印人</td>
			    <td width="5%">批准人</td>
			    <td width="15%">打印时间</td>
			    <td width="5%">登记编号</td>
			    <td width="5%">领取人</td>
			</tr>
			<tr>
			    <td><input type="text" name="rq" id="rq" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="日期不能为空"/></td>
			    <td><input type="text" name="cnrzz" id="cnrzz" isnull="no" mes="文件资料名称或标题不能为空"/></td>
			    <td style="text-align: left;"><hi:select  type="radio" emu="BM-02-03procls" name="mj" isnull="no"  mes="请选择密级" /></td>
			    <td><input type="text" name="ys" id="ys" isnull="no" dtype="number" mes="页数不能为空"/></td>
			    <td><input type="text" name="fs" id="fs" isnull="no" dtype="number" mes="份数不能为空"/></td>
			    <td><input type="text" name="qxyt" id="qxyt" isnull="no" mes="去向或用途不能为空"/></td>
			    <td><input type="text" name="dyr" id="dyr" isnull="no"  mes="打印人不能为空"/></td>
			    <td><input type="text" name="pzr" id="pzr" isnull="no" dtype="number" mes="批准人不能为空"/></td>
			    <td><input type="text" name="dysj" id="dysj" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="打印时间不能为空"/></td>
			    <td><input type="text" name="djbh" id="djbh" isnull="no" mes="登记编号不能为空"/></td>
			    <td><input type="text" name="lqr" id="lqr" isnull="no" mes="领取人不能为空"/></td>
			</tr>
			<tr>
			    <td><input type="text" name="rq1" id="rq1" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="cnrzz1" id="cnrzz1" /></td>
			    <td style="text-align: left;"><hi:select  type="radio" emu="BM-02-03procls" name="mj1"/></td>
			    <td><input type="text" name="ys1" id="ys1" /></td>
			    <td><input type="text" name="fs1" id="fs1" dtype="number" /></td>
			    <td><input type="text" name="qxyt1" id="qxyt1" /></td>
			    <td><input type="text" name="dyr1" id="dyr1" /></td>
			    <td><input type="text" name="pzr1" id="pzr1" dtype="number" /></td>
			    <td><input type="text" name="dysj1" id="dysj1" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="djbh1" id="djbh1" /></td>
			    <td><input type="text" name="lqr1" id="lqr1" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="rq2" id="rq2" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="cnrzz2" id="cnrzz2" /></td>
			    <td style="text-align: left;"><hi:select  type="radio" emu="BM-02-03procls" name="mj2"/></td>
			    <td><input type="text" name="ys2" id="ys2" /></td>
			    <td><input type="text" name="fs2" id="fs2" dtype="number" /></td>
			    <td><input type="text" name="qxyt2" id="qxyt2" /></td>
			    <td><input type="text" name="dyr2" id="dyr2" /></td>
			    <td><input type="text" name="pzr2" id="pzr2" dtype="number" /></td>
			    <td><input type="text" name="dysj2" id="dysj2" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="djbh2" id="djbh2" /></td>
			    <td><input type="text" name="lqr2" id="lqr2" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="rq3" id="rq3" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="cnrzz3" id="cnrzz3" /></td>
			    <td style="text-align: left;"><hi:select  type="radio" emu="BM-02-03procls" name="mj3"/></td>
			    <td><input type="text" name="ys3" id="ys3" /></td>
			    <td><input type="text" name="fs3" id="fs3" dtype="number" /></td>
			    <td><input type="text" name="qxyt3" id="qxyt3" /></td>
			    <td><input type="text" name="dyr3" id="dyr3" /></td>
			    <td><input type="text" name="pzr3" id="pzr3" dtype="number" /></td>
			    <td><input type="text" name="dysj1" id="dysj3" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="djbh3" id="djbh3" /></td>
			    <td><input type="text" name="lqr3" id="lqr3" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="rq4" id="rq4" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="cnrzz4" id="cnrzz4" /></td>
			    <td style="text-align: left;"><hi:select  type="radio" emu="BM-02-03procls" name="mj4"/></td>
			    <td><input type="text" name="ys4" id="ys4" /></td>
			    <td><input type="text" name="fs4" id="fs4" dtype="number" /></td>
			    <td><input type="text" name="qxyt4" id="qxyt4" /></td>
			    <td><input type="text" name="dyr4" id="dyr4" /></td>
			    <td><input type="text" name="pzr4" id="pzr4" dtype="number" /></td>
			    <td><input type="text" name="dysj4" id="dysj4" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="djbh4" id="djbh4" /></td>
			    <td><input type="text" name="lqr4" id="lqr4" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="rq5" id="rq5" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="cnrzz5" id="cnrzz5" /></td>
			    <td style="text-align: left;"><hi:select  type="radio" emu="BM-02-03procls" name="mj5"/></td>
			    <td><input type="text" name="ys5" id="ys5" /></td>
			    <td><input type="text" name="fs5" id="fs5" dtype="number" /></td>
			    <td><input type="text" name="qxyt5" id="qxyt5" /></td>
			    <td><input type="text" name="dyr5" id="dyr5" /></td>
			    <td><input type="text" name="pzr5" id="pzr5" dtype="number" /></td>
			    <td><input type="text" name="dysj5" id="dysj5" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td><input type="text" name="djbh5" id="djbh5" /></td>
			    <td><input type="text" name="lqr5" id="lqr5" /></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
