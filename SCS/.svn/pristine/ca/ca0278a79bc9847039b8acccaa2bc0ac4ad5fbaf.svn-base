<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>涉密人员密级审定表</title>
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
				<td width="15%">姓名：</td>
			    <td width="15%"><input type="text" name="xm" id="xm" isnull="no" mes="姓名不能为空"/></td>
			    <td width="15%">岗位名称：</td>
			    <td width="20%"><input type="text" name="gwmc" id="gwmc" isnull="no" mes="岗位名称不能为空"/></td>
			    <td width="15%">岗位密级：</td>
				<td width="20%"><hi:select type="radio" emu="page_27_applyersecurity" name="gwmj" isnull="no"  mes="请选择岗位密级" /></td>
			</tr>
			<tr>
				<td colspan="6">
					<p style="text-align:left;">　　本人离开中国航天科技集团公司第九研究院（以下简称&#8220;院&#8221;）本部涉密岗位后，庄重承诺： </p> 
					<p style="text-align:left;">　　一、认真遵守国家保密法律、法规和规章制度，继续保守本人所知悉的国家秘密和航天秘密事项以及院商业秘密，承担应尽的保密义务和责任。</p> 
					<p style="text-align:left;">　　二、不以任何方式泄露所接触和已知的国家秘密事项及院尚未公开的内部事项。 </p> 
					<p style="text-align:left;">　　三、已全部清退本人持有的各类国家秘密载体。</p> 
					<p style="text-align:left;">　　四、未经院审查批准，不擅自发表涉及院国家秘密事项和未公开工作内容的文章、著述；不私自接受新闻媒体对院有关工作事项的采访。</p> 
					<p style="text-align:left;">　　五、保证提供的个人信息真实，自愿接受脱密期管理，自<input type="text" name="tmqs" id="tmqs" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="脱密期起始日期不能为空"/>
					至<input type="text" name="tmzj" id="tmzj" dtype="date(yyyy-MM-dd)" value="" isnull="no"  mes="脱密期截止日期不能为空"/>，服从有关部门的保密监管。三年内不到国（境）外驻华机构和组织以及外资企业工作。</p> 
			     	<p style="text-align:left;">　　六、若违反上述承诺，自愿承担党纪、政纪责任和法律后果。</p> 
			     	<p style="text-align:left;">　　本人同意承诺书自签署之日起生效，一式两份，保密委员会办公室和本人各存一份。</p> 
			     </td>
			</tr>
			<tr>
				<td>承诺人现住址：</td>
				<td colspan="5"><input type="text" name="cnrzz" id="cnrzz" isnull="no" mes="承诺人现住址不能为空"/></td>
			</tr>
			<tr>
				<td>身份证号码：</td>
			    <td colspan="5"><input type="text" name="sfz" id="sfz" isnull="no" dtype="idnum" mes="身份证号码不能为空"/></td>
			</tr>
			<tr>
			    <td>承诺人调往单位：</td>
			    <td colspan="5"><input type="text" name="dwdw" id="dwdw" isnull="no" mes="承诺人调往单位不能为空"/></td>
			</tr>
			<tr>
			    <td>联系方式：</td>
			    <td colspan="5"><input type="text" name="lxfs" id="lxfs" isnull="no" dtype="number" mes="联系方式不能为空"/></td>
			</tr>
			<tr>
			    <td>承诺人签名：</td>
			    <td colspan="5" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="cnr" isnull="no"  mes="请选择承诺人意见" /></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
