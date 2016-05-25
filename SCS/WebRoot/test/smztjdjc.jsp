<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>本部送外复制涉密载体监督检查记录表</title>
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
				<td width="20%">复制单位名称</td>
			    <td colspan="2" width="40%"><input type="text" name="dwmc" id="dwmc" isnull="no" mes="复制单位名称不能为空"/></td>
			    <td width="20%">承办部门</td>
			    <td width="20%"><input type="text" name="cbbm" id="cbbm" isnull="no" mes="承办部门不能为空"/></td>
			</tr>
			<tr>
			    <td>检查时间</td>
			    <td colspan="2"><input type="text" name="jcsj" id="jcsj" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="检查时间不能为空"/></td>
			    <td>检查地点</td>
			    <td><input type="text" name="jcdd" id="jcdd" isnull="no" mes="检查地点不能为空"/></td>
			</tr>
			<tr>
			    <td>检查人员</td>
			    <td colspan="2"><input type="text" name="jcry" id="jcry" isnull="no" mes="检查人员不能为空"/></td>
			    <td>保密责任人</td>
			    <td><input type="text" name="bmzrr" id="bmzrr" isnull="no" mes="保密责任人不能为空"/></td>
			</tr>
			<tr>
			    <td rowspan="9">监督检查情况记录</td>
			    <td colspan="3" style="text-align:left;">1.复制单位是否为保密行政管理部门审查批准的单位</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf1" isnull="no"  mes="请选择复制单位是否为保密行政管理部门审查批准的单位" /></td>
			</tr>
			<tr>
			    <td colspan="3" style="text-align:left;">2.复制单位是否为院指定的定点复制单位。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf2" isnull="no"  mes="请选择复制单位是否为院指定的定点复制单位" /></td>
			</tr>
			<tr>
			    <td colspan="3" style="text-align:left;">3.是否与该单位签订了保密协议书。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf3" isnull="no"  mes="请选择是否与该单位签订了保密协议书" /></td>
			</tr>
			<tr>
			    <td height="25" colspan="3" style="text-align:left;">4.复制场所是否符合保密要求。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf4" isnull="no"  mes="请选择复制场所是否符合保密要求" /><br/>备注：<input type="text" name="bz" id="bz" /></td>
			</tr>
			<tr>
			    <td colspan="3" style="text-align:left;">5.复制原稿是否收回。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf5" isnull="no"  mes="请选择复制原稿是否收回" /><br/>共<input type="text" name="gf" id="gf"  dtype="number"/>份。</td>
			</tr>
			<tr>
			    <td colspan="3" style="text-align:left;">6.是否按审批单复制数量制作。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf6" isnull="no"  mes="请选择是否按审批单复制数量制作" />
			    <br/>共印<input type="text" name="gyfs" id="gyfs"  dtype="number"/>份，接收<input type="text" name="jsfs" id="jfs"  dtype="number"/>份。</td>
			</tr>
			<tr>
			    <td colspan="3" style="text-align:left;">7.是否对印制过程中产生的成品、半成品、废品以及印制用的各种版、纸、胶片等相关涉密次材料情况进行了清点回收。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf7" isnull="no"  mes="请选择是否进行了清点回收" /><br/>处理方式<input type="text" name="clfs" id="clfs" "/></td>
			</tr>
			<tr>
			    <td colspan="3" style="text-align:left;">8.有关计算机等印制设备中的电子文档，是否在专人监督下进行了彻底删除。</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesOrNo" name="sf8" isnull="no"  mes="请选择是否进行了彻底删除" /><br/>监督人<input type="text" name="jdr" id="jdr" "/></td>
			</tr>
			<tr>
			    <td colspan="3">承办部门保密负责人签字：</td>
			    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="fzr" isnull="no"  mes="请选择承办部门保密负责人签字意见" /></td>
			</tr>
			<tr>
			    <td rowspan="2">院办公室审核意见</td>
			    <td colspan="4"><textarea name="shyj" id="shyj" ></textarea></td>
			</tr>
			<tr>
			    <td>签字：</td>
			    <td colspan="3" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="bgs" isnull="no"  mes="请选择院办公室签字意见" /></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
