<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript" src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/jquery-2.2.3.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript" src="${applicationScope.ctx}/js/util/formUtil.js" ></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/carrypartmedium/js/carrypartmedium.js"></script>
		<link rel="stylesheet" type="text/css" href="${applicationScope.ctx}/style/style.css">
		
	</head>
	<body class="adminMain">		
		<form action="${applicationScope.ctx}/carrypartmedium/saveCarrypartmedium.action" method="post" name="formSearch" id="formSearch" onsubmit="saveCarrypartmedium();">
			<input type="hidden" id="cid" name="carrypartmedium.id" value="<s:property value="carrypartmedium.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			<div class="mainConText">
				<div>
		     		<span>
		     			申请日期：<input type="text" name="carrypartmedium.applydate" id="sqrq" dtype="date(yyyy-MM-dd)" value="<s:date name="carrypartmedium.applydate" format="yyyy-MM-dd"/>" isnull="no"  mes="申请日期不能为空"/>　　　　　　　　　　
		     			编号：<input type="text" name="carrypartmedium.code" id="bh" value="<s:property value="carrypartmedium.code"/>" isnull="no" mes="编号不能为空"/>
		     		</span>
     			</div>
		    	<table class="bordered">
					<tr>
						<td>责任部门</td>
					    <td><input type="text" name="carrypartmedium.orgname" id="zrbm" value="<s:property value="carrypartmedium.orgname"/>" isnull="no" mes="责任部门不能为空"/></td>
					    <td>经办人</td>
					    <td><input type="text" name="carrypartmedium.agent" id="jbr" value="<s:property value="carrypartmedium.agent"/>" isnull="no" mes="经办人不能为空"/></td>
					</tr>
					<tr>
					    <td>外出地点</td>
					    <td><input type="text" name="carrypartmedium.location" id="wcdd" value="<s:property value="carrypartmedium.location"/>" isnull="no" mes="外出地点不能为空"/></td>
					    <td>返回日期</td>
					    <td><input type="text" name="carrypartmedium.returndate" id="fhrq" dtype="date(yyyy-MM-dd)" value="<s:date name="carrypartmedium.returndate" format="yyyy-MM-dd"/>" isnull="no"  mes="返回日期不能为空"/></td>
					</tr>
					<tr>
					    <td>介质密级</td>
					    <td style="text-align:left;"><hi:select  type="radio" emu="BM-05-04jzmj" name="carrypartmedium.mclassifition" isnull="no"  mes="请选择介质密级" /></td>
					    <td>保密编号</td>
					    <td><input type="text" name="carrypartmedium.scode" id="bmbh" value="<s:property value="carrypartmedium.scode"/>" isnull="no" mes="保密编号不能为空"/></td>
					</tr>
					<tr>
					    <td>用途</td>
					    <td colspan="3"><s:textarea name="carrypartmedium.yt" id="yt"></s:textarea></td>
					</tr>
					<tr>
					    <td>处理信息的主要内容</td>
					    <td><input type="text" name="carrypartmedium.information" id="zynr" value="<s:property value="carrypartmedium.information"/>" isnull="no" mes="处理信息的主要内容不能为空"/></td>
					    <td>处理信息的最高密级</td>
					    <td><input type="text" name="carrypartmedium.imaxclassification" id="zgmj" value="<s:property value="carrypartmedium.imaxclassification"/>" isnull="no" mes="处理信息的最高密级不能为空"/></td>
					</tr>
					<tr>
					    <td rowspan="2">保密责任书</td>
					    <td colspan="3"><p style="text-align:left;">　　本存储介质为本部统一标识的介质。请使用人遵守如下规定</p >
					    	<p style="text-align:left;">　　一、遵守国家、集团公司和本部有关存储介质的保密管理规定。 </p>
					    	<p style="text-align:left;">　　二、对存储介质进行妥善保管，不私自转借他人，不随意丢放。 </p>
					      	<p style="text-align:left;">　　三、不使用上网存储介质处理涉密信息和单位内部信息，不连接涉密计算机和内部办公计算机。 </p>
					      	<p style="text-align:left;">　　四、不使用内部级存储介质处理涉密信息，不连接涉密计算机和互联网计算机。 </p>
					     	<p style="text-align:left;">　　五、不使用涉密存储介质间接或直接接入国际互联网或其他公共信息网络，不连接非涉密计算机及信息系统；不使用低密级存储介质存储高密级信息或将高密级存储介质与低密级设备相连。 </p>
					     	<p style="text-align:left;">　　六、携带涉密移动存储介质外出，存储的涉密信息应只与本次外出工作相关，返回后应使用符合相关保密规定和标准的技术、设备和措施进行信息清除。 </p>
					      	<p style="text-align:left;">　　七、不将录音笔连接互联网或内部办公用计算机使用，需拷贝录音文件时通过信息档案部设置的涉密外转内中转机进行中转。 </p>
					      	<p style="text-align:left;">　　八、在规定时间内返还，并按规定办理返回检查手续。 </p>
					      	<p style="text-align:left;">　　九、因未采取保密措施，致使存储介质丢失，出现失泄密的，使用人承担相应保密责任。 </p>
					      	<p style="text-align:left;">　　十、如有违犯，愿意按规定接受处罚。 </p>
					    	<p style="text-align:left;">　　本人已清晰阅读并了解上述条款的含义，保证遵守上述条款的约束。 </p></td>
					</tr>
					<tr>
					    <td>使用人签字：</td>
					    <td colspan="2" style="text-align:left;"><hi:select  type="radio" emu="yesNo" name="carrypartmedium.usign" isnull="no"  mes="请选择使用人签字" /></td>
					</tr>
					<tr>
					    <td>部门领导审批意见</td>
					    <td colspan="3"><s:textarea name="carrypartmedium.departmentdesc" id="spyj" ></s:textarea></td>
					</tr>
					<tr>
					    <td>返回检查情况</td>
					    <td colspan="3"><s:textarea name="carrypartmedium.recheckcase" id="fhjcqk" ></s:textarea></td>
					</tr>
					<tr>
					    <td>备注</td>
					    <td colspan="3"　style="text-align:left;">此表存入部门二级保密档案。</td>
					</tr>
				</table>
				<div class="btnBox">
					<input type="submit" id="addBut" class="btnInput1" value="保存" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/carrypartmedium/carrypartmediumList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>