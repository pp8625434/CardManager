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
			员工保密工作自查详情
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
							项目描述
						</td>
						<td width="30%">
							自查情况
						</td>
					</tr>
					<tr>
						<td>
							1
						</td>
						<td>
							保密责任
						</td>
						<td style="text-align: left;">
							是否熟悉本职岗位的保密要求，并按规定履行保密工作职责。
						</td>
						<td>
							<s:property value="empSecCheck.confidentiality"/>
						</td>
					</tr>
					<tr>
						<td>
							2
						</td>
						<td>
							保密教育培训
						</td>
						<td style="text-align: left;">
							是否参加了单位、部门或处（室）组织的保密教育培训，培训学时是否计入了本人教育培训统计表。
						</td>
						<td>
							<s:property value="empSecCheck.education"/>
						</td>
					</tr>
					<tr>
						<td rowspan="8">
							3
						</td>
						<td rowspan="8">
							办公计算机（含便携式计算机）及存储介质管理使用情况
						</td>
						<td style="text-align: left;">
							是否按要求设置计算机用户口令。
						</td>
						<td>
							<s:property value="empSecCheck.setpwd"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否按信息化处统一要求进行维护（定期升级、打补丁、杀毒等）。
						</td>
						<td>
							<s:property value="empSecCheck.maintenance"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否有接入国际互联网情况。
						</td>
						<td>
							<s:property value="empSecCheck.atinternet"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否超越密级使用计算机及存储介质。
						</td>
						<td>
							<s:property value="empSecCheck.cymj"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							涉密电子文档是否按要求正确标密。
						</td>
						<td>
							<s:property value="empSecCheck.classifiedsecret"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							涉密存储介质是否有接入国际互联网情况。
						</td>
						<td>
							<s:property value="empSecCheck.matnternet"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							涉密便携式计算机及存储介质使用后是否存入密码文件柜。
						</td>
						<td>
							<s:property value="empSecCheck.savepwdark"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							便携式计算机及存储介质外出是否履行审批手续。
						</td>
						<td>
							<s:property value="empSecCheck.perprocedure"/>
						</td>
					</tr>
					<tr>
						<td rowspan="4">
							4
						</td>
						<td rowspan="4">
							互联网计算机（含便携式计算机）管理使用情况
						</td>
						<td style="text-align: left;">
							是否进行上网登记。
						</td>
						<td>
							<s:property value="empSecCheck.onlineregist"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否处理过涉密信息或办公事务。
						</td>
						<td>
							<s:property value="empSecCheck.handleaffairs"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							下载信息是否使用互联网专用介质。
						</td>
						<td>
							<s:property value="empSecCheck.smedia"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否在互联网上发布涉密信息或单位未公开信息。
						</td>
						<td>
							<s:property value="empSecCheck.inforpublish"/>
						</td>
					</tr>
					<tr>
						<td rowspan="5">
							5
						</td>
						<td rowspan="5">
							文件资料管理使用情况
						</td>
						<td style="text-align: left;">
							是否按要求及时清退。
						</td>
						<td>
							<s:property value="empSecCheck.timelyrepel"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否按规定执行收发、传递、借阅、复制、存放、销毁。
						</td>
						<td>
							<s:property value="empSecCheck.ttbcsd"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							过程涉密文件资料是否有登记，不使用时是否按要求存放或销毁。
						</td>
						<td>
							<s:property value="empSecCheck.rsd"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							个人因工作需要长时间留存的涉密文件资料是否履行登记审批手续，台帐是否在本部门备案。
						</td>
						<td>
							<s:property value="empSecCheck.recordtz"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否正确使用保管保密本。
						</td>
						<td>
							<s:property value="empSecCheck.kconfidentiality"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							6
						</td>
						<td rowspan="3">
							个人家用计算机（含便携式计算机）及存储介质管理使用情况
						</td>
						<td style="text-align: left;">
							个人家用计算机及存储介质是否处理过涉密信息及办公事务。
						</td>
						<td>
							<s:property value="empSecCheck.phandleaffairs"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							个人家用计算机是否连接过单位存储介质。
						</td>
						<td>
							<s:property value="empSecCheck.pconmedium"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							个人家中是否存有涉密载体。
						</td>
						<td>
							<s:property value="empSecCheck.pclassified"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							7
						</td>
						<td rowspan="3">
							其他事项
						</td>
						<td style="text-align: left;">
							内外网信息转换是否进行审查、审批。
						</td>
						<td>
							<s:property value="empSecCheck.ransforieinfor"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							是否因公（私）出国（境），并履行审批手续。
						</td>
						<td>
							<s:property value="empSecCheck.abroad"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
							离开办公区是否及时清桌锁柜。
						</td>
						<td>
							<s:property value="empSecCheck.cleartable"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							需要向组织汇报的其他事项
						</td>
						<td colspan="2">
							<s:property value="empSecCheck.otherinfor"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							对自查发现问题的整改情况
						</td>
						<td colspan="2">
							<s:property value="empSecCheck.rectification"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							其他说明
						</td>
						<td colspan="2">
							<p style="text-align: left;">
								1、本表每月25日前由本人对照内容认真自查，不得虚报、瞒报；
							</p>
							<p style="text-align: left;">
								2、自查情况应如实填写，不得用“√”或“×”表示；
							</p>
							<p style="text-align: left;">
								3、需要向组织汇报的其他事项，如没有应填写“无”；
							</p>
							<p style="text-align: left;">
								4，对发现的问题要逐条填写整改情况。
							</p>
						</td>
					</tr>
					<tr>
						<td colspan="2">自查时间：<s:date name="empSecCheck.cdate" format="yyyy-MM-dd HH:mm:ss"/></td>
					    <td >本人签字</td>
					    <td><hi:select disabled="true" type="radio" emu="yesNo"
							name="empSecCheck.cname"  /> 
						</td>
					</tr>
				</table>
				<br />

				<div class="btnBox">
					<input type="button" class="btnInput2 chancleButton" value="返回" />
				</div>
			</form>
		</div>
	</body>
</html>