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
		<script type="text/javascript" src="${applicationScope.ctx}/admin/conagreement/js/conagreement.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/conagreement/saveConagreement.action" method="post" name="formSearch" id="formSearch" onsubmit="saveConagreement();">
			<input type="hidden" id="cid" name="conagreement.id" value="<s:property value="conagreement.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<table width="100%" class="bordered">
					<tr>
						<td colspan="4">
							<p style="text-align:left;">甲方：<input type="text" name="conagreement.jfname" id="jf" value="<s:property value="conagreement.jfname" />" isnull="no" mes="甲方不能为空"/></p>
							<p style="text-align:left;">乙方：<input type="text" name="conagreement.yfname" id="yf" value="<s:property value="conagreement.yfname" />" isnull="no" mes="乙方不能为空"/></p>
							<p style="text-align:left;">　　为了保守国家秘密和甲方商业秘密，根据《中华人民共和国保守国家秘密法》，甲乙双方本着诚信求实原则订立本保密协议书。</p>
							<p style="text-align:left;">　　乙方承诺，在双方合作活动中，对甲方提供的所有涉及国家秘密和甲方商业秘密的信息保密，不公开或泄露给第三方，同时遵守约定
							的如下保密事项：</p>
							<p style="text-align:left;">　　一、除法律规定和甲方已在社会上正式公开的信息外，所有甲方以口头、书面、图像、音影、演示产品或其他任何形式向乙方披露的
							信息皆视为保密资料。</p>
							<p style="text-align:left;">　　二、除双方参与合作项目成员外，乙方不得向任何第三方泄露保密资料的任何部分。</p>
							<p style="text-align:left;">　　三、乙方对甲方的保密资料应积极主动采取保密措施并加强管理。</p>
							<p style="text-align:left;">　　四、乙方在本协议书规定范围内接受甲方的监督和检查，有权要求乙方落实甲方的整改要求。</p>
							<p style="text-align:left;">　　五、乙方应对其参与合作项目的员工进行保密教育，严格保守有关国家秘密和甲方的商业秘密。</p>
							<p style="text-align:left;">　　六、乙方员工违反约定泄露国家秘密和甲方的商业秘密的，乙方应负法律责任。</p>
							<p style="text-align:left;">　　七、未经甲方同意，乙方不得利用甲方信息为自己喝他人制造、销售产品或提供服务，以谋取利益。</p>
							<p style="text-align:left;">　　八、当合作活动终止或甲方提出要求时，乙方应在合作活动结束之日或提出要求之日归还甲方的有关保密资料。</p>
							<p style="text-align:left;">　　九、当本协议约定的合作（或协作）项目结束，乙方对所知悉国家秘密和甲方的商业秘密仍承担保密义务。</p>
							<p style="text-align:left;">　　十、乙方违反本协议的约定应当承担法律责任，并赔偿由此造成的甲方损失。</p>
							<p style="text-align:left;">　　十一、未尽事宜由双方协商另行签订补充协议。</p>
							<p style="text-align:left;">　　十二、本协议甲、乙双方各存一份。本协议自双方签字之日起生效。</p>
						</td>
					</tr>
					<tr>
						<td>甲方授权代表：</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="conagreement.jfsign" isnull="no"  mes="请选择甲方授权代表签字" /></td>
					    <td>乙方授权代表：</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="conagreement.yfsign" isnull="no"  mes="请选择乙方授权代表签字" /></td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/conagreement/conagreementList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>