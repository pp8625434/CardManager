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
		<script type="text/javascript" src="${applicationScope.ctx}/js/common/validator.js"></script>
		
		<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/user/js/orgtree.js"></script>
		<!-- 机构选择的js/css 结束 -->
		<script type="text/javascript">
			function selectShop(){
				if ($("#checkbox99").attr('checked')) { 
					$j("#showShop").show();
					$j("#showShop1").show();
				}else{
					$j("#showShop").hide();
					$j("#showShop1").hide();
					$j("#mid").val("");
					$j("#mname").val("");
					$j("#isgroup").attr("checked",false);
				}
				
			}
			$j(document).ready(function(){
				if ($("#checkbox99").attr('checked')) { 
					$j("#showShop").show();
					$j("#showShop1").show();
				 }
			});
		</script>
	</head>

	<body class="adminMain">
		<s:if test="pageInfo.f_isManager !=null && pageInfo.f_isManager==1">
		<div class="mainTitle">编辑管理员</div>
		</s:if>
		<s:else><div class="mainTitle">编辑学员 </div></s:else>
		
		<form name="editUser" method="post" action="${applicationScope.ctx}/user/editUser.action" onkeypress="if(event.keyCode==13||event.which==13){return false;}" enctype="multipart/form-data">
			<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
			<input type="hidden" name="user.isManager" id="isManager" value=""/>
		<input type="hidden" name="user.roleNames" id="roleNames" value=""/>
			<div class="mainConText">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableEdit">
					<s:if test="pageInfo.f_isManager !=null && pageInfo.f_isManager==1">
						<tr>
							<td>用户名</td>
							<td>
								<input type="text" name="user.name" id="name" value="<s:property value="user.name"/>" class="inputText1" size="50" maxlength="50">&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr"></span>
								<!-- 
								<span id="name" ><s:property value="user.name"/></span>
								
								
								<span id="appendStr"></span>
								<input type="hidden" name="user.name"  value="<s:property value="user.name"/>" size="50" maxlength="50"> -->
							</td>
						</tr>
						<tr>
							<td>姓名</td>
							<td><input type="text" name="user.realname" id="realname" class="inputText1" value="<s:property value="user.realname"/>" size="50" maxlength="50" onblur="notempty(this)">
								&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="realnamespan"></span>
							</td>
						</tr>
						
						<tr>
							<td style="width: 80px;">说明</td>
							<td>
								<textarea cols="100" rows="10" class="textareaInput" style="float:none" name="user.description" id="description" onchange="taCheckOnChange(this.id,150)" onkeyup="taCheckOnKeyUp(this.id,150)"><s:property value="user.description"/></textarea>
								<font></font>
							</td>
						</tr>
						
						<tr>
							<td>用户角色</td>
							<td style="line-height:22px">						
								<s:iterator value="roleList" id="role" status="roleIndex" >
									<div style="height: 22px;">
									 <s:set name="roleId" value="id" />
									 <s:if test="id ==99"><!-- 特殊处理 -->
										 <input id="checkbox99" onclick="selectShop()" style="float:left; margin-top:4px;" type="checkbox" name="roleIds"
											 <s:iterator value="userRoleList" id="userRole" status="userRoleIndex" >
											 	<s:if test="#roleId == role " >
											 		checked="checked" 
											 	</s:if>
											 </s:iterator>
										 value="<s:property value="id" />">
										<span style="margin-left:6px;" id="rolespan<s:property value="id"/>"><s:property value="name" /></span>
									 </s:if>
									 <s:else>
									 	<input  style="float:left; margin-top:4px;" type="checkbox" name="roleIds"
										 <s:iterator value="userRoleList" id="userRole" status="userRoleIndex" >
										 	<s:if test="#roleId == role " >
										 		checked="checked" 
										 	</s:if>
										 </s:iterator>
									 	value="<s:property value="id" />">
										<span style="margin-left:6px;" id="rolespan<s:property value="id"/>"><s:property value="name" /></span>
									 </s:else>
									 
									</div>
									<p/>
								</s:iterator>
							</td>
						</tr>
						<tr style="display: none;" id="showShop">
							<td>所属店铺</td>
							<td style="line-height:22px">
								<input type="text" class="input1" readOnly id="mname" name="user.bathcardnum" value="<s:property value="user.bathcardnum"/>" >
							&nbsp;&nbsp;
							<font size="5" color="red">*</font>&nbsp;&nbsp;
							<input type="button" class="btnInput3" value="选择" onclick="selectProject()" />
							&nbsp;&nbsp;<span class="fontCom" id="appendStr3"></span>
							<input type="hidden" id="mid" name="user.isbathcard" value="<s:property value="user.isbathcard" />" />
							</td>
						</tr>
						<tr style="display: none;" id="showShop1">
							<td>店主</td>
							<td style="line-height:22px">
								<input type="checkbox" name="user.isgroup" id="isgroup" <s:if test="user.isgroup==1">checked</s:if> value="1" />
							</td>
						</tr>
					</s:if>
					<s:else>
						
					</s:else>
					
					
					
				</table>
				<input type="hidden" name="user.id" value="<s:property value="user.id"/>"/>
				<input type="hidden" id="oldName" value="<s:property value="user.name"/>"/>
				<div class="btnBox">
					<input type="button" value="保存" class="btnInput1" id="addBut" onclick="updateSubmit();">
					<input type="button" value="取消" class="btnInput2 chancleButton" >
				</div>
			</div>
			<input type="hidden" name="pageInfo.f_isManager" id="f_isManager" value="<s:property value="pageInfo.f_isManager"/>" />
	   </form>
	</body>
</html>