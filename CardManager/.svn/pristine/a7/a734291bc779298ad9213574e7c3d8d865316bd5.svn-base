<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/user/js/user.js"></script>
	</head>

	<body class="adminMain">
		<div class="mainTitle">个人设置</div>
		<form name="editUser" method="post" action="${applicationScope.ctx}/user/personalSetting_do.action" >
			<input type="hidden" id="isok" value="no" />
			<div class="mainConText">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableEdit">
					<!--  
					<tr>
						<td>登录名</td>
						<td><input type="text" name="user.name" id="name" value="<s:property value="user.name"/>" size="50"><span id="appendStr"></span></td>
					</tr>
					-->
					<tr>
						<td width="80px">用户名</td>
						<!-- <td><input type="text" name="user.nickname" id="nickname" value="<s:property value="user.name"/>" size="40" readonly="true"></td>   -->
						<td><span><s:property value="user.name"/></span></td>
					</tr>
					<!--  
					<tr>
						<td>真实姓名</td>
						<td><input type="text" name="user.realname" id="realname" value="<s:property value="user.realname"/>" size="50"></td>
					</tr>
					-->
					<tr>
						<td>原密码</td>
						<td>
							<input type="password" name="user.password" id="oldpassword" size="40" onblur="vailPassword()">
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="oldpasStr" ></span>
						</td>
						
					</tr>
					<tr>
						<td>新密码</td>
						<td>
							<input type="password" name="newpassword" id="newpassword" size="40">
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" ></span>
						</td>
					</tr>
					<tr>
						<td>确认新密码</td>
						<td>
							<input type="password" name="newpassword2" id="newpassword2" size="40" onblur="updatePassword()">
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom"  id="newpasStr" ></span>
						</td>
					</tr>
					<%--  
					<tr>
						<td>性别</td>
						<td>
							<select name="user.sex" id="sex">
								<option value="1" <s:if test="user.sex == 1">selected</s:if>>男</option>
								<option value="0" <s:if test="user.sex == 0">selected</s:if>>女</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>生日</td>
						<td>
							<s:textfield name="user.birthday" id="birthday"
							value="%{#request.birthday}" title="选择您的生日"
							onclick="WdatePicker({isShowWeek:true})" cssClass="Wdate"
							cssStyle="width:130px;font-size:12px;color:#016586;" readonly="false"
							disabled='mark in {"view"}?true:false' />
						</td>
					</tr>
					<tr>
						<td>邮箱</td>
						<td><input type="text" name="user.mail" id="mail" value="<s:property value="user.mail"/>" size="50"></td>
					</tr>
					<tr>
						<td>身份证</td>
						<td><input type="text" name="user.card" id="card" value="<s:property value="user.card"/>" size="50"></td>
					</tr>
					<tr>
						<td>电话</td>
						<td><input type="text" name="user.phone" id="phone" value="<s:property value="user.phone"/>" size="50"></td>
					</tr>
					<tr>
						<td>手机</td>
						<td><input type="text" name="user.cellphone" id="cellphone" value="<s:property value="user.cellphone"/>" size="50"></td>
					</tr>
					<tr>
						<td>学历</td>
						<td>
							<select name="user.diploma" id="diploma">
				       			<option value="1" <s:if test="user.diploma == 1">selected</s:if>>博士</option>
				       			<option value="2" <s:if test="user.diploma == 2">selected</s:if>>硕士</option>
				       			<option value="3" <s:if test="user.diploma == 3">selected</s:if>>本科</option>
				       			<option value="4" <s:if test="user.diploma == 4">selected</s:if>>大专</option>
				       			<option value="5" <s:if test="user.diploma == 5">selected</s:if>>高中</option>
				       		</select>
						</td>
					</tr>
					<tr>
						<td>党派</td>
						<td>
							<select name="user.clan" id="clan">
				       			<option value="1" <s:if test="user.clan == 1">selected</s:if>>中国共产党</option>
				       			<option value="2" <s:if test="user.clan == 2">selected</s:if>>中国国民党革命委员会</option>
				       			<option value="3" <s:if test="user.clan == 3">selected</s:if>>中国民主同盟</option>
				       			<option value="4" <s:if test="user.clan == 4">selected</s:if>>中国民主建国会</option>
				       			<option value="5" <s:if test="user.clan == 5">selected</s:if>>中国民主促进会</option>
				       			<option value="6" <s:if test="user.clan == 6">selected</s:if>>中国农工民主党</option>
				       			<option value="7" <s:if test="user.clan == 7">selected</s:if>>中国致公党</option>
				       			<option value="8" <s:if test="user.clan == 8">selected</s:if>>九三学社</option>
				       			<option value="9" <s:if test="user.clan == 9">selected</s:if>>台湾民主自治同盟</option>
				       			<option value="10" <s:if test="user.clan == 10">selected</s:if>>无党派</option>
				       		</select>
						</td>
					</tr>
					<tr>
						<td>单位</td>
						<td><input type="text" name="user.workunit" id="workunit" value="<s:property value="user.workunit"/>" size="50"></td>
					</tr>
					<tr>
						<td>所在社区</td>
						<td><input type="text" name="user.address" id="address" value="<s:property value="user.address"/>" size="50"></td>
					</tr>
					<tr>
						<td>所属机构</td>
						<td>
							<input type="text" name="orgName" id="orgName" value="<s:property value="user.org.name"/>" size="50"><input type="button" value="选择机构" class="btnInput4" onclick="selOrg();">
							<input type="hidden" name="user.org.id" id="orgid" value="<s:property value="user.org.id"/>">
						</td>
					</tr>
					<tr>
						<td>邮政编码</td>
						<td><input type="text" name="user.postcode" id="postcode" value="<s:property value="user.postcode"/>" size="50"></td>
					</tr>
					<tr>
						<td>头像</td>
						<td>
			       			<img name="photoimage" id="photoimage" src="/<s:property value="user.headpicpath"/>" height="78" width="69" ><br>
							<input type="hidden" name="user.headpicpath" id="headpicpath" value="<s:property value="user.headpicpath"/>">
							（只能上传jpg、jpeg、png、gif、bmp、tif格式的图片。建议图片大小为72*93）<br/>
							<input type="button" value="上传照片" class="btnInput4" onclick="addPhoto();" />
						</td>
					</tr>
					<tr>
						<td>参加工作时间</td>
						<td>
							<s:textfield name="user.workdate" id="workdate"
							value="%{#request.workdate}" title="参加工作时间"
							onclick="WdatePicker({isShowWeek:true})" cssClass="Wdate"
							cssStyle="width:130px;font-size:12px;color:#016586;" readonly="true"
							disabled='mark in {"view"}?true:false' />
						</td>
					</tr>
					<tr>
						<td>个性签名</td>
						<td>
							<textarea cols="100" rows="10" class="textareaInput" style="float:none" name="user.description" id="description"><s:property value="user.description"/></textarea>
						</td>
					</tr>
					<tr>
						<td>密码问题</td>
						<td>
							<select name="user.pwdquestion" id="pwdquestion">
								<option value="我父亲的名字是？" <s:if test="user.pwdquestion == 我父亲的名字是？">selected</s:if>>我父亲的名字是？</option>
								<option value="我高中班主任的名字是？" <s:if test="user.pwdquestion == 我高中班主任的名字是？">selected</s:if>>我高中班主任的名字是？</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>密码答案</td>
						<td><input type="text" name="user.pwdanswer" id="pwdanswer" value="<s:property value="user.pwdanswer"/>" size="50"></td>
					</tr>
					<tr>
						<td>用户角色</td>
						<td>
						<%
							List<Role> roleList = (List<Role>)request.getAttribute("roleList");
							List<UserRole> userRoleList = (List<UserRole>)request.getAttribute("userRoleList");
							if(roleList != null && roleList.size()>0){
								for(int i=0; i<roleList.size(); i++){
									Role role = roleList.get(i);
									boolean flag = false;
									if(userRoleList != null && userRoleList.size()>0){
										for(int j=0; j<userRoleList.size(); j++){
											UserRole userRole = userRoleList.get(j);
											if(userRole.getRole().getId().equals(role.getId())){
												flag = true;
												break;
											}
										}								
									}
									if(flag){
										%>
											<input style="float:left; margin-top:-2px;" type="checkbox" name="roleIds" checked="checked" value="<%=role.getId()%>">
										<%
									}else{
										%>
											<input style="float:left; margin-top:-2px;" type="checkbox" name="roleIds" value="<%=role.getId()%>">
										<%
									}
								%>
									<span style="display:block; width:120px;  float:left; padding-left:5px; line-height:18px; vertical-align:middle; padding-bottom:5px;">
										<%=role.getName()%>
									</span>
								<%
								}
							}
						%>
						</td>
					</tr>
					--%>
				</table>
				<input type="hidden" name="user.id" value="<s:property value="user.id"/>"/>
				<input type="hidden" id="oldName" value="<s:property value="user.name"/>"/>
				<div class="btnBox">
					<input type="button" value="保存" class="btnInput1" id="addBut" onclick="updatePersonalSubmit();">
					<input type="button" value="取消" class="btnInput2 chancleButton" >
					<!-- <input type="button" value="取消" class="btnInput2" onclick="history.back();">-->
				</div>
			</div>
	   </form>
	</body>
</html>