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
			开通/撤销互联网账号审批详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						开通/撤销互联网账号审批表
					</caption>
					<tr>
						<td width="25%">
							申请人
						</td>
						<td width="25%">
							<s:property value="internetAccount.applicant"/>
						</td>
						<td width="25%">
							所在部门/单位
						</td>
						<td width="25%">
							<s:property value="internetAccount.deptname"/>
						</td>
					</tr>
					<tr>
						<td>
							外网实名用户名单（可附表）
						</td>
						<td colspan="3">
							<s:property value="internetAccount.userlist"/>
						</td>
					</tr>
					<tr>
						<td>
							联系人
						</td>
						<td>
							<s:property value="internetAccount.linkman"/>
						</td>
						<td>
							联系电话
						</td>
						<td>
							<s:property value="internetAccount.cellphone"/>
						</td>
					</tr>
					
					<tr>
						<td>
							开通原因
						</td>
						<td colspan="3">
							<s:property value="internetAccount.openreason"/>
						</td>
					</tr>
					<tr>
						<td>
							撤销原因
						</td>
						<td colspan="3">
							<s:property value="internetAccount.revokereason"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请部门/单位意见
						</td>
						<td colspan="3">
							<s:property value="internetAccount.applydeptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="internetAccount.applydeptsign" id="internetAccount.applydeptsign" />
						</td>
					</tr>
					<tr>
						<td>
							责任告知书
						</td>
						<td colspan="3">
							<p align="left">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								中国航天科技集团公司第九院永丰基地园区国际互联网出口已采用实名审计，登录互联网请自觉遵守如下规定：
							</p>
							<p align="left">
								一、遵守国家、集团公司和院本部有关互联网上网保密管理规定和法律法规；
							</p>
							<p align="left">
								二、使用公共上网机时严格按照要求做好登记，使用完成后应立即登出管理网关；
							</p>
							<p align="left">
								三、不准在互联网计算机中处理、存储涉密信息及办公事务；
							</p>
							<p align="left">
								四、不准连接涉密移动存储介质、光盘等涉密载体；
							</p>
							<p align="left">
								五、未经审批不得通过上网机向国际互联网发布信息（含邮件）；
							</p>
							<p align="left">
								六、在涉密场所内的上网机不得外接多媒体设备或开启多媒体设备功能；
							</p>
							<p align="left">
								七、因互联网使用人工作变动，责任部门应及时通知信息档案部撤销该使用人的上网账户。
							</p>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							责任人签字
						</td>
						<td colspan="3">
							本人已阅读并了解上述条款的含义，保证遵守上述条款的约束，并保证将此保密责任书内容传达到每一个使用该上网计算机的人员，并承担监督检查及时报告的责任。
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="internetAccount.dutyofficer" id="internetAccount.dutyofficer"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							操作记录情况
						</td>
						<td>
							是否完成开通（撤销）申请账号
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesOrNo" name="internetAccount.isfinish" id="internetAccount.isfinish" />
							
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<s:property value="internetAccount.operatrecord"/>
						</td>
						
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select disabled="true" type="radio" emu="yesNo" name="internetAccount.recorder" id="internetAccount.recorder"  />
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