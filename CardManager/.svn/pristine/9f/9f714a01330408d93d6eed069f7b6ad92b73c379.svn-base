<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/user/js/tempuser.js"></script>

	</head>	
	<body class="adminMain">
		<div class="mainTitle">试用转换</div>
		
		<form name="addUser" method="post" action="${applicationScope.ctx}/user/changeTempUser.action" onkeypress="if(event.keyCode==13||event.which==13){return false;}" enctype="multipart/form-data">
			<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
			<input type="hidden" name="tempUser.id" value="<s:property value="tempUser.id"/>"/>
			<div class="mainConText">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableEdit">
					
						<tr>
						<td>姓名</td>
							<td><input type="text" name="user.realname" id="realname" size="50" maxlength="50" onblur="notempty(this)"/>
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="realnamespan"></span>
							</td>
						</tr>
						<tr>
							<td>手机号码</td>
							<td>
								<input type="text" name="user.name" id="name" size="50" maxlength="50" value="<s:property value="tempUser.phonenum"/>" />
								&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr"></span>
							</td>
						</tr>
						<tr>
							<td>身份证号</td>
							<td><input type="text" name="user.card" id="card" size="50"  onblur="vailCard(this)">
								&nbsp;&nbsp;<span class="fontCom" id="cardspan"></span>
							</td>
						</tr>
						<!-- 
						<tr>
							<td>移动手机</td>
							<td><input type="text" name="user.cellphone" id="cellphone" size="50" onblur="vailPhoneNum1(this)">
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="cellphonespan"></td>
						</tr>
						 -->
						<tr style="display:none">
							<td>密码</td>
							<td><input type="password" name="user.password" id="password" value="111111" size="50"></td>
						</tr>
						<tr style="display: none;">
							<td>确认密码</td>
							<td><input type="password" name="password2" id="password2" value="111111" size="50"></td>
						</tr>
						<%--<tr>
							<td>昵称</td>
							<td><input type="text"  name="user.nickname" id="nickname" size="50" maxlength="50" onblur="notempty(this)"/> 
								&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="nicknamespan"></span>
							</td>
						</tr>
						--%>
						<tr>
							<td>性别</td>
							<td>
							<!-- 
								<select name="user.sex" id="sex">
									<option value="1">男</option>
									<option value="0">女</option>
								</select>
							-->
								<hi:select emu="sex" name="user.sex" defaultValue="11" />
							</td>
						</tr>
						
						<tr>
							<td>出生日期</td>
							<td>
								<s:textfield name="user.birthday" id="birthday"
								value="%{nowDate}" title="选择您的生日"
								onclick="WdatePicker({isShowWeek:true})" cssClass="Wdate"
								cssStyle="width:130px;font-size:12px;color:#016586;" readonly="true"
								disabled='mark in {"view"}?true:false' />
							</td>
						</tr>
						<!-- 
						<tr>
							<td>身份证号</td>
							<td><input type="text" name="user.card" id="card" size="50"  onblur="vailCard(this)">
								&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="cardspan"></span>
							</td>
						</tr>
						 -->
						<tr>
							<td>个人邮箱</td>
							<td><input type="text" name="user.mail" id="mail" size="50" maxlength="50">
								&nbsp;&nbsp;<span class="fontCom" id="mailspan"></span>
							</td>
						</tr>
						
						
						<tr>
							<td>固定电话</td>
							<td><input type="text" name="user.phone" id="phone" size="50"></td>
						</tr>
						
						<!-- 
						<tr>
							<td>最高学历</td>
							<td>
								<hi:select emu="diploma" name="user.diploma" />
							</td>
						</tr>
						
						<tr>
							<td>所属党派</td>
							<td>
								<hi:select emu="clan" name="user.clan" />
								
							</td>
						</tr>
						<tr>
							<td>工作单位</td>
							<td><input type="text" name="user.workunit" id="workunit" size="50" maxlength="50"></td>
						</tr>
						
						<tr>
							<td>所属机构</td>
							<td>
								
								<div class="content_wrap">
									<div class="zTreeDemoBackground left">
										<ul class="list">
											<li class="title">&nbsp;&nbsp;<input onclick="showMenu(); return false;" id="citySel" type="text" readonly value="" style="width:350px;"/>&nbsp;
												<a id="menuBtn" href="#" onclick="removeDate(); return false;">清空</a>
												<em>*</em>
											</li>
										</ul>
									</div>
								</div>
								<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
									<ul id="treeDemo" class="ztree" style="margin-top:0; width:250px;"></ul>
								</div>
								<input type="hidden" name="user.orgName" id="orgName">
								<input type="hidden" name="user.orgId" id="orgId">
								
							</td>
						</tr>
						<tr>
							<td>集团账号</td>
							<td>
								<hi:select type="radio" emu="yesNo" name="user.isgroup"  defaultValue="2" />
							</td>
						</tr>
						<tr>
							<td>参加工作时间</td>
							<td>
								<s:textfield name="user.workdate" id="workdate"
								value="%{nowDate}" title="参加工作时间"
								onclick="WdatePicker({isShowWeek:true})" cssClass="Wdate"
								cssStyle="width:130px;font-size:12px;color:#016586;" readonly="true"
								disabled='mark in {"view"}?true:false' />
							</td>
						</tr>
						<tr>
							<td>学习截止日期</td>
							<td>
								<s:textfield name="user.studyoverduedate" id="studyoverduedate"
								title="帐号使用截止日期"
								onclick="WdatePicker({isShowWeek:true})" cssClass="Wdate"
								cssStyle="width:130px;font-size:12px;color:#016586;" readonly="true"
								disabled='mark in {"view"}?true:false' />
							</td>
						</tr>
						<tr>
							<td>学习截止日期</td>
							<td>
								<s:textfield name="user.studyoverduedate" id="studyoverduedate"
								title="帐号使用截止日期"
								onclick="WdatePicker({isShowWeek:true})" cssClass="Wdate"
								cssStyle="width:130px;font-size:12px;color:#016586;" readonly="true"
								disabled='mark in {"view"}?true:false' />
							</td>
						</tr>
						<tr >
							<td style="width: 80px;">个性签名</td>
							<td>
								<textarea cols="100" rows="10" class="textareaInput" style="float:none" name="user.description" id="description" onchange="taCheckOnChange(this.id,150)" onkeyup="taCheckOnKeyUp(this.id,150)"></textarea>
								<font></font>
							</td>
						</tr>
						<tr>
							<td>密码问题</td>
							<td>
								<hi:select emu="pwdquestion" name="user.pwdquestion" />
								
							</td>
						</tr>
						<tr>
							<td>密码答案</td>
							<td><input type="text" name="user.pwdanswer" id="pwdanswer" size="50"  maxlength="50"></td>
						</tr>
						-->
						<tr >
							<td style="width: 80px;">其他联系方式</td>
							<td>
								<textarea cols="100" rows="10" class="textareaInput" style="float:none" name="user.description" id="description" onchange="taCheckOnChange(this.id,150)" onkeyup="taCheckOnKeyUp(this.id,150)"></textarea>
								<font></font>
							</td>
						</tr>
						<tr>
							<td>邮政编码</td>
							<td><input type="text" name="user.postcode" id="postcode" size="50"></td>
						</tr>
						<tr>
							<td>邮政地址</td>
							<td><input type="text" name="user.address" id="address" size="50" maxlength="120"></td>
						</tr>
						<tr>
							<td>个人头像</td>
							<td>
								<div id="localImagLogo" style="margin-top: 2px;"><img name="photoimage" id="hpathLogo" src="../../images/qsimage.jpg" height="72" width="71" ></div> 
								（只能上传 JPG、JPEG、PNG、GIF、BMP、TIF 格式的图片，建议图片高宽为72*71，图片大小不超过300KB）<br/>
								&nbsp;<s:file name="upload" id="file" label="upload File" cssStyle="width:360px;" onchange="pathChange('Logo', 'file')"/>
							</td>
						</tr>
						
						<tr>
							<td>账号截止日期</td>
							<td>
								<s:textfield name="user.accountoverdate" id="accountoverdate"
								title="帐号使用截止日期"
								onclick="WdatePicker({isShowWeek:true})" cssClass="Wdate"
								cssStyle="width:130px;font-size:12px;color:#016586;" readonly="true"
								disabled='mark in {"view"}?true:false' />
							</td>
						</tr>
				</table>
				<div class="btnBox">
					<input type="button" value="保存" class="btnInput1" id="addBut" onclick="changeSubmit();">
					<input type="button" value="取消" class="btnInput2 chancleButton" >
				</div>
			</div>
	   </form>
	</body>
</html>