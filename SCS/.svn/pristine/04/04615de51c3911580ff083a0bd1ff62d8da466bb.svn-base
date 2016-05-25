<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/user/js/user.js"></script>
		
		<script type="text/javascript" src="<%=request.getContextPath()%>/flowchart/js/fnconfig.js"></script>
		
		<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/user/js/orgtree.js"></script>
		<!-- 机构选择的js/css 结束 -->
		
		<script type="text/javascript">
		function obj_add(){
			var para = pageInfo();
			parent.addTab("添加管理员帐号",ctx+"/user/toAddUser.action?" + para,"icon icon-nav");
		}
		function user_edit(id){
			var para = pageInfo();
			para = para + getPara();
			parent.addTab("编辑管理员帐号",ctx+"/user/toEditUser.action?user.id="+id+"&"+para,"icon icon-nav");
		}
		//删除提示
		function user_Delete(id){
			
			parent.$.messager.confirm('友情提示', '删除该用户后，该用户所有相关资料都将被删除且无法恢复，您确定此操作吗？', function (r) {
		    if (r) {
				document.getElementById("formSearch").action=ctx+"/user/deleteUser.action?user.id="+id;
				document.getElementById("formSearch").submit();
			}
			})
		}
		
		function getPara(){
			var customerPara = "&uinfo=";
			var uinfo = $j("#uinfo").val();
			customerPara = customerPara+uinfo;
			var searchName = $j("#searchName").val();
			if(""!=searchName){
				customerPara = customerPara+"&searchName="+searchName;
			}
			var isopen = $j("#isopen").val();
			customerPara = customerPara+"&isopen="+isopen;
			var orgName = $j("#orgName").val();
			if(""!=orgName){
				customerPara = customerPara+"&orgName="+orgName;
			}
			var orgId = $j("#orgId").val();
			if(""!=orgId){
				customerPara = customerPara+"&orgId="+orgId;
			}
			customerPara = encodeURI(customerPara);
			customerPara = encodeURI(customerPara);
			return customerPara;
		}
		
		function  importUser_add(id){
			parent.addTab("用户批量导入",ctx + "/admin/user/importUser.jsp","icon icon-nav");
		}
		
		function exportUser(){
			//var para = pageInfo();
			//para = para + getPara();
			//document.listUser.action=ctx+"/user/exportUser.action";
			//document.listUser.submit();
			
			document.getElementById("exportUserForm").submit();
				
		}	
		
		</script>
	</head>	
	<body class="adminMain">
		<div class="mainTitle">
			用户管理
		</div>
		<form id="formSearch" name="listUser" method="post" action="<%=request.getContextPath()%>/user/managerUserList.action">
		<div class="tagTable" style="margin-top:15px;">
			<table width="95%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="300">
						<span> 
							<select name="uinfo" id="uinfo">
								<option value="name" <s:if test="'name' == uinfo">selected</s:if>>用户名</option>
								<option value="realname" <s:if test="'realname' == uinfo">selected</s:if>>用户姓名</option>
							</select>
						</span>
						<input type="text" class="inputtext1" name="searchName" value="<s:property value="searchName"/>" id="searchName"/>
					 	<input type="hidden" name="pageInfo.f_name_op" value=""/>
					 	<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
						<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
						<input type="hidden" name="pageInfo.f_isManager" id="pageInfo.f_isManager" value="1" />
					</td>
					<td style="padding:0px" width="170px">
						&nbsp;&nbsp;用户状态:
						<select name="isopen" id="isopen">
							<option value=""  <s:if test="10 == isopen">selected</s:if> onclick="view_open()">全部</option>
							<option value="1" <s:if test="1 == isopen"> selected </s:if>  onclick="view_open()">已开通</option>
				  			<option value="0" <s:if test="0 == isopen"> selected </s:if>  onclick="view_open()">未开通</option>
				  			<option value="2" <s:if test="2 == isopen"> selected </s:if>  onclick="view_open()">停用</option>
				  			
						</select>
				  		<!-- 
				  		<input type="button" value="同步用户" class="btnInput4" onclick="javascript:sycUser();">
				  		 -->
					</td>
					 
					<td style="padding:0px" width="70px">
					   所属机构：
					</td>
					<td align="center" width="250">
						<div class="content_wrap" style="width:210px">
							<div class="zTreeDemoBackground left">
								<ul class="list">
									<li class="title"><input onclick="showMenu(); return false;" id="citySel" class="inputtext3" type="text" readonly value="<s:property value="orgName" />" style="width:200px;"/>&nbsp;
									<a id="menuBtn" href="#" onclick="removeDate()">清空</a></li>
								</ul>
							</div>
						</div>
						<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
							<ul id="treeDemo" class="ztree" style="margin-top:0; width:250px;"></ul>
						</div>
						<input type="hidden" name="orgName" value="<s:property value="orgName" />" id="orgName">
						<input type="hidden" name="orgId" value="<s:property value="orgId" />" id="orgId">
					</td>
					 
				  	<td>
				  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()"/>
				  		
				  		
				  	</td>
				</tr>
			</table>
		</div>
		<div class="mainConText">
			<table width="100%" cellspacing="0" cellpadding="0" class="tableCon">
				<s:if test="lookup == null">
					<tr height="40px;">
						<td colspan="6"><z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="6" ></z:button></td>
					</tr>
				</s:if>
				<tr class="TRtit">
					<td width="15"><input name="chkall" value="checkbox" type="checkbox" onclick="javascript:selectAll()"></td>
					<td><a href="javascript:sortBy('name')" id="title_name">用户名</a></td>
					<td><a href="javascript:sortBy('realname')" id="title_realname">用户姓名</a></td>
					
					<td><a href="javascript:sortBy('isopen')" id="title_isopen">用户状态</a></td>
					<td><a href="javascript:sortBy('roleNames')" id="title_roleNames">当前角色</a></td>
				
					<td><a>操作</a></td>
				</tr>
				<s:iterator value="userList" status="user">
				<tr id="tr_<s:property value='id'/>" class="<s:if test="#user.odd==false">trEven</s:if><s:else>trOdd</s:else>">
					<td width="15">
					<s:if test="id == #session.user.id">
					<input name="orderId" value="<s:property value="id"/>" type="checkbox" disabled="disabled"/>
					</s:if>
					<s:else>
					<input name="orderId" value="<s:property value="id"/>" type="checkbox"/>
					</s:else>
					</td>
					<td><s:property  value="name" /></td>
					<%--<td><s:property  value="nickname" /></td>
					--%><td><s:property  value="realname" /></td>
					<!-- <td><s:property  value="orgName" /></td> -->
					<td>
						<s:if test="0 == isopen">
							未开通
						</s:if>
					 	<s:if test="1 == isopen">
							开通
						</s:if>
						<s:if test="2 == isopen">
							停用
						</s:if>
						
					</td>
					<td>
						<s:property  value="roleNames" />
					</td>
					<!-- 
					<td>
						<s:date name="accountoverdate" format="yyyy-MM-dd"/>
					</td>
					 -->
					<td>
						<s:if test="lookup == null">
							<s:if test="id == #session.user.id">
							</s:if>
							<s:else>
								<z:label rids="${sessionScope.rIDs}" mlinkid="6" parametervlue="id:${id}"></z:label>
							</s:else>
						</s:if>
						<s:else>
							<a href="javascript:selectUserConfig(${id},'${realname}')">选择</a>
						</s:else>
					</td>
				</tr>
				</s:iterator>
			</table>
			<table >
				<tr>
					<td align="left" class="pageBoxLeft">
						<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font>/
						<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
					
					</td>
					<td align="right" class="pageBoxRight">
						<dl class="pageBox">
							<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" url="${applicationScope.ctx}/user/userList.action" />
						</dl>
					</td>
				</tr>
			</table>	
		</div>
	   </form>
	   
	   <form id="exportUserForm" name="exportUserForm" method="post" action="<%=request.getContextPath()%>/user/exportUser.action"> 
	   </form>
	   
	</body>
</html>
