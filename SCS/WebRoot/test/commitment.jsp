<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>员工安全保密承诺书</title>
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
				<td width="8%">部门</td>
    			<td colspan="3" width="24%"><input type="text" name="bm" id="bm" isnull="no" mes="部门不能为空"/></td>
			    <td width="8%">处室</td>
			    <td colspan="3" width="28%"><input type="text" name="cs" id="cs" isnull="no" mes="处室不能为空"/></td>
			    <td width="10%">姓名</td>
			    <td width="22%" colspan="3"><input type="text" name="xm" id="xm" isnull="no" mes="姓名不能为空"/></td>
			</tr>
			<tr>
			    <td>职务</td>
			    <td colspan="3"><input type="text" name="zw" id="zw" isnull="no" mes="职务不能为空"/></td>
			    <td>职称</td>
			    <td colspan="3"><input type="text" name="zc" id="zc" isnull="no" mes="职称不能为空"/></td>
			    <td>岗位密级</td>
			    <td colspan="3"><hi:select type="radio" emu="page_27_applyersecurity" name="gwmj" isnull="no"  mes="请选择岗位密级" /></td>
			</tr>
			<tr>
			    <td colspan="2">家庭住址</td>
			    <td colspan="10"><input type="text" name="jtzz" id="jtzz" isnull="no" mes="家庭住址不能为空"/></td>
			</tr>
			<tr>
			    <td colspan="2">家庭固定电话</td>
			    <td colspan="3"><input type="text" name="jtgd" id="jtgd" isnull="no" dtype="number" mes="家庭固定电话不能为空"/></td>
			    <td colspan="3">个人移动电话</td>
			    <td colspan="4"><input type="text" name="gryd" id="gryd" isnull="no" dtype="number" mes="个人移动电话不能为空"/></td>
			</tr>
			<tr>
			    <td colspan="3">家用台式计算机型号</td>
			    <td colspan="2"><input type="text" name="tsxh" id="tsxh" isnull="no" mes="家用台式计算机型号不能为空"/></td>
			    <td colspan="7" style="text-align: left;">上网方式：<hi:select  type="radio" emu="BM-02-06onlinestyle" name="swfs" isnull="no"  mes="请选择家用台式计算机上网方式" /></td>
			</tr>
			<tr>
			    <td colspan="3">家用便携式计算机型号</td>
			    <td colspan="2"><input type="text" name="bxsxh" id="bxsxh" isnull="no" mes="家用便携式计算机型号不能为空"/></td>
			    <td colspan="7" style="text-align: left;">上网方式：<hi:select  type="radio" emu="BM-02-06onlinestyle" name="swfs1" isnull="no"  mes="请选择家用便携式计算机上网方式" /></td>
			</tr>
			<tr>
			    <td colspan="12">
			    	<p style="text-align:left;">　　根据国家有关法律、法规和集团公司及院有关管理规定，为严守国家秘密、维护国家安全利益、本人向组织承诺如下：</p>
			    	<p style="text-align:left;">　　一、清楚国防科技工业&#8220;六条规定&#8221;和集团公司&#8220;六条禁令&#8221;及违反&#8220;六条规定&#8221;和&#8220;六条禁令&#8221;处罚标准，自觉接受保密教育，履行保密义务，承担岗位保密责任；若违反&#8220;六条规定&#8221;和&#8220;六条禁令&#8221;要求，将可能被开除公职、开除党籍，甚至可能被追究刑事责任。</p>
				    <p style="text-align:left;">　　二、清楚&#8220;涉密计算机不上外网，上外网计算机不涉密&#8221;和&#8220;涉密计算机包括内网计算机、非内网涉密台式计算机、涉密便携式计算机&#8221;等管理要求，清楚&#8220;涉密计算机、存储介质的定义是：存储、处理过国家秘密事项或涉密电子文档的计算机、存储介质&#8221;。 </p>
				    <p style="text-align:left;">　　三、本人不私自留存涉密信息，也不私自将涉密信息传递给他人。不在家中处理涉密信息。 </p>
				    <p style="text-align:left;">　　四、涉密计算机、涉密存储介质不以任何方式接入国际互联网或公共信息网，涉密计算机不连接手机等个人存储介质，不安装与手机通讯等相关的软件；非密存储介质不与涉密计算机相连。</p>	
				    <p style="text-align:left;">　　五、不使用非涉密计算机和存储介质（含个人）处理单位工作事项和涉密信息。</p>	
			  	</td>
			</tr>
			<tr>
				<td colspan="12"><p style="text-align:left;">　　如违反上述承诺，本人愿接受组织依据造成危害的情况和有关规定作出的行政处理、纪律处分和经济处罚，并承担因此引起的法律责任。 </p></td>
			</tr>
			<tr>	
				<td colspan="4">承诺人：</td>
			    <td colspan="8" style="text-align: left;"><hi:select  type="radio" emu="yesNo" name="cnr" isnull="no"  mes="请选择承诺人意见" /></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
