<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css"
			href="${applicationScope.ctx}/admin/css/style.css">
		<link rel="stylesheet" type="text/css"
			href="${applicationScope.ctx}/admin/css/content.css">
		<script type="text/javascript"
			src="${applicationScope.ctx}/js/framework/hi_Include.js"></script>
		<script type="text/javascript" 
			src="${applicationScope.ctx}/admin/card/js/card.js"></script>
			
		<!-- 机构选择的js/css 开始 -->
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/demo.css" />
		<link rel="stylesheet"  type="text/css" href="${applicationScope.ctx}/js/ztree/css/zTreeStyle/zTreeStyle.css" />
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/js/ztree/js/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${applicationScope.ctx}/admin/card/js/orgtree.js"></script>
		<!-- 机构选择的js/css 结束 -->
	</head>
	<body class="adminMain">		
		<s:if test="card.id !=null">
			<div class="mainTitle">
				编辑卡片信息
			</div>
		</s:if>
		<s:else>
			<div class="mainTitle">
				新增卡片信息
			</div>
		</s:else>
		<form action="${applicationScope.ctx}/card/saveCard.action" method="post" name="formSearch" id="formSearch" onkeypress="if(event.keyCode==13||event.which==13){return false;}">
			<input type="hidden" id="cid" name="card.id" value="<s:property value="card.id" />"> 
			<input type="hidden" name="params" value="<%=request.getAttribute("params")%>" />
			 
			<div class="mainConText">
				<table class="tableEdit">
					<s:if test="card.id != null">
						<tr>
							<td>
								所在社区:
							</td>
							<td>
								<span id="orgname"></span>
								<input type="hidden" name="card.orgid" id="orgid" value="<s:property value="card.orgid"/>" />
							</td>							
						</tr>
					</s:if>
					<s:else>
						<tr>
							<td>
								所在社区:
							</td>
							<td>
								<input type="text" id="orgname" readOnly onclick="showMenu(); return false;">
								<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
									<ul id="treeDemo" class="ztree" style="margin-top:0; width:250px;"></ul>
								</div>
								<input type="hidden" name="card.orgid" id="orgid" value="<s:property value="card.orgid"/>" />
								&nbsp;<span style="color: red;">*</span>
							</td>
						</tr>
					</s:else>
					<tr>
						<td>
							卡号:
						</td>
						<td>
							<input type="text" name="card.cardnum" id="cardnum" value="<s:property value="card.cardnum"/>" maxlength="50"/>
							<input type="hidden" id="oldNum" value="<s:property value="card.cardnum"/>"/>
							&nbsp;<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td>
							姓名:
						</td>
						<td>
							<input type="text" name="card.name" id="name" value="<s:property value="card.name"/>" maxlength="25"/>
							&nbsp;<span style="color: red;">*</span>	
						</td>
					</tr>
					<tr>
						<td>
							手机号:
						</td>
						<td>
							<input type="text" name="card.cellphone" id="cellphone" value="<s:property value="card.cellphone"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="20"/>
							&nbsp;<span style="color: red;">*</span>
						</td>
					</tr>
					<s:if test="card.id !=null">
						<tr>
							<td>
								性别:
							</td>
							<td>
								<input type="radio" name="card.sex" value="1" <s:if test="card.sex==1">checked="true"</s:if>/>男
								<input type="radio" name="card.sex" value="0"<s:if test="card.sex==0">checked="true"</s:if> />女
							</td>
						</tr>
					</s:if>
					<s:else>
						<tr>
							<td>
								性别:
							</td>
							<td>
								<input type="radio" name="card.sex" value="1" checked/>男
								<input type="radio" name="card.sex" value="0" />女
							</td>
						</tr>
					</s:else>
					<tr>
						<td>
							身份证号码:
						</td>
						<td>
							<input type="text" name="card.identitycard" id="identitycard" value="<s:property value="card.identitycard"/>" maxlength="30"/>	
							<input type="hidden" id="oldIcard" value="<s:property value="card.identitycard"/>"/>
							&nbsp;<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td>
							电话:
						</td>
						<td>
							<input type="text" name="card.phone" id="phone" value="<s:property value="card.phone"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="25"/>
						</td>
					</tr>
					<tr>
						<td>
							住址:
						</td>
						<td>
							<textarea rows="6" cols="60" name="card.address" id="address" maxlength="200"><s:property value="card.address"/></textarea>	
						</td>
					</tr>
					<s:if test="card.id != null">
						<tr>
							<td>
								使用状态:
							</td>
							<td>
								<input type="radio" name="card.state" value="0" <s:if test="card.state==0">checked="true"</s:if>/>正常使用
								<input type="radio" name="card.state" value="1"<s:if test="card.state==1">checked="true"</s:if> />停用
							</td>							
						</tr>
					</s:if>
					<tr>
						<td>
							头像地址:
						</td>
						<td>
							<input type="text" name="card.headpath" id="headpath" value="<s:property value="card.headpath"/>"  maxlength="100"/>
						</td>
					</tr>
					<s:if test="card.id != null">
						<s:if test="card.credit == null">
							<tr>
								<td>
									积分:
								</td>
								<td>
									<input type="text" name="card.credit" id="credit" value="0" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="10"/>
								</td>
							</tr>
						</s:if>
						<s:else>
							<tr>
								<td>
									积分:
								</td>
								<td>
									<input type="text" name="card.credit" id="credit" value="<s:property value="card.credit"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="10"/>
								</td>
							</tr>
						</s:else>
						<s:if test="card.money == null">
							<tr>
								<td>
									余额:
								</td>
								<td>
									<input type="text" name="card.money" id="money" value="<s:property value="0"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="10"/>
								</td>
							</tr>
						</s:if>
						<s:else>
							<tr>
								<td>
									余额:
								</td>
								<td>
									<input type="text" name="card.money" id="money" value="<s:property value="card.money"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="10"/>
								</td>
							</tr>
						</s:else>
						<s:if test="card.discount == null">
							<tr>
								<td>
									折扣:
								</td>
								<td>
									<input type="text" name="card.discount" id="discount" value="<s:property value="0"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="8"/>
								</td>
							</tr>
						</s:if>
						<s:else>
							<tr>
								<td>
									折扣:
								</td>
								<td>
									<input type="text" name="card.discount" id="discount" value="<s:property value="card.discount"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="8"/>
								</td>
							</tr>
						</s:else>
						<tr>
							<td>
								办卡时间:
							</td>
							<td>
								<s:date name="card.addtime" format="yyyy-MM-dd HH:mm:ss" />
							</td>							
						</tr>
						<tr>
							<td>
								补卡时间:
							</td>
							<td>
								<s:date name="card.changetime" format="yyyy-MM-dd HH:mm:ss" />
							</td>							
						</tr>
					</s:if>
					<s:else>
						<tr>
							<td>
								积分:
							</td>
							<td>
								<input type="text" name="card.credit" id="credit" value="<s:property value="card.credit"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="10"/>
							</td>
						</tr>
						<tr>
							<td>
								余额:
							</td>
							<td>
								<input type="text" name="card.money" id="money" value="<s:property value="card.money"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="10"/>
							</td>
						</tr>
						<tr>
							<td>
								折扣:
							</td>
							<td>
								<input type="text" name="card.discount" id="discount" value="<s:property value="card.discount"/>" onkeyup="if(isNaN(value))this.value='';" onafterpaste="if(isNaN(value))this.value='';" maxlength="8"/>
							</td>
						</tr>
					</s:else>
				</table>
				<div class="btnBox">
					<input type="button" id="addBut" class="btnInput1" value="保存" onclick="saveCardInfo()" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消" onclick="javascript:window.location='${applicationScope.ctx}/card/cardList.action'" />
				</div>
			</div>
		</form>
	</body>
</html>