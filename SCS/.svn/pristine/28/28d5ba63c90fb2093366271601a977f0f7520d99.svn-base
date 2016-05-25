<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>国家秘密事项的变更或解密审批表</title>
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
    <form id="formsear" action="ss" method="post" onsubmit="onForm_Submits();">
    	<div>
    		<span style="text-align: left;">部门：<input type="text" name="bm" id="bm" isnull="no" mes="部门不能为空" /></span>　　　　　　　　　　　　
    		&nbsp;&nbsp;<span style="text-align: right;">填报日期：<input type="text" name="rq" id="rq" dtype="date(yyyy-MM-dd)" isnull="no" mes="填报日期不能为空" value="" /></span>
    	</div>
    	<table class="bordered">
			<tr>
				<td width="25%">承办人</td>
			    <td width="25%"><input type="text" name="cbr" id="cbr" isnull="no" mes="承办人不能为空" /></td>
			    <td width="25%">联系电话</td>
			    <td width="25%"><input type="text" name="lxdh" id="lxdh" isnull="no"  mes="联系电话不能为空" dtype="number"/></td>
			</tr>
			<tr>
				<td>事项名称</td>
			    <td colspan="3"><input type="text" name="sxmc" id="sxmc" isnull="no" mes="事项名称不能为空" /></td>
			</tr>
			<tr>
			    <td>调整目的</td>
			    <td colspan="3" style="text-align: left;">
			    	<hi:select type="radio" emu="BM-01-01_change" name="tzmd" isnull="no"  mes="请选择调整目的" />
	    		</td>
			</tr>
			<tr>
			    <td>原密级</td>
			    <td><input type="text" name="ymj" id="ymj" isnull="no" mes="原密级不能为空" /></td>
			    <td>拟变更密级</td>
			    <td><input type="text" name="nbgmj" id="nbgmj" isnull="no" mes="拟变更密级不能为空" /></td>
			</tr>
			<tr>
			    <td>原保密期限</td>
			    <td><input type="text" name="ybmqx" id="ybmqx" isnull="no" mes="原保密期限不能为空" /></td>
			    <td>拟变更保密期限</td>
			    <td><input type="text" name="nbgbmqx" id="nbgbmqx" isnull="no" mes="拟变更保密期限不能为空" /></td>
			</tr>
			<tr>
			    <td>原控制范围</td>
			    <td><input type="text" name="ykzfw" id="ykzfw" isnull="no" mes="原控制范围不能为空" /></td>
			    <td>拟变更控制范围</td>
			    <td><input type="text" name="nbgkzfw" id="nbgkzfw" isnull="no" mes="拟变更控制范围不能为空" /></td>
			</tr>
			<tr>
			    <td>变更或解密理由</td>
			    <td colspan="3"><input type="text" name="bgjmly" id="bgjmly" isnull="no" mes="变更或解密理由不能为空" /></td>
			</tr>
			<tr>
			    <td rowspan="2">定密审核人意见</td>
			    <td colspan="3" >
			    	<textarea name="yj" id="yj" ></textarea> 
	    		</td>
			</tr>
			<tr>
			    <td width="10%">签字</td>
			    <td colspan="2" style="text-align: left;">
			    	<hi:select  type="radio" emu="yesNo" name="qz" isnull="no"  mes="请选择定密审核人签字意见" />
	    		</td>
			</tr>
			<tr>
			    <td rowspan="2">定密责任人审定意见</td>
			    <td colspan="3">
			    	<textarea name="sdyj" id="sdyj" ></textarea> 
	    		</td>
			</tr>
			<tr>
			  	<td width="10%">签字</td>
			    <td colspan="2" style="text-align: left;">
			    	<hi:select type="radio" emu="yesNo" name="sdqz" isnull="no"  mes="请选择定密责任人签字意见" />
	    		</td>
			</tr>
		</table>
		<br/>
		<div>
			<span>注：调整目的为解密的不填写相关拟变更栏</span>
		</div>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
