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
			<table width="100%" class="bordered">
				<caption>
					存储介质配备审批表
				</caption>
				<tr>
					<td width="15%">
						编号
					</td>
					<td colspan="7">
						<input type="text" name="num" id="num" isnull="no" dorder="1"  mes="编号不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						申请日期
					</td>
					<td colspan="2">
						<input type="text" name="applydate" id="applydate"  dtype="date(yyyy-MM-dd)"  isnull="no" dorder="2"  mes="申请日期不能为空" />
					</td>
					<td width="10%">
						申请部门
					</td>
					<td colspan="2">
						<input type="text" name="applydept" id="applydept" isnull="no" dorder="3"  mes="申请部门不能为空" size="50"/>
					</td>
					<td width="10%">
						保管人
					</td>
					<td width="20%">
						<input type="text" name="protecter" id="protecter" isnull="no" dorder="4"  mes="保管人不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						拟配备存储介质情况
					</td>
				</tr>
				<tr>
					<td>
						序号
					</td>
					<td width="10%">
						类别
					</td>
					<td width="10%">
						规格
					</td>
					<td>
						涉密级别
					</td>
					<td width="15%">
						数量
					</td>
					<td width="10%">
						认证类型
					</td>
					<td colspan="2">
						适用范围
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="nindex1" id="nindex1" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="ntype1" id="ntype1" size="50"/>
					</td>
					<td>
						<input type="text" name="nguige1" id="nguige1" size="50"/>
					</td>
					<td>
						<input type="text" name="nsecclass1" id="nsecclass1" size="20"/>
					</td>
					<td>
						<input type="text" name="nnumber1" id="nnumber1" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="nrentype1" id="nrentype1" size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="nscope1" id="nscope1" size="100"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="nindex2" id="nindex2" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="ntype2" id="ntype2" size="50"/>
					</td>
					<td>
						<input type="text" name="nguige2" id="nguige2" size="50"/>
					</td>
					<td>
						<input type="text" name="nsecclass2" id="nsecclass2" size="20"/>
					</td>
					<td>
						<input type="text" name="nnumber2" id="nnumber2" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="nrentype2" id="nrentype2" size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="nscope2" id="nscope2" size="100"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="nindex3" id="nindex3" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="ntype3" id="ntype3" size="50"/>
					</td>
					<td>
						<input type="text" name="nguige3" id="nguige3" size="50"/>
					</td>
					<td>
						<input type="text" name="nsecclass3" id="nsecclass3" size="20"/>
					</td>
					<td>
						<input type="text" name="nnumber3" id="nnumber3" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="nrentype3" id="nrentype3" size="20"/>
					</td>
					<td colspan="2">
						<input type="text" name="nscope3" id="nscope3" size="100"/>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						<div align="left">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							我保证申请配备的存储介质完全是因为工作需要，在使用中严格遵守国家安全保密法律法规和院安全保密管理规定，自觉履行保密义务，承担保密责任；
							严格遵循“上网不涉密、涉密不上网”的原则，即不使用接入国际互联网的存储介质处理涉密信息、不使用涉密存储介质接入国际互联网和公共信息网络，
							严格做到完全物理隔离；因违规使用存储介质造成泄密隐患的，本人负责承担一切法律责任，按规定接受处罚。
						</div>
					</td>
				</tr>
				<tr>
					<td>
						责任人签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="princeil" id="princeil" isnull="no" dorder="5" mes="请负责人签字"/>
					</td>
					<td colspan="1">
						日期
					</td>
					<td colspan="3">
						<input type="text" name="prindate" id="prindate"  dtype="date(yyyy-MM-dd)"  isnull="no" dorder="6"  mes="日期不能为空" />
					</td>
				</tr>
				<tr>
					<td>
						部门领导意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="deptopinion" id="deptopinion"></textarea>
					</td>
					<td>
						保密委员会办公室意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="secopinion" id="secopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						以下信息领用时填写
					</td>
				</tr>
				<tr>
					<td>
						序号
					</td>
					<td>
						类别
					</td>
					<td>
						型号规格
					</td>
					<td>
						保密编号
					</td>
					<td>
						产品序列号
					</td>
					<td>
						认证类别
					</td>
					<td>
						认证范围
					</td>
					<td>
						领取人签字
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="index1" id="index1" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="type1" id="type1" size="50"/>
					</td>
					<td>
						<input type="text" name="guige1" id="guige1" size="50"/>
					</td>
					<td>
						<input type="text" name="secnum1" id="secnum1" size="50"/>
					</td>
					<td>
						<input type="text" name="proindex1" id="proindex1" size="50"/>
					</td>
					<td>
						<input type="text" name="rztype1" id="rztype1" size="50"/>
					</td>
					<td>
						<input type="text" name="rzscope1" id="rzscope1" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="recsign1" id="recsign1" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="index2" id="index2" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="type2" id="type2" size="50"/>
					</td>
					<td>
						<input type="text" name="guige2" id="guige2" size="50"/>
					</td>
					<td>
						<input type="text" name="secnum2" id="secnum2" size="50"/>
					</td>
					<td>
						<input type="text" name="proindex2" id="proindex2" size="50"/>
					</td>
					<td>
						<input type="text" name="rztype2" id="rztype2" size="50"/>
					</td>
					<td>
						<input type="text" name="rzscope2" id="rzscope2" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="recsign2" id="recsign2" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="index3" id="index3" dtype="number" size="11"/>
					</td>
					<td>
						<input type="text" name="type3" id="type3" size="50"/>
					</td>
					<td>
						<input type="text" name="guige3" id="guige3" size="50"/>
					</td>
					<td>
						<input type="text" name="secnum3" id="secnum3" size="50"/>
					</td>
					<td>
						<input type="text" name="proindex3" id="proindex3" size="50"/>
					</td>
					<td>
						<input type="text" name="rztype3" id="rztype3" size="50"/>
					</td>
					<td>
						<input type="text" name="rzscope3" id="rzscope3" size="50"/>
					</td>
					<td>
						<hi:select type="radio" emu="yesNo" name="recsign3" id="recsign3" />
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
