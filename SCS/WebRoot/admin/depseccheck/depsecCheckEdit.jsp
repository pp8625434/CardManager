<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/depseccheck/js/depsecCheck.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增部门保密工作自查
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/depseccheck/depsecCheckSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="depsecCheck.id" id="id"/>
			<input type="hidden" name="depsecCheck.version" id="version"/>
			<input type="hidden" name="depsecCheck.username" id="username"/>
			<input type="hidden" name="depsecCheck.userid" id="userid"/>
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
				    <td><input type="text" name="depsecCheck.jobchange" id="jobchange"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">有无调入人员（含临时借调、返聘等），调入人员是否及时定密并进行保密教育。</td>
				    <td><input type="text" name="depsecCheck.personeduca" id="personeduca"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">有无调出人员。</td>
				    <td><input type="text" name="depsecCheck.outperson" id="outperson"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否组织对涉密人员进行培训，培训学时、培训率。</td>
				    <td><input type="text" name="depsecCheck.ptrain" id="ptrain"/></td>
				</tr>
				<tr>
					<td rowspan="3">2</td>
				    <td rowspan="3">上网机、传真机等公用办公设备管理</td>
				    <td style="text-align:left;">上网机是否处理过涉密信息或单位敏感信息。</td>
				    <td><input type="text" name="depsecCheck.handleinfor" id="handleinfor"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">上网机、传真机等公用办公设备使用是否有登记记录，记录是否完整。</td>
				    <td><input type="text" name="depsecCheck.useregist" id="useregist"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">传真机是否发送或复印过涉密信息。</td>
				    <td><input type="text" name="depsecCheck.scoryinfor" id="scoryinfor"/></td>
				</tr>
				<tr>
					<td rowspan="2">3</td>
	    			<td rowspan="2">涉密会议管理</td>
				    <td style="text-align:left;">承办涉密会议是否履行审批手续。</td>
				    <td><input type="text" name="depsecCheck.cbmeeting" id="cbmeeting"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">涉密会议是否按涉密会议保密管理工作方案进行保密管理。</td>
				    <td><input type="text" name="depsecCheck.secmanage" id="secmanage"/></td>
				</tr>
				<tr>
					<td rowspan="2">4</td>
	    			<td rowspan="2">涉外活动</td>
				    <td style="text-align:left;">承办涉外活动是否履行审批手续。</td>
				    <td><input type="text" name="depsecCheck.cbactivitycheck" id="cbactivitycheck"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">涉外活动是否按涉外活动保密管理工作方案进行保密管理。</td>
				    <td><input type="text" name="depsecCheck.cbactivity" id="cbactivity"/></td>
				</tr>
				<tr>
					<td>5</td>
	    			<td>员工自查情况</td>
				    <td style="text-align:left;">是否要求部门员工每月自查，对自查情况是否进行记录，对自查问题是否及时整改。</td>
				    <td><input type="text" name="depsecCheck.employzczg" id="employzczg"/></td>
				</tr>
				<tr>
					<td>6</td>
	    			<td>其他事项</td>
				    <td style="text-align:left;">合作或协作单位、人员是否涉及涉密事项。如有，是否签订保密协议书。</td>
				    <td><input type="text" name="depsecCheck.cooperation" id="cooperation"/></td>
				</tr>
				<tr>
				    <td colspan="2">其他情况记录</td>
				    <td colspan="2"><textarea name="depsecCheck.otherinfor" id="otherinfor" ></textarea></td>
				</tr>
				<tr>
				    <td colspan="2">发现问题</td>
				    <td colspan="2"><textarea name="depsecCheck.question" id="question" ></textarea></td>
				</tr>
				<tr>
				    <td colspan="2">对发现问题的整改情况</td>
				    <td colspan="2"><textarea name="depsecCheck.corrective" id="corrective" ></textarea></td>
				</tr>
				<tr>
	    			<td colspan="2" rowspan="2">部门负责人意见</td>
	   				<td colspan="2" style="text-align:left;">本部门已按自查要求进行自查，自查记录属实。</td>
	  			</tr>
	  			<tr>
	    			<td>签字：</td>
	    			<td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="depsecCheck.depsign" isnull="no"  mes="请选择部门负责人签字" />
	    				<input type="hidden" name="depsecCheck.depid"/>
	    				<input type="hidden" name="depsecCheck.signdate"/>
	    			</td>
	  			</tr>
			</table>
			<br />
			<div class="btnBox">
				<input type="submit" id="addBut" value="保存"  class="btnInput1" />
				&nbsp;
				<input type="button" class="btnInput2 chancleButton" value="取消" 
					onclick="cancelBtn();"/>
			</div>
		</form>
		</div>
	</body>
</html>
