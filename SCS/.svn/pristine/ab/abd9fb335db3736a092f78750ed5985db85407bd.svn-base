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
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/empseccheck/js/empSecCheck.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<div class="mainTitle">
			新增员工保密工作自查
		</div>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/empseccheck/empSecCheckSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="empSecCheck.id" id="id"/>
			<input type="hidden" name="empSecCheck.version" id="version"/>
			<input type="hidden" name="empSecCheck.username" id="username"/>
			<input type="hidden" name="empSecCheck.userid" id="userid"/>
			<input type="hidden" name="empSecCheck.cid"/>
			<table class="bordered">
				<tr>
					<td width="5%">序号</td>
				    <td width="20%">自查项目</td>
				    <td width="45%">项目描述</td>
				    <td width="30%">自查情况</td>
				</tr>
				<tr>
				    <td>1</td>
				    <td>保密责任</td>
				    <td style="text-align:left;">是否熟悉本职岗位的保密要求，并按规定履行保密工作职责。</td>
				    <td><input type="text" name="empSecCheck.confidentiality" id="confidentiality"/></td>
				</tr>
				<tr>
				    <td>2</td>
				    <td>保密教育培训</td>
				    <td style="text-align:left;">是否参加了单位、部门或处（室）组织的保密教育培训，培训学时是否计入了本人教育培训统计表。</td>
				    <td><input type="text" name="empSecCheck.education" id="education"/></td>
				</tr>
				<tr>
				    <td rowspan="8">3</td>
				    <td rowspan="8">办公计算机（含便携式计算机）及存储介质管理使用情况</td>
				    <td style="text-align:left;">是否按要求设置计算机用户口令。</td>
				    <td><input type="text" name="empSecCheck.setpwd" id="setpwd"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否按信息化处统一要求进行维护（定期升级、打补丁、杀毒等）。</td>
				    <td><input type="text" name="empSecCheck.maintenance" id="maintenance"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否有接入国际互联网情况。</td>
				    <td><input type="text" name="empSecCheck.atinternet" id="atinternet"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否超越密级使用计算机及存储介质。</td>
				    <td><input type="text" name="empSecCheck.cymj" id="cymj"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">涉密电子文档是否按要求正确标密。</td>
				    <td><input type="text" name="empSecCheck.classifiedsecret" id="classifiedsecret"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">涉密存储介质是否有接入国际互联网情况。</td>
				    <td><input type="text" name="empSecCheck.matnternet" id="matnternet"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">涉密便携式计算机及存储介质使用后是否存入密码文件柜。</td>
				    <td><input type="text" name="empSecCheck.savepwdark" id="savepwdark"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">便携式计算机及存储介质外出是否履行审批手续。</td>
				    <td><input type="text" name="empSecCheck.perprocedure" id="perprocedure"/></td>
				</tr>
				<tr>
				    <td rowspan="4">4</td>
				    <td rowspan="4">互联网计算机（含便携式计算机）管理使用情况</td>
				    <td style="text-align:left;">是否进行上网登记。</td>
				    <td><input type="text" name="empSecCheck.onlineregist" id="onlineregist"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否处理过涉密信息或办公事务。</td>
				    <td><input type="text" name="empSecCheck.handleaffairs" id="handleaffairs"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">下载信息是否使用互联网专用介质。</td>
				    <td><input type="text" name="empSecCheck.smedia" id="smedia"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否在互联网上发布涉密信息或单位未公开信息。</td>
				    <td><input type="text" name="empSecCheck.inforpublish" id="inforpublish"/></td>
				</tr>
				<tr>
				    <td rowspan="5">5</td>
				    <td rowspan="5">文件资料管理使用情况</td>
				    <td style="text-align:left;">是否按要求及时清退。</td>
				    <td><input type="text" name="empSecCheck.timelyrepel" id="timelyrepel"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否按规定执行收发、传递、借阅、复制、存放、销毁。</td>
				    <td><input type="text" name="empSecCheck.ttbcsd" id="ttbcsd"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">过程涉密文件资料是否有登记，不使用时是否按要求存放或销毁。</td>
				    <td><input type="text" name="empSecCheck.rsd" id="rsd"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">个人因工作需要长时间留存的涉密文件资料是否履行登记审批手续，台帐是否在本部门备案。</td>
				    <td><input type="text" name="empSecCheck.recordtz" id="recordtz"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否正确使用保管保密本。</td>
				    <td><input type="text" name="empSecCheck.kconfidentiality" id="kconfidentiality"/></td>
				</tr>
				<tr>
				    <td rowspan="3">6</td>
				    <td rowspan="3">个人家用计算机（含便携式计算机）及存储介质管理使用情况</td>
				    <td style="text-align:left;">个人家用计算机及存储介质是否处理过涉密信息及办公事务。</td>
				    <td><input type="text" name="empSecCheck.phandleaffairs" id="phandleaffairs"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">个人家用计算机是否连接过单位存储介质。</td>
				    <td><input type="text" name="empSecCheck.pconmedium" id="pconmedium"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">个人家中是否存有涉密载体。</td>
				    <td><input type="text" name="empSecCheck.pclassified" id="pclassified"/></td>
				</tr>
				<tr>
				    <td rowspan="3">7</td>
				    <td rowspan="3">其他事项</td>
				    <td style="text-align:left;">内外网信息转换是否进行审查、审批。</td>
				    <td><input type="text" name="empSecCheck.ransforieinfor" id="ransforieinfor"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">是否因公（私）出国（境），并履行审批手续。</td>
				    <td><input type="text" name="empSecCheck.abroad" id="abroad"/></td>
				</tr>
				<tr>
				    <td style="text-align:left;">离开办公区是否及时清桌锁柜。</td>
				    <td><input type="text" name="empSecCheck.cleartable" id="cleartable"/></td>
				</tr>
				<tr>
				    <td colspan="2">需要向组织汇报的其他事项</td>
				    <td colspan="2"><textarea name="empSecCheck.otherinfor" id="otherinfor" ></textarea></td>
				</tr>
				<tr>
				    <td colspan="2">对自查发现问题的整改情况</td>
				    <td colspan="2"><textarea name="empSecCheck.rectification" id="rectification" ></textarea></td>
				</tr>
				<tr>
				    <td colspan="2">其他说明</td>
				    <td colspan="2">
						<p style="text-align:left;">1、本表每月25日前由本人对照内容认真自查，不得虚报、瞒报；</p>
						<p style="text-align:left;">2、自查情况应如实填写，不得用“√”或“×”表示；</p>
						<p style="text-align:left;">3、需要向组织汇报的其他事项，如没有应填写“无”；</p>
						<p style="text-align:left;">4，对发现的问题要逐条填写整改情况。</p>
					</td>
				</tr>
				<tr>
					<td colspan="2">自查时间：<input type="text" name="empSecCheck.cdate" id="cdate" dtype="date(yyyy-MM-dd HH:mm:ss)" value="" isnull="no"  mes="自查时间不能为空"/></td>
				    <td >本人签字</td>
				    <td><hi:select  type="radio" emu="yesNo" name="empSecCheck.cname" isnull="no"  mes="请选择本人签字" /></td>
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
