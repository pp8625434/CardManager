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
			保密协议书（样本）详情
		</div>
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<tr>
					    <td width="25%">承办部门</td>
					    <td width="25%">
					    	<s:property value="filmingActivity.orgname"/>
					    </td>
					    <td width="25%">本次活动保密负责人</td>
					    <td width="25%">
					    	<s:property value="filmingActivity.shead"/>
					    </td>
					</tr>
					<tr>
					    <td>拍摄目的</td>
					    <td colspan="3">
					    	<s:property value="filmingActivity.purpose"/>
					    </td>
					</tr>
					<tr>
					    <td width="25%">拍摄范围</td>
					    <td width="25%">
					    	<s:property value="filmingActivity.shootrange"/>
					    </td>
					    <td width="25%">拍摄时间</td>
					    <td width="25%">
					    	<s:date name="filmingActivity.shootdate" format="yyyy-MM-dd HH:mm:ss"/>
					    </td>
					</tr>
					<tr>
					    <td rowspan="3">拍摄内容是否涉密</td>
					    <td colspan="3" style="text-align:left;"><hi:select disabled="true" type="radio" emu="BM-07-04psnr" name="filmingActivity.isclassification"  /></td>
					</tr>
					<tr>
						<td>涉密等级：<hi:select disabled="true" type="radio" emu="BM-07-04psdj" name="filmingActivity.classification"  /></td>
						<td>负责拍摄人员：
							<s:property value="filmingActivity.cameras"/>
						</td>
						<td>承办部门监督人员：
							<s:property value="filmingActivity.monitors"/>
						</td>
					<tr>
						<td>保密委员会办公室跟踪情况记录：</td>
						<td colspan="2">
							<s:property value="filmingActivity.trackrecord"/>
						</td>
					</tr>
					<tr>
					    <td rowspan="2">承办部门意见</td>
					    <td colspan="3">
					    	<s:property value="filmingActivity.depdesc"/>
					    </td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;">
					    	<hi:select disabled="true"  type="radio" emu="yesNo" name="filmingActivity.depsign"/>
					    </td>
					</tr>
					<tr>
					    <td rowspan="2">保密要害部门、部位所在部门意见</td>
					    <td colspan="3">
					    	<s:property value="filmingActivity.partdesc"/>
					    </td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select disabled="true" type="radio" emu="yesNo" name="filmingActivity.partsign"  />
					    </td>
					</tr>
					<tr>
					    <td rowspan="2">保密委员会办公室意见</td>
					    <td colspan="3">
					    	<s:property value="filmingActivity.officedesc"/>
					    </td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select disabled="true" type="radio" emu="yesNo" name="filmingActivity.officesign"  />
					    </td>
					</tr>
					<tr>
					    <td rowspan="2">院保密委员会意见</td>
					    <td colspan="3">
					    	<s:property value="filmingActivity.scomdesc"/>
					    </td>
					</tr>
					<tr>
					    <td>签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select disabled="true"  type="radio" emu="yesNo" name="filmingActivity.scomsign"  />
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