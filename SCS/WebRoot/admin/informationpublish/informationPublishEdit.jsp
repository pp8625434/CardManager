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
		<script type="text/javascript" src="<%=request.getContextPath()%>/informationpublish/js/informationPublish.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body  class="adminMain">
		<s:if test="informationPublish.id !=null">
			<div class="mainTitle">
				编辑互联网信息发布审批
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建互联网信息发布审批
			</div>
		</s:else>
		<div class="mainConText">
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/informationpublish/informationPublishSave.action" onsubmit="onForm_Submits();">
			<input type="hidden" name="informationPublish.id" id="id" value="<s:property value="informationPublish.id" />"/>
			<input type="hidden" name="informationPublish.version" id="version" value="<s:property value="informationPublish.version" />"/>
			<input type="hidden" name="informationPublish.firstperson" id="firstperson" value="<s:property value="informationPublish.firstperson" />"/>
			<input type="hidden" name="informationPublish.firstpid" id="firstpid" value="<s:property value="informationPublish.firstpid" />"/>
			<input type="hidden" name="informationPublish.firstsubdate" id="firstsubdate" value="<s:property value="informationPublish.firstsubdate" />"/>
			<table width="100%" class="bordered">
				<caption>
					互联网信息发布审批表
				</caption>
				<tr>
					<td width="25%">
						申请部门或单位
					</td>
					<td width="25%">
						<input type="text" name="informationPublish.applydept" id="applydept" value="<s:property value="informationPublish.applydept" />" isnull="no" dorder="1"  mes="申请部门/单位不能为空" size="25"/>
					</td>
					<td width="25%">
						申请人
					</td>
					<td width="25%">
						<input type="text" name="informationPublish.applicant" id="applicant" value="<s:property value="informationPublish.applicant" />" isnull="no" dorder="2"  mes="申请人不能为空" size="25"/>
					</td>
				</tr>
				<tr>
					<td>
						发布信息内容
					</td>
					<td>
						<input type="text" name="informationPublish.publishcontent" id="publishcontent" value="<s:property value="informationPublish.publishcontent" />" isnull="no" dorder="3"  mes="发布信息内容不能为空" size="200"/>
					</td>
					<td>
						申请日期
					</td>
					<td>
						<input type="text" name="informationPublish.applydate" id="applydate" value="<s:date name="informationPublish.applydate" format="yyyy-MM-dd hh:mm:ss"/>"  dtype="date(yyyy-MM-dd HH:mm:ss)"   isnull="no" dorder="4"  mes="申请日期不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请部门意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="informationPublish.applydeptopinion" id="applydeptopinion"><s:property value="informationPublish.applydeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="informationPublish.applydeptsign" id="applydeptsign" isnull="no" dorder="9" mes="请申请部门签字" />
						<input type="hidden" name="informationPublish.applydeptsignid" value="<s:property value="informationPublish.applydeptsignid" />"/>
						<input type="hidden" name="informationPublish.applydeptsigndate" value="<s:property value="informationPublish.applydeptsigndate" />"/>
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						保密管理部门审查意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="informationPublish.securityopinion" id="securityopinion"><s:property value="informationPublish.securityopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="informationPublish.securitysign" id="securitysign" isnull="no" dorder="10" mes="请保密管理部门签字" />
						<input type="hidden" name="informationPublish.securityid" value="<s:property value="informationPublish.securityid" />"/>
						<input type="hidden" name="informationPublish.securitysigndate" value="<s:property value="informationPublish.securitysigndate" />"/>
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
						<textarea rows="3" name="informationPublish.bonddeptopinion" id="bonddeptopinion"><s:property value="informationPublish.bonddeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="informationPublish.bonddeptsign" id="bonddeptsign" isnull="no" dorder="11" mes="请证券部签字" />
						<input type="hidden" name="informationPublish.bondsignid" value="<s:property value="informationPublish.bondsignid" />"/>
						<input type="hidden" name="informationPublish.bondsigndate" value="<s:property value="informationPublish.bondsigndate" />"/>
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
						<textarea rows="3" name="informationPublish.leader" id="leader"><s:property value="informationPublish.leader" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="informationPublish.leadersign" id="leadersign" isnull="no" dorder="12" mes="请院主管领导签字" />
						<input type="hidden" name="informationPublish.leaderid"  value="<s:property value="informationPublish.leaderid" />"/>
						<input type="hidden" name="informationPublish.leadersignid" value="<s:property value="informationPublish.leadersignid" />"/>
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
						<textarea rows="3" name="informationPublish.infordeptopinion" id="infordeptopinion"><s:property value="informationPublish.infordeptopinion" /></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="informationPublish.infordeptsign" id="infordeptsign" isnull="no" dorder="11" mes="请信息化管理部门签字" />
						<input type="hidden" name="informationPublish.infordeptsignid" value="<s:property value="informationPublish.infordeptsignid" />"/>
						<input type="hidden" name="informationPublish.infordeptsigndate" value="<s:property value="informationPublish.infordeptsigndate" />"/>
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
