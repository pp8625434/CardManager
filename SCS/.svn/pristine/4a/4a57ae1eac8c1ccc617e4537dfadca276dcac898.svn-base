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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/promise/js/promise.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增保密承诺书
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/promise/promiseSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="promise.id" id="id"/>
			<input type="hidden" name="promise.version" id="version"/>
			<input type="hidden" name="promise.username" id="username"/>
			<input type="hidden" name="promise.userid" id="userid"/>
			<table class="bordered">
				<tr>
					<td colspan="2">
						<p style="text-align:left;">　　我了解有关保密法规制度，知悉应当承担的保密义务和法律责任。本人庄重承诺：</p>
						<p style="text-align:left;">　　一、认真遵守国家保密法律、法规和规章制度，履行保密义务；</p>
						<p style="text-align:left;">　　二、不提供虚假个人信息，自愿接受保密审查；</p>
						<p style="text-align:left;">　　三、不违规记录、存储、复制国家秘密信息，不违规留存国家秘密载体；</p>
						<p style="text-align:left;">　　四、不以任何方式泄露所接触和知悉的国家秘密；</p>
						<p style="text-align:left;">　　五、未经单位保密审查批准，不擅自发表涉及未公开工作内容的文章、著述；</p>
						<p style="text-align:left;">　　六、离岗后，对所知悉的国家秘密和商业秘密仍然负有保密责任和义务，不以任何形式泄露；</p>
						<p style="text-align:left;">　　违反上述承诺，自愿承担党纪、政纪责任和法律后果。</p>
					</td>
				</tr>
				<tr>
					<td>承诺人签名：</td>
				    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="promise.pname" isnull="no"  mes="请选择承诺人签名" /></td>
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
