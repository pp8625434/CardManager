<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" language="javascript"
			src="../js/util/jquery-2.2.3.js"></script>
		<script type="text/javascript" src="../js/datepicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript"
			src="../js/util/formUtil.js"></script>
		<link rel="stylesheet" type="text/css" href="../style/style.css">
		<script type="text/javascript">
			
		</script>

	</head>
	<body>
		<form id="testForm" action="asdasdas" onsubmit="onForm_Submits();">
			<table width="100%"  class="bordered">
				<caption>
					保密提醒记录表
				</caption>
				<tr>
					<td>
						保密提醒内容
					</td>
					<td colspan="6">
						<p align="left">
							1.参加涉外活动人员须增强保密防范意识，严格遵守保密法律法规及院各项保密规章制度。
						</p>
						<p align="left">
							2.谈论涉密事项要注意场合，防止被窃听，不得在涉外公共场所及外方提供的场所谈论涉密事项。
						</p>
						<p align="left">
							3.在与外方交往中，对外方通过其他渠道知悉的有关我方涉密事项，应严正要求外方承担保密义务。
						</p>
						<p align="left">
							4.在涉外活动中，严禁谈论涉密事项，高度警惕，严防密从口出。
						</p>
						<p align="left">
							5.对外提供的文件、物品及宣传材料须事先进行保密审查，不得涉及国家 秘密。
						</p>
						<p align="left">
							6.在外事活动中应严格执行请示报告制度，不得越权处理涉外事项。
						</p>
						<p align="left">
							7.如在境外遇到危及所携带的涉密载体安全的紧急情况时，要立即销毁所携带的涉密载体，并及时向单位保密管理部门报告。
						</p>
						<p align="left">
							8.发生泄密问题要立即采取补救措施，并及时向保密管理部门报告。
						</p>
						<p align="left">
							9.外宾来访，我方人员应全程陪同外宾，并监督其不得在建筑物、园区内外随意活动，未经保密管理部门许可，外宾不得拍照、录像，不得摘抄、复制存留资料。
						</p>
					</td>
				</tr>
				<tr>
					<td rowspan="5">
						接受保密提醒人员签字
					</td>
					<td colspan="6">
						本人已知悉以上保密提醒内容，并会在参加
						<input type="text" name="datefrom" id="datefrom" isnull="no"
							dorder="1" dtype="date(yyyy-MM-dd)" mes="起始日期不能为空" width="10px"/>
						至
						<input type="text" name="dateend" id="dateend" isnull="no"
							dorder="2" dtype="date(yyyy-MM-dd)" mes="结束日期不能为空" width="10px"/>
						的
						<input type="text" name="activename" id="activename" isnull="no"
							dorder="3" mes="活动名称不能为空" size="20" />
						（涉外活动名称） 活动中严格遵照执行，履行保守国家秘密的义务。
					</td>
				</tr>
				<tr>
					<td>
						部门
					</td>
					<td>
						签字
					</td>
					<td>
						部门
					</td>
					<td>
						签字
					</td>
					<td>
						部门
					</td>
					<td>
						签字
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="deptname1" id="deptname1"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign1" id="sign1"  />
					</td>
					<td>
						<input type="text" name="deptname2" id="deptname2"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign2" id="sign2"  />
					</td>
					<td>
						<input type="text" name="deptname3" id="deptname3"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign3" id="sign3"  />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="deptname4" id="deptname4"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign4" id="sign4"  />
					</td>
					<td>
						<input type="text" name="deptname5" id="deptname5"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign5" id="sign5"  />
					</td>
					<td>
						<input type="text" name="deptname6" id="deptname6"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign6" id="sign6"  />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="deptname7" id="deptname7"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign7" id="sign7"  />
					</td>
					<td>
						<input type="text" name="deptname8" id="deptname8"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign8" id="sign8"  />
					</td>
					<td>
						<input type="text" name="deptname9" id="deptname9"  size="20" />
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="sign9" id="sign9"  />
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						部门确认
					</td>
					<td colspan="6">
						承办部门确认：<textarea rows="3" name="applydeptopinion" id="applydeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="applydept" id="applydept" isnull="no" dorder="5" mes="请承办部门签字" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						保密管理部门确认：<textarea rows="3" name="secdept" id="secdept"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="secdeptsign" id="secdeptsign" isnull="no" dorder="6" mes="请保密管理部门签字" />
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
