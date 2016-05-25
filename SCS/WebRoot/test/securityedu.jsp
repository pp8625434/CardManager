<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新进涉密岗位人员岗前保密教育培训记录表</title>
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
			    <td width="10%">部门</td>
			    <td width="15%"><input type="text" name="bm" id="bm" isnull="no"  mes="部门不能为空"/></td>
			    <td width="10%">姓名</td>
			    <td width="15%"><input type="text" name="xm" id="xm" isnull="no"  mes="姓名不能为空"/></td>
			    <td width="10%">岗位密级</td>
				<td width="40%" style="text-align: left;"><hi:select type="radio" emu="page_27_applyersecurity" name="gwmj" isnull="no"  mes="请选择岗位密级" /></td>
		  	</tr>
		 	<tr>
		    	<td height="200">教育培训内容</td>
		    	<td colspan="5" >
		    		<p style="text-align: left;">1.国家及上级机关有关保密法律、法规。</p>
		    		<p style="text-align: left;">2.单位有关保密规章制度。</p>
		    		<p style="text-align: left;">3.涉密人员保密职责。</p>
		    		<p style="text-align: left;">4.其他有关情况记录：<textarea name="qtqk" id="qtqk" ></textarea></p>
		    	</td>
		  	</tr>
		  	<tr>
		    	<td rowspan="2">本人签字</td>
		    	<td colspan="5" style="text-align: left;">本人对上述内容已知悉。</td>
		  	</tr>
		  	<tr>
		    	<td colspan="2">签字：</td>
		    	<td colspan="3" style="text-align: left;"><hi:select  type="radio" emu="yesNo" name="qz" isnull="no"  mes="请选择本人签字" /></td>
		  	</tr>
		  	<tr>
		    	<td>记录人</td>
		    	<td colspan="2"><input type="text" name="jlr" id="jlr" isnull="no"  mes="记录人不能为空"/></td>
		    	<td>记录日期</td>
		    	<td colspan="2"><input type="text" name="jlrq" id="jlrq" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="记录日期不能为空"/></td>
		  	</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
