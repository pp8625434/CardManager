<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>部门_年_月保密工作自查表</title>
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
    	<table class="bordered">
			<tr>
				<td width="5%">序号</td>
			    <td width="20%">自查项目</td>
			    <td width="45%">自查内容</td>
			    <td width="30%">自查记录</td>
			</tr>
			<tr>
			    <td rowspan="4">1</td>
			    <td rowspan="4">涉密人员管理</td>
			    <td style="text-align:left;">有无岗位变动情况。</td>
			    <td><input type="text" name="zc" id="zc"/></td>
			</tr>
			<tr>
			    <td style="text-align:left;">有无调入人员（含临时借调、返聘等），调入人员是否及时定密并进行保密教育。</td>
			    <td><input type="text" name="zc1" id="zc1"/></td>
			</tr>
			<tr>
			    <td style="text-align:left;">有无调出人员。</td>
			    <td><input type="text" name="zc2" id="zc2"/></td>
			</tr>
			<tr>
			    <td style="text-align:left;">是否组织对涉密人员进行培训，培训学时、培训率。</td>
			    <td><input type="text" name="zc3" id="zc3"/></td>
			</tr>
			<tr>
				<td rowspan="3">2</td>
			    <td rowspan="3">上网机、传真机等公用办公设备管理</td>
			    <td style="text-align:left;">上网机是否处理过涉密信息或单位敏感信息。</td>
			    <td><input type="text" name="zc4" id="zc4"/></td>
			</tr>
			<tr>
			    <td style="text-align:left;">上网机、传真机等公用办公设备使用是否有登记记录，记录是否完整。</td>
			    <td><input type="text" name="zc5" id="zc5"/></td>
			</tr>
			<tr>
			    <td style="text-align:left;">传真机是否发送或复印过涉密信息。</td>
			    <td><input type="text" name="zc6" id="zc6"/></td>
			</tr>
			<tr>
				<td rowspan="2">3</td>
    			<td rowspan="2">涉密会议管理</td>
			    <td style="text-align:left;">承办涉密会议是否履行审批手续。</td>
			    <td><input type="text" name="zc7" id="zc7"/></td>
			</tr>
			<tr>
			    <td style="text-align:left;">涉密会议是否按涉密会议保密管理工作方案进行保密管理。</td>
			    <td><input type="text" name="zc8" id="zc8"/></td>
			</tr>
			<tr>
				<td rowspan="2">4</td>
    			<td rowspan="2">涉外活动</td>
			    <td style="text-align:left;">承办涉外活动是否履行审批手续。</td>
			    <td><input type="text" name="zc9" id="zc9"/></td>
			</tr>
			<tr>
			    <td style="text-align:left;">涉外活动是否按涉外活动保密管理工作方案进行保密管理。</td>
			    <td><input type="text" name="zc10" id="zc10"/></td>
			</tr>
			<tr>
				<td>5</td>
    			<td>员工自查情况</td>
			    <td style="text-align:left;">是否要求部门员工每月自查，对自查情况是否进行记录，对自查问题是否及时整改。</td>
			    <td><input type="text" name="zc11" id="zc11"/></td>
			</tr>
			<tr>
				<td>6</td>
    			<td>其他事项</td>
			    <td style="text-align:left;">合作或协作单位、人员是否涉及涉密事项。如有，是否签订保密协议书。</td>
			    <td><input type="text" name="zc11" id="zc11"/></td>
			</tr>
			<tr>
			    <td colspan="2">其他情况记录</td>
			    <td colspan="2"><textarea name="qtsx" id="qtsx" ></textarea></td>
			</tr>
			<tr>
			    <td colspan="2">发现问题</td>
			    <td colspan="2"><textarea name="zgqk" id="zgqk" ></textarea></td>
			</tr>
			<tr>
			    <td colspan="2">对发现问题的整改情况</td>
			    <td colspan="2"><textarea name="zgqk" id="zgqk" ></textarea></td>
			</tr>
			<tr>
    			<td colspan="2" rowspan="2">部门负责人意见</td>
   				<td colspan="2" style="text-align:left;">本部门已按自查要求进行自查，自查记录属实。</td>
  			</tr>
  			<tr>
    			<td>签字：</td>
    			<td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="qz" isnull="no"  mes="请选择部门负责人签字" /></td>
  			</tr>
		</table>
		<br/>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
