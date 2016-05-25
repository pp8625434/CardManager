<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="<%=request.getContextPath()%>/js/util/jquery-2.2.3.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/style/style.css">
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/admin/css/content.css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/oasysalter/js/oaSysAlter.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/util/formUtil.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body class="adminMain">
		<div class="mainTitle">
			新建OA系统组织结构变更
		</div>
		<div class="mainConText">
			<form name="formSearch" id="formSearch" method="post"
				action="<%=request.getContextPath()%>/oasysalter/oaSysAlterSave.action"
				onsubmit="onForm_Submits();" enctype="multipart/form-data">
				<input type="hidden" name="oaSysAlter.id" id="id" />
				<input type="hidden" name="oaSysAlter.version" id="version" />
				<input type="hidden" name="oaSysAlter.firstperson" id="firstperson"/>
				<input type="hidden" name="oaSysAlter.firstpid" id="firstpid"/>
				<input type="hidden" name="oaSysAlter.firstsubdate" id="firstsubdate"/>
				<table width="100%" class="bordered">
					<caption>
						OA系统组织结构变更单
					</caption>
					<tr>
						<td colspan="2">
							日期
						</td>
						<td colspan="2">
							<input type="text" name="oaSysAlter.formdate"
								id="formdate" isnull="no" dorder="1"
								dtype="date(yyyy-MM-dd HH:mm:ss)" mes="日期不能为空" />
						</td>
					</tr>
					<tr>
						<td width="25%">
							经办人
						</td>
						<td width="25%">
							<input type="text" name="oaSysAlter.agent" id="agent"
								isnull="no" dorder="1" mes="经办人不能空" size="25" />
						</td>
						<td width="25%">
							联系电话
						</td>
						<td width="25%">
							<input type="text" name="oaSysAlter.cellphone"
								id="cellphone" isnull="no" dorder="2" mes="联系电话不能空"
								size="20" />
						</td>
					</tr>
					<tr>
						<td rowspan="1">
							办理类型
						</td>
						<td colspan="3">
							<div align="left">
								部门新增或变更名称：
								<input type="text" name="oaSysAlter.deptalter"
									id="deptalter" isnull="no" dorder="2" mes="联系电话不能空"
									size="50" />
							</div>
							<div align="left">
								处室新增或变更名称：
								<input type="text" name="oaSysAlter.chushialter"
									id="chushialter" isnull="no" dorder="2" mes="联系电话不能空"
									size="50" />
							</div>
							<div align="left">
								其他内容：
								<input type="text" name="oaSysAlter.typeelse"
									id="typeelse" isnull="no" dorder="2" mes="联系电话不能空"
									size="50" />
							</div>
						</td>
					</tr>
					

					<tr>
						<td>
							办理要求
						</td>
						<td colspan="3">
							<textarea rows="3" name="oaSysAlter.askfor"
								id="askfor"></textarea>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							申请部门意见
						</td>
						<td colspan="3">
							<textarea rows="3" name="oaSysAlter.applydeptopinion"
								id="applydeptopinion"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo" name="oaSysAlter.applydeptsign"
								id="applydeptsign" isnull="no" dorder="5" mes="请申请部门签字" />
							<input type="hidden" name="oaSysAlter.applydeptsignid" id="applydeptsignid"/>
							<input type="hidden" name="oaSysAlter.applydeptsigndate" id="applydeptsigndate"/>
						</td>
					</tr>
					<tr>
						<td rowspan="3">
							办公室意见
						</td>
						<td colspan="3">
							<textarea rows="3" name="oaSysAlter.officeopinion"
								id="officeopinion"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo" name="oaSysAlter.officesign"
								id="officesign" isnull="no" dorder="6" mes="请办公室签字" />
							<input type="hidden" name="oaSysAlter.officesignid" id="officesignid"/>
							<input type="hidden" name="oaSysAlter.officesigndate" id="officesigndate"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							（如部门新增需提供部门机关代字、分发单排序。）
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							经营投资部意见
						</td>
						<td colspan="3">
							<textarea rows="3" name="oaSysAlter.investopinion"
								id="investopinion"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo" name="oaSysAlter.investsign"
								id="investsign" isnull="no" dorder="7" mes="请经营投资部签字" />
							<input type="hidden" name="oaSysAlter.investsignid" id="investsignid"/>
							<input type="hidden" name="oaSysAlter.investsigndate" id="investsigndate"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							办理情况
						</td>
						<td colspan="3">
							<textarea rows="3" name="oaSysAlter.trancondition"
								id="trancondition"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							签字
						</td>
						<td colspan="2">
							<hi:select type="radio" emu="yesNo" name="oaSysAlter.transign"
								id="transign" isnull="no" dorder="9" mes="请签字" />
							<input type="hidden" name="oaSysAlter.transignid" id="transignid"/>
							<input type="hidden" name="oaSysAlter.transigndate" id="transigndate"/>
						</td>
					</tr>
				</table>
				<br />
				<div class="btnBox">
					<input type="submit" id="addBut" value="保存" class="btnInput1" />
					&nbsp;
					<input type="button" class="btnInput2 chancleButton" value="取消"
						onclick="cancelBtn();" />
				</div>
			</form>
		</div>
	</body>
</html>
