<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" %>
<jsp:directive.page import="com.base.framework.BaseConfigHolder" />
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css"/>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css"/>
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/addcardstatistics/js/statistical.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/addcardstatistics/js/addcardstatistics.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/wdatePicker.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/common/common.js"></script>
		
		
		<!-- echarts必选JS -->		
		<script src="<%=request.getContextPath()%>/echarts/esl.js" type="text/javascript"></script>  
		<script src="<%=request.getContextPath()%>/echarts/echarts-config.js" type="text/javascript"></script>  
		<!-- echarts必选JS -->
		<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/addcardstatistics/js/orgtree.js"></script>
		<!-- 机构选择的js/css 结束 -->
		
		
	</head>	
	
	<body class="adminMain">

		<div class="mainTitle">
			办卡统计
		</div>
		
	<form name="formSearch" id="formSearch"  method="post" action="${applicationScope.ctx}/addcardsta/addCardSta.action">
		<div class="Gr_Main">
			<div class="tagTable">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
					<tr>
						<td>
							<span class="fLBox">所在社区:&nbsp;&nbsp;&nbsp;</span>
							<input type="text" id="orgname" readOnly onclick="showMenu(); return false;"/>
							<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
								<ul id="treeDemo" class="ztree" style="margin-top:0; width:250px;"></ul>
							</div>
							<input type="hidden" name="orgid" id="orgid" value="<s:property value="addCard.orgid"/>" />
							&nbsp;&nbsp;&nbsp;
							<input type="button" value="清空" class="btnInput3" id="butt" onclick="clearOrgin();" />
						</td>
					</tr>
					<tr>
						<td>
							<span class="fLBox">统计方式:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="stype" onclick="stypechange('0')" value="0" checked />年&nbsp;&nbsp;&nbsp;
								<input type="radio" name="stype" onclick="stypechange('1')" value="1" />月&nbsp;&nbsp;&nbsp;
								<input type="radio" name="stype" onclick="stypechange('2')" value="2" />日&nbsp;&nbsp;&nbsp;
							</span>
							<s:textfield name="wuj.date" class="GrCx_input" id="byear" onclick="WdatePicker({dateFmt:'yyyy'})"
								cssClass="Wdate" cssStyle="width:120px;font-size:14px;color:#016586;" readonly="true" disabled='mark in {"view"}?true:false'>
									<s:param name="value">
										<s:property value="byear" />
									</s:param>
							</s:textfield>
							<s:textfield name="wuj.date" class="GrCx_input" id="bmonth" onclick="WdatePicker({dateFmt:'yyyy-MM'})" cssClass="Wdate"
								cssStyle="width:120px;font-size:14px;color:#016586;display:none;" readonly="true" disabled='mark in {"view"}?true:false'>
									<s:param name="value">
										<s:property value="bmonth" />
									</s:param>
							</s:textfield>
							<s:textfield name="wuj.date" class="GrCx_input" id="bdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
								cssClass="Wdate" cssStyle="width:120px;font-size:14px;color:#016586;display:none;" readonly="true" disabled='mark in {"view"}?true:false'>
									<s:param name="value">
										<s:property value="bdate" />
									</s:param>
							</s:textfield>
							至
							<s:textfield name="wuj.date" class="GrCx_input" id="eyear" onclick="WdatePicker({dateFmt:'yyyy'})"
								cssClass="Wdate" cssStyle="width:120px;font-size:14px;color:#016586;" readonly="true" disabled='mark in {"view"}?true:false'>
									<s:param name="value">
										<s:property value="eyear" />
									</s:param>
							</s:textfield>
							<s:textfield name="wuj.date" class="GrCx_input" id="emonth" onclick="WdatePicker({dateFmt:'yyyy-MM'})" cssClass="Wdate"
								cssStyle="width:120px;font-size:14px;color:#016586;display:none;" readonly="true" disabled='mark in {"view"}?true:false'>
									<s:param name="value">
										<s:property value="emonth" />
									</s:param>
							</s:textfield>
							<s:textfield name="wuj.date" class="GrCx_input" id="edate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
								cssClass="Wdate" cssStyle="width:120px;font-size:14px;color:#016586;display:none;"
								readonly="true" disabled='mark in {"view"}?true:false'>
									<s:param name="value">
										<s:property value="edate" />
									</s:param>
							</s:textfield>
						</td>
						<td>
							<input type="button" value="查询" class="btnInput3" id="butt" onclick="tptj();" />
						</td>
					</tr>
					
				</table>
				
				</div>
				<br/>
				<div id="main1" style="height:500px;border:1px solid #ccc;padding:10px;"></div>
				<div style="height:15px;border:1px solid #ccc;padding:10px;">
					<div id="yhl" class="div1"></div>
				</div>
				<div class="mainConText">
					<table class="tableCon" id="datatable"  width="100%">
						<tr class="TRtit">
							<th>
								时间
							</th>
							<th>
								办卡数量
							</th>
						</tr>
					</table>
				</div>
			</div>		
	   </form>
	</body>
</html>