<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/equalification/js/equalification.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/equalification/saveEqualification.action" method="post" name="formSearch" id="formSearch" onsubmit="saveEqualification()">
			<input type="hidden" id="cid" name="eclassification.id" value="<s:property value="eclassification.id" />">
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
						<td width="20%">姓名</td>
					    <td width="20%"><input type="text" name="eclassification.ename" id="xm" value="<s:property value="eclassification.ename" />" isnull="no"  mes="姓名不能为空" /></td>
					    <td width="15%">曾用名</td>
					    <td width="20%"><input type="text" name="eclassification.fname" id="cym" value="<s:property value="eclassification.fname" />"/></td>
					    <td colspan="2" rowspan="4"></td>
					</tr>
					<tr>
					    <td>性别</td>
					    <td style="text-align: left;"><hi:select  type="radio" emu="sex" name="eclassification.sex" isnull="no"  mes="请选择性别" /></td>
					    <td>民族</td>
					    <td><input type="text" name="eclassification.national" id="mz" isnull="no"  mes="民族不能为空" value="<s:property value="eclassification.national" />"/></td>
					</tr>
					<tr>
					    <td>出生年月日</td>
					    <td><input type="text" name="eclassification.brithday" id="csrq" dtype="date(yyyy-MM-dd)" isnull="no" mes="出生年月日不能为空" value="<s:date name="eclassification.brithday" format="yyyy-MM-dd"/>" /></td>
					    <td>籍贯</td>
					    <td><input type="text" name="eclassification.location" id="jg" value="<s:property value="eclassification.location" />" isnull="no"  mes="籍贯不能为空"/></td>
					</tr>
					<tr>
					    <td>政治面貌</td>
					    <td><input type="text" name="eclassification.politicsstatus" id="zzmm" value="<s:property value="eclassification.politicsstatus" />" /></td>
					    <td>文化程度</td>
					    <td><input type="text" name="eclassification.education" id="whcd" value="<s:property value="eclassification.education" />"/></td>
					</tr>
					<tr>
					    <td>技术专业</td>
					    <td><input type="text" name="eclassification.professional" id="jszy" value="<s:property value="eclassification.professional" />"/></td>
					    <td>技术职称</td>
					    <td><input type="text" name="eclassification.title" id="jszc" value="<s:property value="eclassification.title" />"/></td>
					    <td width="110">掌握语言</td>
					    <td width="151"><input type="text" name="eclassification.language" id="zwyy" value="<s:property value="eclassification.language" />"/></td>
					</tr>
					<tr>
					    <td>留学国家</td>
					    <td><input type="text" name="eclassification.abroadcountries" id="lxgj" value="<s:property value="eclassification.abroadcountries" />"/></td>
					    <td>留学时间</td>
					    <td><input type="text" name="eclassification.studytime" id="lxsj" dtype="date(yyyy-MM-dd)" value="<s:date name="eclassification.studytime" format="yyyy-MM-dd"/>" /></td>
					    <td>留学方式</td>
					    <td><input type="text" name="eclassification.studyway" id="lxfs" value="<s:property value="eclassification.studyway" />"/></td>
					</tr>
					<tr>
					    <td >公民身份证号码</td>
					    <td colspan="2" ><input type="text" name="eclassification.cardnum" id="sfzh" dtype="idnum" value="<s:property value="eclassification.cardnum" />" /></td>
					    <td width="20%">户籍派出所</td>
					    <td colspan="3" ><input type="text" name="eclassification.policestation" id="pcs" value="<s:property value="eclassification.policestation" />"/></td>
					</tr>
					<tr>
					    <td>因私护照号/通行证号</td>
					    <td colspan="5"><input type="text" name="eclassification.passportno" id="txzh" value="<s:property value="eclassification.passportno" />"/></td>
					</tr>
					<tr>
					    <td>现家庭住址</td>
					    <td colspan="3"><input type="text" name="vaddress" id="xjtzz" value="<s:property value="eclassification.address" />"/></td>
					    <td>邮编</td>
					    <td><input type="text" name="eclassification.zipcode" id="yb" dtype="number" value="<s:property value="eclassification.zipcode" />"/></td>
					</tr>
					<tr>
					    <td>原学习/工作单位名称</td>
					    <td><input type="text" name="eclassification.ouname" id="ydwmc" value="<s:property value="eclassification.ouname" />"/></td>
					    <td>原岗位名称</td>
					    <td><input type="text" name="eclassification.oposition" id="ygwmc" value="<s:property value="eclassification.oposition" />"/></td>
					    <td>原岗位密级</td>
					    <td style="text-align: left;"><hi:select type="radio" emu="page_27_applyersecurity" name="eclassification.classification" isnull="no"  mes="请选择原岗位密级" /></td>
					</tr>
					<tr>
					    <td>拟进入单位/部门及处室</td>
					    <td><input type="text" name="eclassification.newunit" id="nbmcs" value="<s:property value="eclassification.newunit" />" /></td>
					    <td>岗位名称</td>
					    <td><input type="text" name="eclassification.newposition" id="gwmc" value="<s:property value="eclassification.newposition" />"/></td>
					    <td>岗位密级</td>
					    <td style="text-align: left;"><hi:select type="radio" emu="page_27_applyersecurity" name="eclassification.newclassification" isnull="no"  mes="请选择岗位密级" /></td>
					</tr>
					<tr>
					    <td colspan="6"><div align="center">本人主要学习工作经历（自大学填起）</div></td>
					</tr>
					<tr id="brtr">
					    <td colspan="2">起止时间</td>
					    <td>工作单位</td>
					    <td>岗位</td>
					    <td>职务</td>
					    <td>证明人</td>
					</tr>
					<s:iterator value="swList" status="sw">
						<tr id="brtr<s:property value='#sw.index+1'/>">
						    <td colspan="2"><input type="text" name="wstartdate" id="qssj" dtype="date(yyyy-MM-dd)" value="<s:date name="wstartdate" format="yyyy-MM-dd"/>" />-<input type="text" name="wenddate" id="jzsj" dtype="date(yyyy-MM-dd)" value="<s:date name="wenddate" format="yyyy-MM-dd"/>" /></td>
						    <td><input type="text" name="workunit" id="gzdw" value="<s:property value="workunit"/>"/></td>
						    <td><input type="text" name="jobs" id="gw" value="<s:property value="jobs"/>"/></td>
						    <td><input type="text" name="position" id="zw" value="<s:property value="position"/>"/></td>
						    <td><input type="text" name="zmname" id="zmr" value="<s:property value="zmname"/>"/></td>
						</tr>
					</s:iterator>
					<tr>
					    <td colspan="6"><div align="center">国内外主要家庭成员及社会关系情况</div></td>
					</tr>
					<tr id="gxtr">
					    <td colspan="1">关系</td>
					    <td nowrap="nowrap" colspan="1">姓名</td>
					    <td colspan="1">性别</td>
					    <td colspan="1">年龄</td>
					    <td colspan="1">国籍/籍贯</td>
					    <td colspan="1">工作单位及职务（涉外应标明国别和所在机构名称）</td>
					</tr>
					<s:iterator value="sfList" status="sf">
						<tr id="gxtr<s:property value="#sf.index+1"/>">
						    <td colspan="1"><input type="text" name="relation" id="gx" value="<s:property value="relation"/>"/></td>
						    <td><input type="text" name="name" id="cyxm" value="<s:property value="name"/>"/></td>
						    <td>
						    	<input type="radio" name='sex<s:property value="#sf.index+1"/>' value="0" <s:if test="sex ==0">checked="true"</s:if>/>女
					 			<input type="radio" name='sex<s:property value="#sf.index+1"/>' value="1" <s:if test="sex ==1">checked="true"</s:if>/>男
						    <td><input type="text" name="age" id="nl" dtype="number" value="<s:property value="age"/>"/></td>
						    <td><input type="text" name="national" id="gjjg" value="<s:property value="national"/>"/></td>
						    <td><input type="text" name="dwzw" id="dwzw" value="<s:property value="dwzw"/>"/></td>
						</tr>
					</s:iterator>
					<tr>
					    <td rowspan="3">聘用前政治表现</td>
					    <td colspan="2">参加何种民主党派或社会团体：</td>
					    <td colspan="3"><input type="text" name="eclassification.democratic" id="shtt" value="<s:property value="eclassification.democratic"/>"/></td>
					</tr>
					<tr>
					    <td colspan="2">有无受过任何处分：</td>
					    <td colspan="3"><input type="text" name="eclassification.Disciplinary" id="cf" value="<s:property value="eclassification.Disciplinary"/>"/></td>
					</tr>
					<tr>
					    <td colspan="2">其他需要说明的情况：</td>
					    <td colspan="3"><input type="text" name="eclassification.otherdesc" id="qt" value="<s:property value="eclassification.otherdesc"/>"/></td>
					</tr>
					<tr>
					    <td colspan="3">本人承诺所填写的信息完整、真实。</td>
					    <td colspan="1">本人签字：</td>
					    <td colspan="3" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.signname" isnull="no"  mes="请选择本人签名"/></td>
					</tr>
					<tr>
					    <td rowspan="3">原单位意见</td>
					    <td colspan="2">该人员所填写的情况属实。该人员为：</td>
					    <td colspan="3" style="text-align: left;"><hi:select type="radio" emu="BM-02-02persontype" id="lx" name="eclassification.ptype" isnull="no"  mes="请选择人员类型" /></td>
					</tr>
					<tr>
					    <td colspan="2">脱密期</td>
					    <td colspan="3"><input type="text" name="eclassification.offthickstarttime" id="tmq" dtype="date(yyyy-MM-dd)" value="<s:date name="eclassification.offthickstarttime" format="yyyy-MM-dd"/>" isnull="no" mes="脱密起始日期不能为空"/>起 至<input type="text" name="eclassification.offthickendtime" id="tmjz" dtype="date(yyyy-MM-dd)" value="<s:date name="eclassification.offthickendtime" format="yyyy-MM-dd"/>" isnull="no" mes="脱密截止日期不能为空"/>止</td>
					</tr>
					<tr>
					    <td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.ounitsign" isnull="no"  mes="请选择原单位签字意见" /></td>
					</tr>
					<tr>
					    <td rowspan="2">院/公司人力资源部审查意见</td>
					    <td colspan="5"><s:textarea name="eclassification.departmentopinion" id="rsb" ></s:textarea> </td>
					</tr>
					<tr>
					    <td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.departmentsign" isnull="no"  mes="请选择院/公司人力资源部签字意见" /></td>
					</tr>
					<tr>
					    <td rowspan="2">院/公司保密委员会办公室审查意见</td>
					    <td colspan="5" style="text-align: left;">经审查，该人员符合进入涉密岗位条件。</td>
					</tr>
					<tr>
					    <td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.sofficesign" isnull="no"  mes="请选择保密委员会办公室签字意见" /></td>
					</tr>
					<tr>
					    <td rowspan="2">院/公司保密委员会审批意见</td>
					    <td colspan="5" style="text-align: left;">同意该人员进入涉密岗位。</td>
					</tr>
					<tr>
						<td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select type="radio" emu="yesNo" name="eclassification.scomsign" isnull="no"  mes="请选择保密委员会签字意见" /></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput5" value="添加本人经历" onclick="addStudy()" />
					&nbsp;
					<input type="button" id="addBut" class="btnInput5" value="添加成员详情" onclick="addCy()" />
					&nbsp;
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/equalification/equalificationList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>