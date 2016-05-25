<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>本部涉密载体销毁审批表</title>
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
     			所属部门：<input type="text" name="bm" id="bm" isnull="no" mes="所属部门不能为空"/>
     			　　　　编号：<input type="text" name="bh" id="bh" isnull="no" mes="编号不能为空"/>
     		</span>
     	</div>
    	<table class="bordered">
			<tr>
				<td width="5%">序号</td>
			    <td width="10%">文件资料名称</td>
			    <td width="10%">制作发文单位</td>
			    <td width="20%">载体类别</td>
			    <td width="10%">文号或编号</td>
			    <td width="15%">密级</td>
			    <td width="5%">页数或容量</td>
			    <td width="5%">份数或数量</td>
			    <td width="10%">保管人</td>
			</tr>
			<tr>
			    <td>1</td>
			    <td><input type="text" name="zlmc" id="zlmc" isnull="no" mes="文件资料名称不能为空"/></td>
			    <td><input type="text" name="fwdw" id="fwdw" isnull="no" mes="制作发文单位不能为空"/></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="BM-03-04ztlb" name="ztlb" isnull="no"  mes="请选择载体类别" /></td>
			    <td><input type="text" name="whbh" id="whbh" isnull="no" mes="文号或编号不能为空"/></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="page_27_devsecurity" name="ztmj" isnull="no"  mes="请选择载体密级" /></td>
			    <td><input type="text" name="ys" id="ys" isnull="no" mes="页数或容量不能为空"/></td>
			    <td><input type="text" name="fs" id="fs" isnull="no" mes="份数或数量不能为空" dtype="number"/></td>
			    <td><input type="text" name="syfw" id="syfw" isnull="no" mes="保管人不能为空"/></td>
			</tr>
			<tr>
			    <td>2</td>
			   	<td><input type="text" name="zlmc1" id="zlmc1"/></td>
			    <td><input type="text" name="fwdw1" id="fwdw1"/></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="BM-03-04ztlb" name="ztlb1" /></td>
			    <td><input type="text" name="whbh1" id="whbh1" /></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="page_27_devsecurity" name="ztmj1"  /></td>
			    <td><input type="text" name="ys1" id="ys1" /></td>
			    <td><input type="text" name="fs1" id="fs1" dtype="number"/></td>
			    <td><input type="text" name="syfw1" id="syfw1"/></td>
			</tr>
			<tr>
			    <td>3</td>
			   	<td><input type="text" name="zlmc2" id="zlmc2"/></td>
			    <td><input type="text" name="fwdw2" id="fwdw2"/></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="BM-03-04ztlb" name="ztlb2" /></td>
			    <td><input type="text" name="whbh2" id="whbh2" /></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="page_27_devsecurity" name="ztmj2"  /></td>
			    <td><input type="text" name="ys2" id="ys2" /></td>
			    <td><input type="text" name="fs2" id="fs2" dtype="number"/></td>
			    <td><input type="text" name="syfw2" id="syfw2"/></td>
			</tr>
			<tr>
			    <td>4</td>
			    <td><input type="text" name="zlmc3" id="zlmc3"/></td>
			    <td><input type="text" name="fwdw3" id="fwdw3"/></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="BM-03-04ztlb" name="ztlb3" /></td>
			    <td><input type="text" name="whbh1" id="whbh3" /></td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="page_27_devsecurity" name="ztmj3"  /></td>
			    <td><input type="text" name="ys3" id="ys3" /></td>
			    <td><input type="text" name="fs3" id="fs3" dtype="number"/></td>
			    <td><input type="text" name="syfw3" id="syfw3"/></td>
			</tr>
			<tr>
			    <td>合计</td>
			   	<td colspan="8"><input type="text" name="hj" id="hj"/></td>
			</tr>
			<tr>
    			<td>销毁人</td>
    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="xhr" isnull="no"  mes="请选择销毁人签字" /></td>
    			<td>批准人</td>
    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="pzr" isnull="no"  mes="请选择批准人签字" /></td>
    			<td>接收人</td>
    			<td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="jsr" isnull="no"  mes="请选择接收人签字" /></td>
  			</tr>
		</table>
		<div>
			<span style="text-align:left;">填表说明：<br/>1.“文号或编号”栏：载体类别为U盘、移动硬盘的填写保密编号和序列号，为计算机硬盘的填写对应计算机资产编号和硬盘序列号。
			<br/>2.“合计”栏：应根据载体类别进行分类合计。如纸介质：_份，U盘：_个，移动硬盘：_个，......。</span>
		</div>
		<br/>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
