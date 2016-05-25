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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/style.css">
		
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			泄密事件报告登记详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						泄密事件报告登记表
					</caption>
					<tr>
						<td width="20%">
							填报部门或单位
						</td>
						<td colspan="4">
							<s:property value="divulgeSecret.deptname"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							泄密事件发现过程
						</td>
						<td width="20%">
							发现时间
						</td>
						<td width="20%">
							<s:date name="divulgeSecret.finddate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td width="20%">
							发现地点
						</td>
						<td width="20%">
							<s:property value="divulgeSecret.findplace"/>
						</td>
					</tr>
					<tr>
						<td>
							发现人姓名
						</td>
						<td>
							<s:property value="divulgeSecret.finder"/>
						</td>
						<td>
							发现人职务
						</td>
						<td>
							<s:property value="divulgeSecret.finderposition"/>
						</td>
					</tr>
					<tr>
						<td>
							简要经过
						</td>
						<td colspan="3">
							<s:property value="divulgeSecret.briefproc"/>
						</td>
					</tr>
					<tr>
						<td rowspan="4">
							泄密事件基本情况
						</td>
						<td>
							当事人姓名
						</td>
						<td>
							<s:property value="divulgeSecret.party"/>
						</td>
						<td>
							职务
						</td>
						<td>
							<s:property value="divulgeSecret.partyposition"/>
						</td>
					</tr>
					<tr>
						<td>
							发生时间
						</td>
						<td>
							<s:date name="divulgeSecret.happendate"  format="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>
							发生地点
						</td>
						<td>
							<s:property value="divulgeSecret.happenplace"/>
						</td>
					</tr>
					<tr>
						<td>
							泄密方式
						</td>
						<td>
							<s:property value="divulgeSecret.divulgetype"/>
						</td>
						<td>
							泄密密级
						</td>
						<td>
							<hi:select disabled="true"  emu="BM-07-04psdj" name="divulgeSecret.divulgesec" id="divulgesec" />
						</td>
					</tr>
					<tr>
						<td>
							简要情况
						</td>
						<td colspan="3">
							<s:property value="divulgeSecret.briefcondition"/>
						</td>
					</tr>
					<tr>
						<td>
							造成或可能造成的危害
						</td>
						<td colspan="4">
							<s:property value="divulgeSecret.harm"/>
						</td>
					</tr>
					<tr>
						<td>
							已进行的查找工作情况
						</td>
						<td colspan="4">
							<s:property value="divulgeSecret.workcondition"/>
						</td>
					</tr>
					<tr>
						<td>
							已采取或拟采取的补救措施
						</td>
						<td colspan="4">
							<s:property value="divulgeSecret.measures"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							部门或单位意见
						</td>
						<td colspan="4">
							<s:property value="divulgeSecret.deptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							领导签字
						</td>
						<td>
							<hi:select disabled="true" type="radio" emu="yesNo" name="divulgeSecret.deptleadersign" id="deptleadersign"  />
						</td>
						<td>
							日期
						</td>
						<td>
							<s:date name="divulgeSecret.leadersigndate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							院保密委员会意见
						</td>
						<td colspan="4">
							<s:property value="divulgeSecret.sofficedesc"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td>
							<hi:select disabled="true" type="radio" emu="yesNo" name="divulgeSecret.sofficesign" id="sofficesign" />
						</td>
						<td>
							日期
						</td>
						<td >
							<s:date name="divulgeSecret.sofficedate" format="yyyy-MM-dd HH:mm:ss"/>
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