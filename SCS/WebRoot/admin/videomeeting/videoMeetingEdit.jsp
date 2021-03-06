<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/videomeeting/js/videoMeeting.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<s:if test="videoMeeting.id !=null">
			<div class="mainTitle">
				编辑视频会议系统使用申请
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新建视频会议系统使用申请
			</div>
		</s:else>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/videomeeting/videoMeetingSave.action"
				onsubmit="onForm_Submits();">
				<input type="hidden" name="videoMeeting.id" id="id"
					value="<s:property value="videoMeeting.id" />" />
				<input type="hidden" name="videoMeeting.version" id="version" value="<s:property value="videoMeeting.version" />"/>
				<input type="hidden" name="videoMeeting.firstperson"
					id="firstperson" value="<s:property value="videoMeeting.firstperson" />"/>
				<input type="hidden" name="videoMeeting.firstpid" id="firstpid" value="<s:property value="videoMeeting.firstpid" />"/>
				<input type="hidden" name="videoMeeting.firstsubdate"
					id="firstsubdate" value="<s:property value="videoMeeting.firstsubdate" />"/>
				<table width="100%" class="bordered">
					<caption>
						视频会议系统使用申请表
					</caption>
					<tr>
						<td width="15%">
							会议名称
						</td>
						<td colspan="5">
							<input type="text" name="videoMeeting.meetingname" value="<s:property value="videoMeeting.meetingname" />"
								id="meetingname" isnull="no" dorder="1" mes="会议名称不能空" size="50" />
						</td>
					</tr>
					<tr>
						<td>
							申请部门（单位）
						</td>
						<td colspan="2">
							<input type="text" name="videoMeeting.applyorgname" value="<s:property value="videoMeeting.applyorgname" />"
								id="applyorgname" isnull="no" dorder="2" mes="申请部门（单位）不能为空"
								size="25" />
							<input type="hidden" name="videoMeeting.applyorgid" value="<s:property value="videoMeeting.applyorgid" />"
								id="applyorgid" />
						</td>
						<td width="21%">
							申请人
						</td>
						<td width="30%" colspan="2">
							<input type="text" name="videoMeeting.applicant" id="applicant" value="<s:property value="videoMeeting.applicant" />"
								isnull="no" dorder="3" mes="申请人不能空" size="25" />
							<input type="hidden" name="videoMeeting.applicantid"
								id="applicantid" value="<s:property value="videoMeeting.applicantid" />"/>
						</td>
					</tr>
					<tr>
						<td>
							联系电话
						</td>
						<td colspan="2">
							<input type="text" name="videoMeeting.cellphone" id="cellphone" value="<s:property value="videoMeeting.cellphone" />"
								isnull="no" dorder="4" mes="联系电话不能为空" size="20" />
						</td>
						<td>
							会议形式
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="page_29_meetingtype"
								name="videoMeeting.meetingtype" id="meetingtype" isnull="no"
								dorder="5" mes="请选择会议形式" />
						</td>
					</tr>
					<tr>
						<td>
							会议地点
						</td>
						<td colspan="5">
							<hi:select type="checkbox" emu="page_29_meetingplace"
								name="videoMeeting.meetingplace" id="meetingplace" isnull="no"
								dorder="6" mes="请选择会议地点" />
							<br />
							<div align="left">
								其他会议地点：
								<input type="text" name="videoMeeting.meetplaceqt" value="<s:property value="videoMeeting.meetplaceqt" />"
									id="meetplaceqt" size="25" />
							</div>
						</td>
					</tr>
					<tr>
						<td>
							会议议程
						</td>
						<td colspan="5">
							<textarea rows="3" name="videoMeeting.meetingagenda" 
								id="meetingagenda">
								<s:property value="videoMeeting.meetingagenda" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							视频会议参会单位
						</td>
						<td width="6%">
							京区
						</td>
						<td colspan="4">
							<hi:select type="checkbox" emu="page_29_meetdeptJing"
								name="videoMeeting.jingqu" id="jingqu" />
						</td>
					</tr>
					<tr>
						<td>
							京外
						</td>
						<td colspan="4">
							<hi:select type="checkbox" emu="page_29_meetdeptJingOut"
								name="videoMeeting.jingwai" id="jingwai" />
						</td>
					</tr>

					<tr>
						<td>
							会议时间
						</td>
						<td colspan="2">
							<input type="text" name="videoMeeting.meetingtime"
								id="meetingtime" isnull="no" dorder="7" value="<s:date name="videoMeeting.meetingtime" format="yyyy-MM-dd hh:mm:ss"/>"
								dtype="date(yyyy-MM-dd HH:mm:ss)" mes="会议时间不能为空" />
						</td>
						<td rowspan="2">
							是否需要播放PPT、录像片
						</td>
						<td colspan="2" rowspan="2">
							<hi:select type="radio" emu="yesOrNo" name="videoMeeting.isppt"
								id="isppt" isnull="no" dorder="8" mes="是否需要播放PPT、录像片" />
						</td>
					</tr>
					<tr>
						<td>
							联调时间
						</td>
						<td colspan="2">
							<input type="text" name="videoMeeting.jointdebugtime"
								id="jointdebugtime" isnull="no" dorder="9" value="<s:date name="videoMeeting.jointdebugtime" format="yyyy-MM-dd hh:mm:ss"/>"
								dtype="date(yyyy-MM-dd HH:mm:ss)" mes="联调时间不能为空" />
						</td>
					</tr>
					<tr>
						<td>
							会议模式
						</td>
						<td colspan="5">
							<hi:select type="radio" emu="page_29_meetModule"
								name="videoMeeting.meetingmode" id="meetingmode" isnull="no"
								dorder="10" mes="请选择会议模式" />
						</td>
					</tr>
					<tr>
						<td>
							发言会场
						</td>
						<td colspan="5">
							<hi:select type="checkbox" emu="page_29_meetdeptJing"
								name="videoMeeting.speakplace" id="speakplace" />
							<hi:select type="checkbox" emu="page_29_meetdeptJingOut"
								name="videoMeeting.speakplaceout" id="speakplaceout" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							承办部门/单位意见
						</td>
						<td colspan="5">
							<textarea rows="3" name="videoMeeting.deptopinion"
								id="deptopinion"><s:property value="videoMeeting.deptopinion" /></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo" name="videoMeeting.deptsign"
								id="deptsign" isnull="no" dorder="17" mes="请承办部门/单位签字" />
							<input type="hidden" name="videoMeeting.deptid" id="deptid" value="<s:property value="videoMeeting.deptid" />"/>
							<input type="hidden" name="videoMeeting.deptsigndate"
								id="deptsigndate" value="<s:property value="videoMeeting.deptsigndate" />"/>
						</td>
					</tr>
				</table>
				<br />
				<div class="btnBox">
					<input type="submit" id="addBut" value="保存" class="btnInput1" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消"
						onclick="cancelBtn();" />
				</div>
			</form>
		</div>
	</body>
</html>
