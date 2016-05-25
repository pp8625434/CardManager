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
					外来人员维修、送外维修审批表
				</caption>
				<tr>
					<td width="20%">
						申请人
					</td>
					<td width="16%">
						<input type="text" name="sqr" id="sqr" isnull="no" dorder="1"  mes="申请人不能空" size="20"/>
					</td>
					<td width="16%">
						设备责任人
					</td>
					<td width="16%">
						<input type="text" name="devprin" id="devprin" isnull="no" dorder="2"  mes="设备责任人不能空" size="20"/>
					</td>
					<td width="16%">
						维修方式
					</td>
					<td width="16%">
						<hi:select type="radio" emu="page_38_maintainType" name="maintainType" id="maintainType" isnull="no" dorder="3"  mes="请选择维修方式" />
					</td>
				</tr>
				<tr>
					<td>
						设备编号
					</td>
					<td colspan="2">
						<input type="text" name="devnum" id="devnum" isnull="no" dorder="4"  mes="设备编号不能为空" />
					</td>
					<td>
						设备密级
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="page_27_devsecurity" name="devsecurity" id="devsecurity" isnull="no" dorder="5" mes="请选择设备密级" />
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						外来人员维修涉密设备
					</td>
					<td colspan="2">
						外来人员单位
					</td>
					<td colspan="3">
						<input type="text" name="outpdept" id="outpdept"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否与外来人员单位签订保密协议
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="iswithoutsign" id="iswithoutsign" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否有相关资质
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="iswithoutzz" id="iswithoutzz" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						拟定旁站陪同人
					</td>
					<td colspan="3">
						<input type="text" name="ndpzptr" id="ndpzptr"  />
					</td>
				</tr>
				<tr>
					<td rowspan="5">
						送外维修涉密设备
					</td>
					<td colspan="2">
						送外单位
					</td>
					<td colspan="3">
						<input type="text" name="sendoutdept" id="sendoutdept"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否拆除存储介质和固件
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="isremovedisk" id="isremovedisk" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否与外送单位签订保密协议
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="issendoutxy" id="issendoutxy" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送外单位是否具有相关资质
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesOrNo" name="issendoutzz" id="issendoutzz" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						拟定送修人
					</td>
					<td colspan="3">
						<input type="text" name="ndsender" id="ndsender"  />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="5">
						<textarea rows="3" name="infodeptopinion" id="infodeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="infosign" id="infosign" isnull="no" dorder="6" mes="请信息化管理部门签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						送外维修涉密设备情况
					</td>
					<td colspan="2">
						设备使用人移交设备签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="transersign" id="transersign" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送修人接收签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="sendersign" id="sendersign" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送修时间
					</td>
					<td colspan="3">
						<input type="text" name="senddate" id="senddate"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						返回时间
					</td>
					<td colspan="3">
						<input type="text" name="returndate" id="returndate"  dtype="date(yyyy-MM-dd HH:mm)"  />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						是否与外来人员或送外维修单位人员签订保密协议
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesOrNo" name="issingsec" id="issingsec" isnull="no" dorder="7" mes="是否与外来人员或送外维修单位人员签订保密协议"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						故障原因
					</td>
					<td colspan="4">
						<textarea rows="3" name="faultreasion" id="faultreasion"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修过程和方法
					</td>
					<td colspan="4">
						<textarea rows="3" name="promethod" id="promethod"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修结果
					</td>
					<td colspan="4">
						<textarea rows="3" name="mainreuslt" id="mainreuslt" isnull="no" dorder="9" mes="请填写维修结果"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						维修人员签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="maintainersign" id="maintainersign" isnull="no" dorder="10" mes="请维修人员签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						旁站陪同人员签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="pzptsign" id="pzptsign" isnull="no" dorder="11" mes="请旁站陪同人员签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						送外维修涉密设备交接情况
					</td>
					<td colspan="2">
						设备使用人接收设备签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="userrecsign" id="userrecsign" isnull="no" dorder="12" mes="请设备使用人签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						送修人移交设备签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="sendtranser" id="sendtranser" isnull="no" dorder="13" mes="请送修人签字"/>
					</td>
				</tr>
				<tr>
					<td>
						备注
					</td>
					<td colspan="5">
						<textarea rows="3" name="remark" id="remark"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
