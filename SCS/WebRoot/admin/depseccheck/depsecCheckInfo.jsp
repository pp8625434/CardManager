<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/common/validator.js"></script>
		<script type="text/javascript"
			src="${applicationScope.ctx}/uploader/jquery-1.8.0.min.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/style/style.css">

	</head>
	<body class="adminMain">
		<div class="mainTitle">
			部门保密工作自查详情
		</div>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table class="bordered">
					<tr>
						<td width="5%">
							序号
						</td>
						<td width="20%">
							自查项目
						</td>
						<td width="45%">
							自查内容
						</td>
						<td width="30%">
							自查记录
						</td>
					</tr>
					<tr>
						<td rowspan="4">
							1
						</td>
						<td rowspan="4">
							涉密人员管理
						</td>
						<td style="text-align: left;">
							有无岗位变动情况。
						</td>
						<td>
							<s:property value="depsecCheck.jobchange" />
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							有无调入人员（含临时借调、返聘等），调入人员是否及时定密并进行保密教育。
						</td>
						<td>
							<s:property value="depsecCheck.personeduca" />
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							有无调出人员。
						</td>
						<td>
							<s:property value="depsecCheck.outperson"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否组织对涉密人员进行培训，培训学时、培训率。
						</td>
						<td>
							<s:property value="depsecCheck.ptrain"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							2
						</td>
						<td rowspan="3">
							上网机、传真机等公用办公设备管理
						</td>
						<td style="text-align: left;">
							上网机是否处理过涉密信息或单位敏感信息。
						</td>
						<td>
							<s:property value="depsecCheck.handleinfor"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							上网机、传真机等公用办公设备使用是否有登记记录，记录是否完整。
						</td>
						<td>
							<s:property value="depsecCheck.useregist"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							传真机是否发送或复印过涉密信息。
						</td>
						<td>
							<s:property value="depsecCheck.scoryinfor"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							3
						</td>
						<td rowspan="2">
							涉密会议管理
						</td>
						<td style="text-align: left;">
							承办涉密会议是否履行审批手续。
						</td>
						<td>
							<s:property value="depsecCheck.cbmeeting"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							涉密会议是否按涉密会议保密管理工作方案进行保密管理。
						</td>
						<td>
							<s:property value="depsecCheck.secmanage"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							4
						</td>
						<td rowspan="2">
							涉外活动
						</td>
						<td style="text-align: left;">
							承办涉外活动是否履行审批手续。
						</td>
						<td>
							<s:property value="depsecCheck.cbactivitycheck"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							涉外活动是否按涉外活动保密管理工作方案进行保密管理。
						</td>
						<td>
							<s:property value="depsecCheck.cbactivity"/>
						</td>
					</tr>
					<tr>
						<td>
							5
						</td>
						<td>
							员工自查情况
						</td>
						<td style="text-align: left;">
							是否要求部门员工每月自查，对自查情况是否进行记录，对自查问题是否及时整改。
						</td>
						<td>
							<s:property value="depsecCheck.employzczg"/>
						</td>
					</tr>
					<tr>
						<td>
							6
						</td>
						<td>
							其他事项
						</td>
						<td style="text-align: left;">
							合作或协作单位、人员是否涉及涉密事项。如有，是否签订保密协议书。
						</td>
						<td>
							<s:property value="depsecCheck.cooperation"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							其他情况记录
						</td>
						<td colspan="2">
							<s:property value="depsecCheck.otherinfor"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							发现问题
						</td>
						<td colspan="2">
							<s:property value="depsecCheck.question"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							对发现问题的整改情况
						</td>
						<td colspan="2">
							<s:property value="depsecCheck.corrective"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" rowspan="2">
							部门负责人意见
						</td>
						<td colspan="2" style="text-align: left;">
							本部门已按自查要求进行自查，自查记录属实。
						</td>
					</tr>
					<tr>
						<td>
							签字：
						</td>
						<td style="text-align: left;">
							<hi:select disabled="true" type="radio" emu="yesNo" name="depsecCheck.depsign" />
						</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>