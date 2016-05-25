<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>涉密岗位聘用人员保密资格审查表</title>
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
	
  </head>
  
  <body>
    <form id="formid" action="state" method="post">
    	<table width="100%" class="bordered">
			<tr>
				<td width="20%">姓名</td>
			    <td width="20%"><input type="text" name="xm" id="xm" isnull="no"  mes="姓名不能为空" /></td>
			    <td width="15%">曾用名</td>
			    <td width="20%"><input type="text" name="cym" id="cym" /></td>
			    <td colspan="2" rowspan="4"></td>
			</tr>
			<tr>
			    <td>性别</td>
			    <td style="text-align: left;"><hi:select  type="radio" emu="sex" name="xb" isnull="no"  mes="请选择性别" /></td>
			    <td>民族</td>
			    <td><input type="text" name="mz" id="mz" isnull="no"  mes="民族不能为空"/></td>
			</tr>
			<tr>
			    <td>出生年月日</td>
			    <td><input type="text" name="csrq" id="csrq" dtype="date(yyyy-MM-dd)" isnull="no" mes="出生年月日不能为空" value="" /></td>
			    <td>籍贯</td>
			    <td><input type="text" name="jg" id="jg" isnull="no"  mes="籍贯不能为空"/></td>
			</tr>
			<tr>
			    <td>政治面貌</td>
			    <td><input type="text" name="zzmm" id="zzmm" isnull="no"  mes="政治面貌不能为空"/></td>
			    <td>文化程度</td>
			    <td><input type="text" name="whcd" id="whcd"/></td>
			</tr>
			<tr>
			    <td>技术专业</td>
			    <td><input type="text" name="jszy" id="jszy"/></td>
			    <td>技术职称</td>
			    <td><input type="text" name="jszc" id="jszc"/></td>
			    <td width="110">掌握语言</td>
			    <td width="151"><input type="text" name="zwyy" id="zwyy"/></td>
			</tr>
			<tr>
			    <td>留学国家</td>
			    <td><input type="text" name="lxgj" id="lxgj"/></td>
			    <td>留学时间</td>
			    <td><input type="text" name="lxsj" id="lxsj" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td>留学方式</td>
			    <td><input type="text" name="lxfs" id="lxfs" /></td>
			</tr>
			<tr>
			    <td >公民身份证号码</td>
			    <td colspan="2" ><input type="text" name="sfzh" id="sfzh" dtype="idnum" isnull="no" mes="公民身份证号不能为空" /></td>
			    <td width="20%">户籍派出所</td>
			    <td colspan="3" ><input type="text" name="pcs" id="pcs" /></td>
			</tr>
			<tr>
			    <td>因私护照号/通行证号</td>
			    <td colspan="5"><input type="text" name="txzh" id="txzh" /></td>
			</tr>
			<tr>
			    <td>现家庭住址</td>
			    <td colspan="3"><input type="text" name="xjtzz" id="xjtzz" /></td>
			    <td>邮编</td>
			    <td><input type="text" name="yb" id="yb" dtype="number" /></td>
			</tr>
			<tr>
			    <td>原学习/工作单位名称</td>
			    <td><input type="text" name="ydwmc" id="ydwmc" /></td>
			    <td>原岗位名称</td>
			    <td><input type="text" name="ygwmc" id="ygwmc" /></td>
			    <td>原岗位密级</td>
			    <td style="text-align: left;"><hi:select type="radio" emu="page_27_applyersecurity" name="ygwmj" isnull="no"  mes="请选择原岗位密级" /></td>
			</tr>
			<tr>
			    <td>拟进入单位/部门及处室</td>
			    <td><input type="text" name="nbmcs" id="nbmcs" /></td>
			    <td>岗位名称</td>
			    <td><input type="text" name="gwmc" id="gwmc" /></td>
			    <td>岗位密级</td>
			    <td style="text-align: left;"><hi:select type="radio" emu="page_27_applyersecurity" name="gwmj" isnull="no"  mes="请选择岗位密级" /></td>
			</tr>
			<tr>
			    <td colspan="6"><div align="center">本人主要学习工作经历（自大学填起）</div></td>
			</tr>
			<tr>
			    <td>起止时间</td>
			    <td colspan="2">工作单位</td>
			    <td>岗位</td>
			    <td>职务</td>
			    <td nowrap="nowrap">证明人</td>
			</tr>
			<tr>
			    <td><input type="text" name="qssj" id="qssj" dtype="date(yyyy-MM-dd)" value="" />至<input type="text" name="jzsj" id="jzsj" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td colspan="2"><input type="text" name="gzdw" id="gzdw" /></td>
			    <td><input type="text" name="gw" id="gw" /></td>
			    <td><input type="text" name="zw" id="zw" /></td>
			    <td><input type="text" name="zmr" id="zmr" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="qssj1" id="qssj1" dtype="date(yyyy-MM-dd)" value="" />至<input type="text" name="jzsj1" id="jzsj1" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td colspan="2"><input type="text" name="gzdw1" id="gzdw1" /></td>
			    <td><input type="text" name="gw1" id="gw1" /></td>
			    <td><input type="text" name="zw1" id="zw1" /></td>
			    <td><input type="text" name="zmr1" id="zmr1" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="qssj2" id="qssj2" dtype="date(yyyy-MM-dd)" value="" />至<input type="text" name="jzsj2" id="jzsj2" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td colspan="2"><input type="text" name="gzdw2" id="gzdw2" /></td>
			    <td><input type="text" name="gw2" id="gw2" /></td>
			    <td><input type="text" name="zw2" id="zw2" /></td>
			    <td><input type="text" name="zmr2" id="zmr2" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="qssj3" id="qssj3" dtype="date(yyyy-MM-dd)" value="" />至<input type="text" name="jzsj3" id="jzsj3" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td colspan="2"><input type="text" name="gzdw3" id="gzdw3" /></td>
			    <td><input type="text" name="gw3" id="gw3" /></td>
			    <td><input type="text" name="zw3" id="zw3" /></td>
			    <td><input type="text" name="zmr3" id="zmr3" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="qssj4" id="qssj4" dtype="date(yyyy-MM-dd)" value="" />至<input type="text" name="jzsj4" id="jzsj4" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td colspan="2"><input type="text" name="gzdw4" id="gzdw4" /></td>
			    <td><input type="text" name="gw4" id="gw4" /></td>
			    <td><input type="text" name="zw4" id="zw4" /></td>
			    <td><input type="text" name="zmr4" id="zmr4" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="qssj5" id="qssj5" dtype="date(yyyy-MM-dd)" value="" />至<input type="text" name="jzsj5" id="jzsj5" dtype="date(yyyy-MM-dd)" value="" /></td>
			    <td colspan="2"><input type="text" name="gzdw5" id="gzdw5" /></td>
			    <td><input type="text" name="gw5" id="gw5" /></td>
			    <td><input type="text" name="zw5" id="zw5" /></td>
			    <td><input type="text" name="zmr5" id="zmr5" /></td>
			</tr>
			<tr>
			    <td colspan="6"><div align="center">国内外主要家庭成员及社会关系情况</div></td>
			</tr>
			<tr>
			    <td colspan="1">关系</td>
			    <td nowrap="nowrap" colspan="1">姓名</td>
			    <td colspan="1">性别</td>
			    <td colspan="1">年龄</td>
			    <td colspan="1">国籍/籍贯</td>
			    <td colspan="1">工作单位及职务（涉外应标明国别和所在机构名称）</td>
			</tr>
			<tr>
			    <td colspan="1"><input type="text" name="gx" id="gx" /></td>
			    <td><input type="text" name="cyxm" id="cyxm" /></td>
			    <td><hi:select  type="radio" emu="sex" name="xb" /></td>
			    <td><input type="text" name="nl" id="nl" dtype="number" /></td>
			    <td><input type="text" name="gjjg" id="gjjg" /></td>
			    <td><input type="text" name="dwzw" id="dwzw" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="gx1" id="gx1" /></td>
			    <td><input type="text" name="cyxm1" id="cyxm1" /></td>
			    <td><hi:select  type="radio" emu="sex" name="xb1" /></td>
			    <td><input type="text" name="nl1" id="nl1" dtype="number" /></td>
			    <td><input type="text" name="gjjg1" id="gjjg1" /></td>
			    <td><input type="text" name="dwzw1" id="dwzw1" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="gx2" id="gx2" /></td>
			    <td><input type="text" name="cyxm2" id="cyxm2" /></td>
			    <td><hi:select  type="radio" emu="sex" name="xb2" /></td>
			    <td><input type="text" name="nl2" id="nl2" dtype="number" /></td>
			    <td><input type="text" name="gjjg2" id="gjjg2" /></td>
			    <td><input type="text" name="dwzw2" id="dwzw2" /></td>
			</tr>
			<tr>
			    <td><input type="text" name="gx3" id="gx3" /></td>
			    <td><input type="text" name="cyxm3" id="cyxm3" /></td>
			    <td><hi:select  type="radio" emu="sex" name="xb3" /></td>
			    <td><input type="text" name="nl3" id="nl3" dtype="number" /></td>
			    <td><input type="text" name="gjjg3" id="gjjg3" /></td>
			    <td><input type="text" name="dwzw3" id="dwzw3" /></td>
			</tr>
			<tr>
			    <td rowspan="3">聘用前政治表现</td>
			    <td colspan="2">参加何种民主党派或社会团体：</td>
			    <td colspan="3"><input type="text" name="shtt" id="shtt" /></td>
			</tr>
			<tr>
			    <td colspan="2">有无受过任何处分：</td>
			    <td colspan="3"><input type="text" name="cf" id="cf" /></td>
			</tr>
			<tr>
			    <td colspan="2">其他需要说明的情况：</td>
			    <td colspan="3"><input type="text" name="qt" id="qt" /></td>
			</tr>
			<tr>
			    <td colspan="3">本人承诺所填写的信息完整、真实。</td>
			    <td colspan="1">本人签字：</td>
			    <td colspan="3" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="brqm" isnull="no"  mes="请选择本人签名" /></td>
			</tr>
			<tr>
			    <td rowspan="3">原单位意见</td>
			    <td colspan="2">该人员所填写的情况属实。该人员为：</td>
			    <td colspan="3" style="text-align: left;"><hi:select type="radio" emu="BM-02-02persontype" name="rylx" isnull="no"  mes="请选择人员类型" /></td>
			</tr>
			<tr>
			    <td colspan="2">脱密期</td>
			    <td colspan="3"><input type="text" name="tmqs" id="tmqs" dtype="date(yyyy-MM-dd)" value="" isnull="no" mes="脱密起始日期不能为空"/>起 至<input type="text" name="tmjz" id="tmjz" dtype="date(yyyy-MM-dd)" value="" isnull="no" mes="脱密截止日期不能为空"/>止</td>
			</tr>
			<tr>
			    <td colspan="1">签字</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="ydwqz" isnull="no"  mes="请选择原单位签字意见" /></td>
			</tr>
			<tr>
			    <td rowspan="2">院/公司人力资源部审查意见</td>
			    <td colspan="5"><textarea name="rsb" id="rsb" ></textarea> </td>
			</tr>
			<tr>
			    <td colspan="1">签字</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="rsbqz" isnull="no"  mes="请选择院/公司人力资源部签字意见" /></td>
			</tr>
			<tr>
			    <td rowspan="2">院/公司保密委员会办公室审查意见</td>
			    <td colspan="5" style="text-align: left;">经审查，该人员符合进入涉密岗位条件。</td>
			</tr>
			<tr>
			    <td colspan="1">签字</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="bmbgs" isnull="no"  mes="请选择保密委员会办公室签字意见" /></td>
			</tr>
			<tr>
			    <td rowspan="2">院/公司保密委员会审批意见</td>
			    <td colspan="5" style="text-align: left;">同意该人员进入涉密岗位。</td>
			</tr>
			<tr>
				<td colspan="1">签字</td>
			    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="bmwyh" isnull="no"  mes="请选择保密委员会签字意见" /></td>
			</tr>
		</table>
		<input type="submit" value="提交" >
    </form>
  </body>
</html>
