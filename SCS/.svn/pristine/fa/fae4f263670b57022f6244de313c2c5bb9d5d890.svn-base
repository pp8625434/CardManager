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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/confidentiality/js/confidentiality.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增保密责任书
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/confidentiality/confidentialitySave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="confidentiality.id" id="id"/>
			<input type="hidden" name="confidentiality.version" id="version"/>
			<input type="hidden" name="confidentiality.username" id="username"/>
			<input type="hidden" name="confidentiality.userid" id="userid"/>
			<input type="hidden" name="confidentiality.paid" id="paid"/>
			<input type="hidden" name="confidentiality.pbid" id="pbid"/>
			<input type="hidden" name="confidentiality.padate" id="padate"/>
			<input type="hidden" name="confidentiality.pbdate" id="pbdate"/>
			<table class="bordered">
				<tr>
					<td colspan="4">
						<p style="text-align:left;">　　甲方：<input type="text" name="confidentiality.partya" id="partya" isnull="no" mes="甲方不能为空" value="中国航天科技集团公司第九研究院"/></p>
						<p style="text-align:left;">　　乙方：<input type="text" name="confidentiality.partyb" id="partyb" isnull="no" mes="乙方不能为空"/></p>
						<p style="text-align:left;">　　为遵守国家保密法律法规、上级机关和中国航天科技集团公司第九研究院（以下简称“院”）及本部制定的各项保密规章制度，院保密委员会
						与本部涉密人员签订本责任书。</p>
						<p style="text-align:left;">　　一、涉密人员保密责任</p>
						<p style="text-align:left;">　　（一）严格遵守国家保密法律法规和上级机关安全保密规章制度，认真执行院制定的各项保密规定，履行保密义务，参加保密教育和培训；</p>
						<p style="text-align:left;">　　（二）自觉遵守国防科技工业安全保密“六条规定”和航天科技集团公司安全保密管理“六条禁令”；</p>
						<p style="text-align:left;">　　（三）保证提供真实的个人信息，接受保密审查，个人信息发生重大变化时，主动在年度述密报告中说明情况；</p>
						<p style="text-align:left;">　　（四）不违规记录、存储和复制国家秘密信息，不私存国家秘密载体；</p>
						<p style="text-align:left;">　　（五）不以任何方式泄露所接触和知悉的国家秘密及院未公开的事项；</p>
						<p style="text-align:left;">　　（六）未经保密审查批准，不擅自发表涉及国家秘密和院未公开工作内容的文章、著述，不私自接受新闻媒体对院有关工作事项的采访；</p>
						<p style="text-align:left;">　　（七）调离涉密岗位时，清退、移交本人所持有的全部涉密载体，交回《保密自查记录手册》，签订《离岗保密承诺书》，严格执行脱密期管理，接受保密监督、检查和管理；</p>
						<p style="text-align:left;">　　（八）若违反上述条款，本人将承担党纪、政纪责任和法律后果。</p>
						<p style="text-align:left;">　　二、中国航天科技集团公司第九研究院保密工作责任：</p>
						<p style="text-align:left;">　　（一）负责对涉密人员进行保密教育和培训；</p>
						<p style="text-align:left;">　　（二）负责对涉密人员保密工作进行监督、检查和指导；</p>
						<p style="text-align:left;">　　（三）负责组织对涉密人员履行保密责任等情况进行考核，对保密考核合格的发放保密补贴；</p>
						<p style="text-align:left;">　　（四）负责组织、协调和查处失泄密案件。</p>
						<p style="text-align:left;">　　三、本责任书经双方签字后生效。一式两份，保密委员会办公室和涉密人员各存一份。</p>
					</td>
				</tr>
				<tr>
					<td>甲方代表人：</td>
				    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="confidentiality.paname" isnull="no"  mes="请选择甲方代表人签字" /></td>
				    <td>乙方：</td>
				    <td style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="confidentiality.pbname" isnull="no"  mes="请选择乙方人签字" /></td>
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
