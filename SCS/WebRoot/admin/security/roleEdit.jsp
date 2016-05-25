<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/security/role.js"></script>
		<script type="text/javascript">
		
		var menuids = [
			<s:iterator value="menus"  status="menuIndex">
				<s:if test="id !=1 && id != 2">
					<s:property  value="id"/>,
				</s:if>
			</s:iterator>
			];
		function showAuthority(menuid){
			
			for(var i = 0; i<menuids.length; i++){
				if(menuids[i]!=""){
					var alltrs = document.getElementsByName("mt_"+menuids[i]);
					var allmms = document.getElementById("mmt_"+menuids[i]);
					for(var j = 0; j<alltrs.length; j++){
						alltrs[j].style.display = "none";
					}
					allmms.className="";
				}
				
			}
			var trs = document.getElementsByName("mt_"+menuid);
			var mms = document.getElementById("mmt_"+menuid);
			for(var i = 0; i<trs.length; i++){
				trs[i].style.display = "";	
			}
			mms.className = "On";
		}		
		$j(function(){
			var id = $j("li[id^='mmt_']:first").attr("id").split("_")[1];
			showAuthority(id);
		})
		
		</script>
	</head>

	<body class="adminMain">

		<div class="mainTitle">
			角色管理
		</div>
		
		<form action="${applicationScope.ctx}/admin/roleSave.action" method="post" onsubmit="return onSubEdit();" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
		 	<input type="hidden" name="params" value="<%=request.getAttribute("params") %>"/>
			<div class="mainConText">
				<table class="tableEdit">
					    <tr>
						  <td width="10%" id="role.roleNameLabel">角色名称</td>
						  <td >
							<input type="text" id="name" name="role.name" value="<s:property value="role.name"/>" maxlength="50">
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="appendStr"></span>	
							<input type="hidden" id="oldName" name="oldName" value="<s:property value="role.name"/>">
						  </td>
						</tr>
						<tr>
						  <td width="10%" id="role.displayRefLabel">显示信息</td>
						  <td >
							<input type="text" id="displayRef" name="role.displayRef" value="<s:property value="role.displayRef"/>" onblur="notempty(this)" maxlength="50"> 
							&nbsp;&nbsp;<font size="5" color="red">*</font>&nbsp;&nbsp;<span class="fontCom" id="displayRefspan"></span>
						  </td>
					    </tr>
						<tr>
						  <td width="10%"   id="role.descriptionLabel">描述</td>
						  <td >
							<input type="text" size="78"  id="role.description" name="role.description" value="<s:property value="role.description"/>"  maxlength="50">
						  </td>
						</tr>
						<tr style="display:none">
						  <td width="10%"   id="role.descriptionLabel">是否有全局权限</td>
						  <td >
							<hi:select type="radio" emu="yesNo" name="role.isglob"  defaultValue="2" />
						  </td>
						</tr>
						<input type="hidden" id="role.id" name="role.id" value="<s:property value="role.id"/>">
				</table>
		
				
				
				<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="EditTable">
					<div name="menuDiv" id="menuDiv" style="width:100%; overflow:auto;">
						<ul class="tagUl">
						  <s:iterator value="menus" id="menu" >
						  	<s:if test="id !=1 && id != 2">
						  	<a href="javascript:showAuthority('<s:property value="id"/>')" style="color:#FFF;"><li name="mmt_<s:property  value="id"/>" id="mmt_<s:property  value="id"/>"><s:property value="displayRef"/></li></a>
						  	</s:if>
						  </s:iterator>
					  	</ul>
					</div>		
				</table>
		
				<table cellpadding="2" cellspacing="0" class="tableCon" width="90%" >
					<tr class="TRtit">
						<%--<td>添加</td>
						--%>
						<td width="200px;">菜单权限</td>
						<td>操作权限</td>				
					</tr>  
					<!-- roleMenuLinkIndex 不实用，自己定义一个从0开始， -->
					<s:set name="rIndex" value="0" ></s:set>
					<s:iterator value="roleMenuLinkButtonInfos" id="roleMenuLinkButtonInfo" status="roleMenuLinkIndex" >
					  <tr class="<s:if test="#org.odd==false">trEven</s:if><s:else> trOdd</s:else>" name="mt_<s:property  value="roleMenuLink.menuLinkModel.menu.id"/>" id="mt_<s:property  value="roleMenuLink.menuLinkModel.menu.id"/>"  style="display:none;" >
						<td>
							<input id="roleMenuLinks[<s:property value="#rIndex"/>].menuLinkModel.id" name="roleMenuLinks[<s:property value="#rIndex"/>].menuLinkModel.id" value="<s:property value="roleMenuLink.menuLinkModel.id"/>"  type="hidden"/>
							<input id="roleMenuLinks[<s:property value="#rIndex"/>].id" name="roleMenuLinks[<s:property value="#rIndex"/>].id" value="<s:property   value="roleMenuLink.id"/>"  type="hidden"/>
							<input id="roleMenuLinkIndex" name="roleMenuLinkIndex" value="<s:property value="#rIndex"/>" <s:if test="roleMenuLink.role != null">checked="checked"</s:if> type="checkbox">
							<s:property value="roleMenuLink.menuLinkModel.displayRef"/>
						</td>
						<%--<td >
							
						</td>				
						--%><td>
							<s:set name="rIndex" value="#rIndex+1" ></s:set>
							<s:iterator value="roleMenuLinkList" id="roleMenuLink">
								<input id="roleMenuLinks[<s:property value="#rIndex"/>].menuLinkModel.id" name="roleMenuLinks[<s:property value="#rIndex"/>].menuLinkModel.id" value="<s:property value="menuLinkModel.id"/>"  type="hidden"/>
								<input id="roleMenuLinks[<s:property value="#rIndex"/>].id" name="roleMenuLinks[<s:property value="#rIndex"/>].id" value="<s:property   value="id"/>"  type="hidden"/>
								<input id="roleMenuLinkIndex" name="roleMenuLinkIndex" value="<s:property value="#rIndex"/>" <s:if test="role != null">checked="checked"</s:if> type="checkbox"><s:property value="menuLinkModel.displayRef"/>
								<s:set name="rIndex" value="#rIndex+1" ></s:set>
							</s:iterator>
						</td>
 					  </tr>
					</s:iterator>
					
				</table>						
			    
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消"
						onclick="javascript:window.location='${applicationScope.ctx}/admin/roleList.action'" />
				</div>	  
			</div>
		</form>
	</body>
</html>