<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>外来人员进入保密要害部门、部位申请表</title>
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
			    <td rowspan="4" width="32%"><p>出入人员情况</p>
			    <p >共计<input type="text" name="gj" id="gj" dtype="number" isnull="no" mes="出入人员数量不能为空"/>人</p></td>
			    <td width="10%">序号</td>
			    <td width="16%">姓名</td>
			    <td width="16%">职务</td>
			    <td colspan="2" width="26%">单位</td>
			</tr>
			<tr>
			    <td>1</td>
			    <td><input type="text" name="xm" id="xm"/></td>
			    <td><input type="text" name="zw" id="zw"/></td>
			    <td colspan="2"><input type="text" name="dw" id="dw"/></td>
			</tr>
			<tr>
			    <td>2</td>
			    <td><input type="text" name="xm1" id="xm1"/></td>
			    <td><input type="text" name="zw1" id="zw1"/></td>
			    <td colspan="2"><input type="text" name="dw1" id="dw1"/></td>
			</tr>
			<tr>
			    <td>3</td>
			    <td><input type="text" name="xm2" id="xm2" /></td>
			    <td><input type="text" name="zw2" id="zw2"/></td>
			    <td colspan="2"><input type="text" name="dw2" id="dw2"/></td>
			</tr>
			<tr>
			    <td>要害部门部位名称</td>
			    <td colspan="2"><input type="text" name="mc" id="mc" isnull="no" mes="要害部门部位名称不能为空"/></td>
			    <td>陪同人员</td>
			    <td colspan="2"><input type="text" name="pt" id="pt"/></td>
			</tr>
			<tr>
			    <td rowspan="2">进入原因</td>
			    <td colspan="2" rowspan="2"><input type="text" name="yy" id="yy"/></td>
			    <td>拟进入时间</td>
			    <td colspan="2"><input type="text" name="jrsj" id="jrsj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="拟进入时间不能为空"/></td>
			</tr>
			<tr>
			    <td>预计停留时间</td>
			    <td colspan="2"><input type="text" name="tlsj" id="tlsj" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="预计停留时间不能为空"/></td>
			</tr>
			<tr>
			    <td rowspan="2">申请部门审查意见</td>
			    <td colspan="5"><textarea name="scyj" id="scyj" ></textarea></td>
			</tr>
			<tr>
			    <td colspan="2">签字：</td>
			    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="scqz" isnull="no"  mes="请申请部门审查签字意见" /></td>
			</tr>
			<tr>
			    <td rowspan="2">保密要害部门部位所属部门领导意见</td>
			    <td colspan="5" ><textarea name="ldyj" id="ldyj" ></textarea></td>
			</tr>
			<tr>
			    <td colspan="2">签字：</td>
			    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="ldqz" isnull="no"  mes="请选择保密要害部门部位所属部门领导意见" /></td>
			</tr>
			<tr>
			    <td rowspan="5">监督检查记录</td>
			    <td colspan="4">1.来访人员是否在《来访人员登记簿》上进行登记；</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf4" isnull="no"  mes="请选择来访人员是否在《来访人员登记簿》上进行登记" /></td>
			</tr>
			<tr>
			    <td colspan="4">2.来访人员是否将手机存入手机屏蔽柜；</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf5" isnull="no"  mes="请选择来访人员是否将手机存入手机屏蔽柜" /></td>
			</tr>
			<tr>
			    <td colspan="4">3.来访人员是否将照相机、录像机、笔记本电脑等具有摄录、无线发射功能的设备带入保密要害部门、部位。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf5" isnull="no"  mes="请选择来访人员是否将照相机、录像机、笔记本电脑等具有摄录、无线发射功能的设备带入保密要害部门、部位" /></td>
			</tr>
			<tr>
			    <td colspan="4" style="text-align:left;">其他情况记录：</td>
			    <td><textarea name="qt" id="qt" ></textarea></td>
			</tr>
			<tr>
			    <td colspan="4">要害部门、部位所在部门指定旁站陪同人员签字：</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="ptryqz" isnull="no"  mes="请选择要害部门、部位所在部门指定旁站陪同人员签字" /></td>
			</tr>
		</table>
		<div>
			<span>注：此表存入所进入的保密要害部门、部位所属部门二级保密工作档案。</span>
		</div>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
