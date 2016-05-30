<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/equalification/js/equalification.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/equalification/equalificationInfo.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="eclassification.id" value="<s:property value="eclassification.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
						<td width="20%">姓名</td>
					    <td width="20%"><s:property value="eclassification.ename" /></td>
					    <td width="15%">曾用名</td>
					    <td width="20%"><s:property value="eclassification.fname" /></td>
					    <td colspan="2" rowspan="4"></td>
					</tr>
					<tr>
					    <td>性别</td>
					    <td style="text-align: left;"><hi:select emu="sex" name="eclassification.sex" isLabel="true" /></td>
					    <td>民族</td>
					    <td><s:property value="eclassification.national" /></td>
					</tr>
					<tr>
					    <td>出生年月日</td>
					    <td><s:date name="eclassification.brithday" format="yyyy-MM-dd"/></td>
					    <td>籍贯</td>
					    <td><s:property value="eclassification.location" /></td>
					</tr>
					<tr>
					    <td>政治面貌</td>
					    <td><s:property value="eclassification.politicsstatus" /></td>
					    <td>文化程度</td>
					    <td><s:property value="eclassification.education" /></td>
					</tr>
					<tr>
					    <td>技术专业</td>
					    <td><s:property value="eclassification.professional" /></td>
					    <td>技术职称</td>
					    <td><s:property value="eclassification.title" /></td>
					    <td width="110">掌握语言</td>
					    <td width="151"><s:property value="eclassification.language" /></td>
					</tr>
					<tr>
					    <td>留学国家</td>
					    <td><s:property value="eclassification.abroadcountries" /></td>
					    <td>留学时间</td>
					    <td><s:date name="eclassification.studytime" format="yyyy-MM-dd"/></td>
					    <td>留学方式</td>
					    <td><s:property value="eclassification.studyway" /></td>
					</tr>
					<tr>
					    <td >公民身份证号码</td>
					    <td colspan="2" ><s:property value="eclassification.cardnum" /></td>
					    <td width="20%">户籍派出所</td>
					    <td colspan="3" ><s:property value="eclassification.policestation" /></td>
					</tr>
					<tr>
					    <td>因私护照号/通行证号</td>
					    <td colspan="5"><s:property value="eclassification.passportno" /></td>
					</tr>
					<tr>
					    <td>现家庭住址</td>
					    <td colspan="3"><s:property value="eclassification.address" /></td>
					    <td>邮编</td>
					    <td><s:property value="eclassification.zipcode" /></td>
					</tr>
					<tr>
					    <td>原学习/工作单位名称</td>
					    <td><s:property value="eclassification.ouname" /></td>
					    <td>原岗位名称</td>
					    <td><s:property value="eclassification.oposition" /></td>
					    <td>原岗位密级</td>
					    <td style="text-align: left;"><hi:select emu="page_27_applyersecurity" name="eclassification.classification" isLabel="true" /></td>
					</tr>
					<tr>
					    <td>拟进入单位/部门及处室</td>
					    <td><s:property value="eclassification.newunit" /></td>
					    <td>岗位名称</td>
					    <td><s:property value="eclassification.newposition" /></td>
					    <td>岗位密级</td>
					    <td style="text-align: left;"><hi:select emu="page_27_applyersecurity" name="eclassification.newclassification" isLabel="true" /></td>
					</tr>
					<tr>
					    <td colspan="6"><div align="center">本人主要学习工作经历（自大学填起）</div></td>
					</tr>
					<tr id="brtr">
					    <td>起止时间</td>
					    <td colspan="2">工作单位</td>
					    <td>岗位</td>
					    <td>职务</td>
					    <td nowrap="nowrap">证明人</td>
					</tr>
					<s:iterator value="swList" status="sw">
						<tr id="brtr<s:property value='#sw.index+1'/>">
						    <td><s:date name="wstartdate" format="yyyy-MM-dd"/>&nbsp;&nbsp;-&nbsp;&nbsp;<s:date name="wenddate" format="yyyy-MM-dd"/></td>
						    <td colspan="2"><s:property value="workunit"/></td>
						    <td><s:property value="jobs"/></td>
						    <td><s:property value="position"/></td>
						    <td><s:property value="zmname"/></td>
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
						    <td colspan="1"><s:property value="relation"/></td>
						    <td><s:property value="name"/></td>
						    <td>
						    	<s:if test="sex==0">女</s:if>
						    	<s:elseif test="sex==1">男</s:elseif>
							</td>
						    <td><s:property value="age"/></td>
						    <td><s:property value="national"/></td>
						    <td><s:property value="dwzw"/></td>
						</tr>
					</s:iterator>
					<tr>
					    <td rowspan="3">聘用前政治表现</td>
					    <td colspan="2">参加何种民主党派或社会团体：</td>
					    <td colspan="3"><s:property value="eclassification.democratic"/></td>
					</tr>
					<tr>
					    <td colspan="2">有无受过任何处分：</td>
					    <td colspan="3"><s:property value="eclassification.Disciplinary"/></td>
					</tr>
					<tr>
					    <td colspan="2">其他需要说明的情况：</td>
					    <td colspan="3"><s:property value="eclassification.otherdesc"/></td>
					</tr>
					<tr>
					    <td colspan="3">本人承诺所填写的信息完整、真实。</td>
					    <td colspan="1">本人签字：</td>
					    <td colspan="3" style="text-align: left;"><hi:select emu="yesNo" name="eclassification.signname" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="3">原单位意见</td>
					    <td colspan="2">该人员所填写的情况属实。该人员为：</td>
					    <td colspan="3" style="text-align: left;"><hi:select emu="BM-02-02persontype" name="eclassification.ptype" isLabel="true" /></td>
					</tr>
					<tr>
					    <td colspan="2">脱密期</td>
					    <td colspan="3"><s:date name="eclassification.offthickstarttime" format="yyyy-MM-dd"/>起 至<s:date name="eclassification.offthickendtime" format="yyyy-MM-dd"/>止</td>
					</tr>
					<tr>
					    <td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select emu="yesNo" name="eclassification.ounitsign" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="2">院/公司人力资源部审查意见</td>
					    <td colspan="5"><s:property value="eclassification.departmentopinion" /> </td>
					</tr>
					<tr>
					    <td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select emu="yesNo" name="eclassification.departmentsign" isLabel="true"/></td>
					</tr>
					<tr>
					    <td rowspan="2">院/公司保密委员会办公室审查意见</td>
					    <td colspan="5" style="text-align: left;">经审查，该人员符合进入涉密岗位条件。</td>
					</tr>
					<tr>
					    <td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select emu="yesNo" name="eclassification.sofficesign" isLabel="true" /></td>
					</tr>
					<tr>
					    <td rowspan="2">院/公司保密委员会审批意见</td>
					    <td colspan="5" style="text-align: left;">同意该人员进入涉密岗位。</td>
					</tr>
					<tr>
						<td colspan="1">签字</td>
					    <td colspan="4" style="text-align: left;"><hi:select emu="yesNo" name="eclassification.scomsign" isLabel="true"/></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" onclick="javascript:window.location='${applicationScope.ctx}/equalification/equalificationList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>