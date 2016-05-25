<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/statistical/js/loginlog.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/common/commonforList.js"></script>
		<script type="text/javascript">
			function toQuery(){
				var sdate = $j("#startDate").val();
				var edate = $j("#endDate").val();
				if(sdate!="" && edate!=""){
					if(sdate>edate){
						parent.jQuery.messager.alert("友情提示", "结束时间不能小于起始时间,请重新选择", "info");
						return  false;
					}
				}
				var currentPage = $j("#currentPage");
				var pageInfo = $j("#pageInfo\\.currentPage");
				if(currentPage){
					currentPage.val(1);
				}
				if(pageInfo){
					pageInfo.val(1);	
				}
				$j("#formSearch").submit();
			}
		</script>
	</head>	
	
	<body class="adminMain">
		<%--<div class="mainTitle" style="width:980px;">
			系统操作日志
		</div>
		--%><form name="formSearch" id="formSearch" method="post" action="${applicationScope.ctx}/statistical/logList.action">
			<div class="tagTable" style="width:980px;">
			<div class="chaxuan">查询条件:</div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td width="220">
							<span class="fLBox">模块名称：</span>
							<hi:search name="pageInfo.f_function" cssClass="searchText" emu="模块类型" needSelect="false"/>
						 	<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default="logindate"/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="DESC"/>" />
						</td>
						<td width="300">
					 			<span class="fLBox">操作人姓名:</span>
					 			<input class="inputtext1" name="pageInfo.f_creatorName" value="<s:property value="pageInfo.f_creatorName"/>"  />
					 	</td>
					 	<td width="280">
					 			<span class="fLBox">数据信息:</span>
					 			<input class="inputtext1" name="pageInfo.f_functionName" value="<s:property value="pageInfo.f_functionName"/>"  />
					 	</td>
					 	<td></td>
					 	<td></td>
					 </tr>
					 <tr>
					 	<td>
					 			<span class="fLBox">操作类型：</span>
					 			<hi:search name="pageInfo.f_type" cssClass="searchText" emu="操作类型" needSelect="false"/>
					 	</td>
					 	<td>
					 		<span class="fLBox">操作时间:</span>
					 		<s:textfield name="startDate" id="startDate" value="%{#request.startDate}" onclick="WdatePicker({isShowWeek:true})" 
					 		cssClass="Wdate" cssStyle="width:96px;" readonly="true" disabled='mark in {"view"}?true:false' title="起始时间"/>
					 		&nbsp;-&nbsp;
					 		<s:textfield name="endDate" id="endDate" value="%{#request.endDate}" onclick="WdatePicker({isShowWeek:true})" 
					 		cssClass="Wdate" cssStyle="width:96px;" readonly="true" disabled='mark in {"view"}?true:false' title="结束时间"/>
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput3" onclick="javascript:toQuery();">
					  	</td>
					</tr>
				</table>
			</div>
			
			<div class="mainConText" style="width:980px;">
				<table class="tableCon">
					<tr class="TRtit">
						<!--<td width="2px;">  <input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox"></td>-->
						<td> <a href="javascript:sortBy('functions')" id="title_functions">操作模块名称</a></td>
						<td> <a href="javascript:sortBy('creatorName')" id="title_creatorName">操作人姓名</a></td>
						<td> <a href="javascript:sortBy('functionName')" id="title_functionName">操作数据信息</a></td>
						<td> <a href="javascript:sortBy('type')" id="title_type">操作类型</a></td>
						<td> <a href="javascript:sortBy('createDate')" id="title_createDate">操作时间</a></td>
						<!--  <td> <a>操作</a></td>-->
					</tr>
					<s:iterator value="LogList" status="log">
						<tr class="<s:if test="#log.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<!--<td width="2px;"><input name="orderId" value="<s:property  value="id"/>" type="checkbox"></td>-->
							<td> 
								<s:if test="functions == 6">
									用户管理
								</s:if>
								<s:elseif test="functions == 5">
									角色管理
								</s:elseif>
								
								<s:elseif test="functions == 3">
									一级菜单管理
								</s:elseif>
								<s:elseif test="functions == 4">
									二级菜单管理
								</s:elseif>
								<s:elseif test="functions == 9">
									枚举管理
								</s:elseif>
								<s:elseif test="functions == 8">
									机构管理
								</s:elseif>
								<s:elseif test="functions == 47">
									IP地址管理
								</s:elseif>
								<s:elseif test="functions == 63">
									软件管理
								</s:elseif>
								<s:elseif test="functions == 76">
									软件文件管理
								</s:elseif>

								<s:elseif test="functions == 64">
									补丁管理
								</s:elseif>	
								<s:elseif test="functions == 79">
									插件管理
								</s:elseif>										

					
								<s:elseif test="functions == 88">
									漏洞管理
								</s:elseif>
								<s:elseif test="functions == 100">
									漏洞补丁管理
								</s:elseif>
								<s:elseif test="functions == 90">
									网络拓扑结构管理
								</s:elseif>
								<s:elseif test="functions == 104">
									软件漏洞管理
								</s:elseif>
								<s:elseif test="functions == 110">
									插件漏洞管理
								</s:elseif>
								<s:elseif test="functions == 111">
									机构IP管理
								</s:elseif>
								<s:elseif test="functions == 126">
									漏洞上报
								</s:elseif>
								<s:elseif test="functions == 129">
									扫描策略
								</s:elseif>
																		
							</td>
							<td> <s:property  value="creatorName" /></td>
							<td> 
								<s:property  value="functionName" />
							</td>
							<td>
								<s:if test="type == 999">
									添加
								</s:if>
								<s:elseif test="type == 998">
									删除
								</s:elseif>
								<s:elseif test="type == 997">
									修改
								</s:elseif>
							</td>
							<td> <s:date name="createDate" format="yyyy-MM-dd HH:mm:ss"/></td>
							<!--<td> <a >详情</a></td>-->
						</tr>
					</s:iterator>
					</table>
				<table >
					<tr> 
						<td align="left" class="pageBoxLeft">
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" buttonClass="btnInput4"
									url="${applicationScope.ctx}/statistical/logList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 