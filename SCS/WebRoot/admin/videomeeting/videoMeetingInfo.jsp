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
		
		<div class="mainConText">
			<form  name="formSearch" id="formSearch" enctype="multipart/form-data">
				<table width="100%" class="bordered">
					<caption>
						视频会议系统使用申请表
					</caption>
					<tr>
						<td width="15%">
							会议名称
						</td>
						<td colspan="5">
							<s:property value="videoMeeting.meetingname"/>
						</td>
					</tr>
					<tr>
						<td>
							申请部门（单位）
						</td>
						<td colspan="2">
							<s:property value="videoMeeting.applyorgname"/>
						</td>
						<td width="21%">
							申请人
						</td>
						<td width="30%" colspan="2">
							<s:property value="videoMeeting.applicant"/>
						</td>
					</tr>
					<tr>
						<td>
							联系电话
						</td>
						<td colspan="2">
							<s:property value="videoMeeting.cellphone"/>
						</td>
						<td>
							会议形式
						</td>
						<td colspan="2">
							<hi:select disabled="true"  type="radio"  emu="page_29_meetingtype" name="videoMeeting.meetingtype" />
						</td>
					</tr>
					<tr>
						<td>
							会议地点
						</td>
						<td colspan="5">
							<hi:select disabled="true" type="checkbox" emu="page_29_meetingplace" name="videoMeeting.meetingplace" id="videoMeeting.meetingplace" isnull="no" dorder="6" mes="请选择会议地点" />
							<br/>
							<div align="left">
								其他会议地点：<s:property value="videoMeeting.meetplaceqt"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							会议议程
						</td>
						<td colspan="5">
							<s:property value="videoMeeting.meetingagenda"/>
						</td>
					</tr>
					<tr>
					   <td rowspan="2">视频会议参会单位</td>
					   <td width="6%">京区</td>
					   <td colspan="4"><hi:select disabled="true" type="checkbox" emu="page_29_meetdeptJing" name="videoMeeting.jingqu" id="videoMeeting.jingqu" /></td>
					 </tr>
					 <tr>
					   <td>京外</td>
					   <td colspan="4"><hi:select disabled="true" type="checkbox" emu="page_29_meetdeptJingOut" name="videoMeeting.jingwai" id="videoMeeting.jingwai" /></td>
					 </tr>
					
					<tr>
						<td>
							会议时间
						</td>
						<td colspan="2">
							<s:date name="videoMeeting.meetingtime" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td rowspan="2">
							是否需要播放PPT、录像片
						</td>
						<td colspan="2" rowspan="2">
							<hi:select type="radio" disabled="true" emu="yesOrNo" name="videoMeeting.isppt" id="videoMeeting.isppt" isnull="no" dorder="8" mes="是否需要播放PPT、录像片"/>
						</td>
					</tr>
					<tr>
						<td>
							联调时间
						</td>
						<td colspan="2">
							<s:date name="videoMeeting.jointdebugtime" format="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<td>
							会议模式
						</td>
						<td colspan="5">
							<hi:select type="radio" disabled="true" emu="page_29_meetModule" name="videoMeeting.meetingmode" id="videoMeeting.meetingmode" isnull="no" dorder="10" mes="请选择会议模式"/>
						</td>
					</tr>
					<tr>
						<td>
							发言会场
						</td>
						<td colspan="5">
							<hi:select type="checkbox" disabled="true" emu="page_29_meetdeptJing" name="videoMeeting.speakplace" id="videoMeeting.speakplace" />
							<hi:select type="checkbox" disabled="true" emu="page_29_meetdeptJingOut" name="videoMeeting.speakplaceout" id="videoMeeting.speakplaceout" />
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							承办部门/单位意见
						</td>
						<td colspan="5">
							<s:property value="videoMeeting.deptopinion"/>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="4">
							<hi:select type="radio" emu="yesNo" disabled="true" name="videoMeeting.deptsign" id="videoMeeting.deptsign" isnull="no" dorder="17" mes="请承办部门/单位签字"/>
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