<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/content.css">	
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/classifiedprint/js/classifiedprint.js"></script>
	</head>	
	
	<body class="adminMain">
		<div class="mainTitle">
			涉密信息打印输出审批登记
		</div>
		<form name="formSearch" id="formSearch" method="post" action="<%=request.getContextPath()%>/classifiedprint/classifiedprintList.action">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td style="padding:0px">
							<span class="fLBox">文件资料名称或标题：</span>
							<input type="text"  class="inputtext2" name="pageInfo.f_filename" value="<s:property value="pageInfo.f_filename"/>" size="50">
						 	<input type="hidden" name="pageInfo.f_filename_op" value="">	
						</td>
					  	<td>
					  		<input type="button" value="查询" class="btnInput4" onclick="javascript:formSearchSubmit()">
					  		<s:if test="lookup==null">
					  			<z:button cssClass="btnInput4" rids="${sessionScope.rIDs}"  mlinkid="1600"></z:button>
					  		</s:if>
					  		<input type="hidden" name="pageInfo.sorterName"	id="pageInfo.sorterName" value="<s:property value="pageInfo.sorterName" default=""/>" />
							<input type="hidden" name="pageInfo.sorterDirection" id="pageInfo.sorterDirection" value="<s:property value="pageInfo.sorterDirection" default="ASC"/>" />
					  	</td>
					</tr>
				</table>
			</div>
			<div class="mainConText">
				<table class="tableCon">
					<tr class="TRtit">
						<td width="15"><input name="chkall" value="checkbox" onClick="javascript:selectAll()" type="checkbox"></td>
						<td> <a href="javascript:sortBy('filename')" id="title_filename">文件资料名称或标题</a></td>
						<td> <a href="javascript:sortBy('classification')" id="title_classification">密级</a></td>
						<td> <a href="javascript:sortBy('registdate')" id="title_registdate">登记日期</a></td>
						<td>
							<s:if test="lookup==null">
								<a>操作</a>
							</s:if>
						</td>
					</tr>
					<s:iterator value="printList" status="print">
						<tr id="tr_<s:property  value="id"/>" class="<s:if test="#merchant.odd==false">trEven</s:if><s:else> trOdd</s:else>">
							<td width="15">
								<input name="orderId" value="<s:property  value="id"/>" type="checkbox"/>
							</td>
							<td> <s:property  value="filename" /></td>
							<td>
								<hi:select emu="BM-02-03procls" name="printList[${print.count-1}].classification" isLabel="true" />
							</td>
							<td><s:date name="registdate" format="yyyy-MM-dd"/></td>
							<td>
								<s:if test="lookup==null">
									<z:label rids="${sessionScope.rIDs}" mlinkid="1600" parametervlue="id:${id}"></z:label>
								</s:if>
		  					</td>
						</tr>
					</s:iterator>				  																															
				</table>
				<table>
					<tr>
						<td align="left" class="pageBoxLeft">
							<font style="cursor: hand" onclick="javascript:selectAll('true')">全选</font> 
							<font style="cursor: hand" onclick="javascript:selectCancel()">取消全选</font>
						</td>
						<td align="right" class="pageBoxRight">
							<dl class="pageBox">
								<hi:page pageBeanName="pageInfo" currentPage="${pageInfo.currentPage}" buttonClass="btnInput4"
									url="${applicationScope.ctx}/classifiedprint/classifiedprintList.action" />
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html> 