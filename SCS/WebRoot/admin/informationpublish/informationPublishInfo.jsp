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
			互联网信息发布审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						互联网信息发布审批表
					</caption>
					<tr>
						<td width="25%">
							申请部门或单位
						</td>
						<td width="25%">
							<s:property value="informationPublish.applydept"/>
						</td>
						<td width="25%">
							申请人
						</td>
						<td width="25%">
							<s:property value="informationPublish.applicant"/>
						</td>
					</tr>
					<tr>
						<td>
							发布信息内容
						</td>
						<td>
							<s:property value="informationPublish.publishcontent"/>
						</td>
						<td>
							申请日期
						</td>
						<td>
							<s:date name="informationPublish.applydate" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请部门意见
						</td>
						<td colspan="3">
							<s:property value="informationPublish.applydeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="informationPublish.applydeptsign" id="informationPublish.applydeptsign"  />
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							保密管理部门审查意见
						</td>
						<td colspan="3">
							<s:property value="informationPublish.securityopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="informationPublish.securitysign" id="informationPublish.securitysign"  />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							（仅在院、航天电子公司互联网上发布信息时，保密处填写意见。）
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							证券部审查意见
						</td>
						<td colspan="3">
							<s:property value="informationPublish.bonddeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="informationPublish.bonddeptsign" id="informationPublish.bonddeptsign"  />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							（仅在院、航天电子公司互联网上发布信息时，证券部填写意见。）
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							院主管领导意见
						</td>
						<td colspan="3">
							<s:property value="informationPublish.leader"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="informationPublish.leadersign" id="informationPublish.leadersign" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							（仅在院、航天电子公司互联网上发布信息时，填写此意见。）
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							信息化管理部门执行说明
						</td>
						<td colspan="3">
							<s:property value="informationPublish.infordeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="informationPublish.infordeptsign" id="informationPublish.infordeptsign" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							（仅在院、航天电子公司互联网上发布信息时，填写此意见。）
						</td>
					</tr>
					<tr>
						<td>
							备注
						</td>
						<td colspan="3">
							在院、航天电子公司互联网上发布信息的，此表由信息化管理部门留存备案；对外发送邮件信息的此表由业务部门留存；摆渡邮件审批在数据摆渡系统中，由导数员负责发送。
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