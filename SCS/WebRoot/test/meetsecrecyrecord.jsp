<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>涉密会议保密方案执行情况记录表</title>
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
		    	<td width="25%">会议名称</td>
		    	<td width="25%"><input type="text" name="hymc" id="hymc" isnull="no" mes="会议名称不能为空" /></td>
		    	<td width="25%">密级</td>
		    	<td width="25%" style="text-align:left;"><hi:select  type="radio" emu="BM-08-01hymj" name="cbqz" isnull="no"  mes="请选择密级" /></td>
		  	</tr>
		  	<tr>
		    	<td>会议时间</td>
		    	<td><input type="text" name="hysj" id="hysj" dtype="date(yyyy-MM-dd HH:mm:ss)" isnull="no" mes="会议时间不能为空" value="" /></td>
		    	<td>会议地点</td>
		    	<td><input type="text" name="hydd" id="hydd" isnull="no" mes="会议地点不能为空" /></td>
		  	</tr>
		  	<tr>
		    	<td>会议内容</td>
		    	<td><input type="text" name="hynr" id="hynr" isnull="no" mes="会议内容不能为空" /></td>
		    	<td>参会人员范围</td>
		    	<td><input type="text" name="ryfw" id="ryfw" isnull="no" mes="参会人员范围不能为空" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="23">保密方案执行情况记录</td>
		    	<td rowspan="2">（1）承办会议部门是否指定专人负责保密工作。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf1" isnull="no"  mes="请选择承办会议部门是否指定专人负责保密工作" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz1" id="bz1" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">（2）是否加装手机信号屏蔽器。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf2" isnull="no"  mes="请选择是否加装手机信号屏蔽器" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz2" id="bz2" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">（3）是否按要求存放手机。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf3" isnull="no"  mes="请选择是否按要求存放手机" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz3" id="bz3" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">（4）会议召开前是否对会场进行保密检查。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf4" isnull="no"  mes="请选择会议召开前是否对会场进行保密检查" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz4" id="bz4" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">（5）会前是否宣布保密纪律。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf5" isnull="no"  mes="请选择会前是否宣布保密纪律" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz5" id="bz5" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">（6）是否严格控制参会人员范围，要求参会人员签到。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf6" isnull="no"  mes="请选择是否严格控制参会人员范围，要求参会人员签到" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz6" id="bz6" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">（7）会场中是否带入具有无线上网功能的便携式计算机、无线话筒等具有无线发射传输功能的设备。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf7" isnull="no"  mes="请选择会场中是否带入具有无线上网功能的便携式计算机、无线话筒等具有无线发射传输功能的设备" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz7" id="bz7" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="3">（8）是否有录音、录像情况，如有是否指定专人负责管理。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf8" isnull="no"  mes="请选择是否有录音、录像情况，如有是否指定专人负责管理" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">备注：<input type="text" name="bz8" id="bz8" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">录音负责人：<input type="text" name="ly" id="ly" />录像负责人：<input type="text" name="lx" id="lx" /></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="3">（9）是否有涉密文件、资料，如有是否办理签发登记手续。会后清退收回情况。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf9" isnull="no"  mes="请选择是否有涉密文件、资料，如有是否办理签发登记手续。会后清退收回情况" /></td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">共印<input type="text" name="gy" id="gy" dtype="number"/>份，发放<input type="text" name="ff" id="ff" dtype="number"/>份，收回<input type="text" name="sh" id="sh" dtype="number"/>份，</td>
		  	</tr>
		  	<tr>
		    	<td colspan="2" style="text-align:left">回收保管负责人<input type="text" name="gy" id="gy"/></td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">（10）会议休息期间，会议承办部门是否指定专人负责会场看守和保密工作。</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesOrNo" name="sf10" isnull="no"  mes="请选择会议休息期间，会议承办部门是否指定专人负责会场看守和保密工作" /></td>
		  	</tr>
		  	<tr>
		   		<td colspan="2" style="text-align:left">备注：<input type="text" name="bz8" id="bz9" /></td>
		  	</tr>
		  	<tr>
		    	<td>承办部门会议保密负责人签字：</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesNo" name="fzrqz" isnull="no"  mes="请选择承办部门会议保密负责人签字" /></td>
		  	</tr>
		  	<tr>
		    	<td>保密委员会办公室审核意见</td>
		    	<td>签字：</td>
		    	<td colspan="2" style="text-align:left"><hi:select  type="radio" emu="yesNo" name="shqz" isnull="no"  mes="请选择保密委员会办公室签字" /></td>
			</tr>
  		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
