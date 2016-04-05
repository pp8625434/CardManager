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
			src="${applicationScope.ctx}/admin/moneylog/js/moneyLog.js"></script>
			
	</head>
	<body class="adminMain">
		<div class="mainTitle">
			充值提示
		</div>

		<div class="mainConText">
				<table class="tableEdit">
					<s:if test="result.code ==0">
						<tr>
							<td width="80px">
								充值结果:
							</td>
							<td>
								充值成功！
							</td>
						</tr>
						<tr>
							<td width="80px">
								本次充值金额:
							</td>
							<td>
								<s:property value="result.thismoney" />
							</td>
						</tr>
						<tr>
							<td width="80px">
								账户余额:
							</td>
							<td>
								<s:property value="result.money" />
							</td>
						</tr>
						<tr>
							<td width="80px">
								账户积分:
							</td>
							<td>
								<s:property value="result.credit" />
							</td>
						</tr>
					</s:if>
					<s:else>
						<tr>
							<td width="80px">
								充值结果:
							</td>
							<td>
								失败成功！
							</td>
						</tr>
						<tr>
							<td width="80px">
								失败原因:
							</td>
							<td>
								<s:property value="result.msg" />
							</td>
						</tr>
					</s:else>
				</table>
				<br />
				<div class="btnBox">
					<input type="button" class="btnInput2" onclick="backRecharge()" value="返回" />
				</div>
		</div>
	</body>
</html>