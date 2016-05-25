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
			
			/**
			function a(id,content){					
				var chk_value =[];
				var tempstr = "input[id="+id+"]:checked";
				$(tempstr).each(function(){
					chk_value.push($(this).val());
				});
				if(chk_value.indexOf('12') != -1){	//12为枚举其他的id
					if($("#"+content).text() == ''){
						showErrCss($("#"+content),'请填写其他内容');
					}
				}
			}
			*/
			
			function onForm_Submits(){
				//id为包含其他选框的id,content为其他文本id
				var id,content;
				var chk_value =[];
				var tempstr = "input[id="+id+"]:checked";
				$(tempstr).each(function(){
					chk_value.push($(this).val());
				});
				if(chk_value.indexOf('12') != -1){	//12为枚举其他的id
					if($("#"+content).text() == ''){
						showErrCss($("#"+content),'请填写其他内容');
						return false;
					}
				}
			}
		</script>
		
	</head>

	<body>
		<form id="testForm" action="asdasdas" onsubmit="onForm_Submits();">
			<table width="100%" class="bordered">
				<caption>
					设备接入/退出涉密信息系统审批表
				</caption>
				<tr>
					<td width="11%">
						申请人
					</td>
					<td colspan="2">
						<input type="text" name="sqr" id="sqr" isnull="no" dorder="1"  mes="申请人不能空" size="20"/>
					</td>
					<td width="10%">
						电话
					</td>
					<td colspan="2">
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="2"  mes="电话不能为空" size="20"/>
					</td>
					<td width="10%">
						申请日期
					</td>
					<td width="16%" colspan="2">
						<input type="text" name="sqrq" id="sqrq" isnull="no" dorder="3" dtype="date(yyyy-MM-dd)" mes="申请日期不能为空" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						申请人类别
					</td>
					<td colspan="7">
						<hi:select type="radio" emu="page_27_applyerstyle" name="applerstyle" id="applerstyle" isnull="no"  dorder="4" mes="请选择申请人类别" />
						<input type="text" name="sqrlbqtcontent" id="sqrlbqtcontent"  />
					</td>
				</tr>
				<tr>
					<td>
						类型
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="page_27_devoperatstyle" name="devoperatstyle" id="devoperatstyle" isnull="no" dorder="6" mes="请选择类型" />
					</td>
					<td width="11%">
						申请人密级
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="page_27_applyersecurity" name="applyersecurity" id="applyersecurity" isnull="no" dorder="7" mes="请选择申请人密级" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						所在部门及处室
					</td>
					<td colspan="7">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="8"  mes="所在部门及处室不能为空" />
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						设备基本情况
					</td>
					<td width="9%">
						设备类型
					</td>
					<td colspan="7">
						<hi:select type="checkbox" emu="page_27_devstyle" name="devstyle" id="devstyle" isnull="no"  dorder="9" mes="请选择设备类型" />
					</td>
				</tr>
				<tr>
					<td>
						设备编号
					</td>
					<td colspan="3">
						<input type="text" name="devnum" id="devnum" isnull="no" dorder="10"  mes="设备编号不能为空" />
					</td>
					<td width="10%">
						硬盘序列号
					</td>
					<td colspan="3">
						<input type="text" name="disknum" id="disknum" isnull="no" dorder="11"  mes="硬盘序列号不能为空" />
					</td>
				</tr>
				<tr>
					<td >
						设备密级
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="page_27_devsecurity" name="devsecurity" id="devsecurity" isnull="no" dorder="12" mes="请选择设备密级" />
					</td>
					<td>
						存放地点
					</td>
					<td colspan="3">
						<input type="text" name="storeplace" id="storeplace" isnull="no" dorder="13"  mes="存放地点不能为空" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						申请人申请开通（退出）系统名称
					</td>
					<td colspan="7">
						<hi:select type="checkbox" emu="page_27_openoroutsys" name="openoroutsys" id="openoroutsys"  isnull="no" dorder="14" mes="请选择系统名称" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						申请接入原因
					</td>
					<td colspan="7">
						<hi:select type="radio" emu="page_27_applyinreasion" name="applyinreasion" id="applyinreasion"  isnull="no" dorder="15" mes="请选择接入原因" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						申请退出原因
					</td>
					<td colspan="7">
						<hi:select type="radio" emu="page_27_applyoutreasion" name="applyoutreasion" id="applyoutreasion"  isnull="no" dorder="16" mes="请选择退出原因" />
					</td>
				</tr>
				<tr>
					<td colspan="2" rowspan="2">
						申请部门意见
					</td>
					<td colspan="7">
						<textarea rows="3" name="applydeptopinion" id="applydeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td width="10%">
						签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="applydeptsign" id="applydeptsign" isnull="no" dorder="17" mes="请签字" />
					</td>
				</tr>
				<tr>
					<td colspan="2" rowspan="2">
						信息化管理部门意见
					</td>
					<td colspan="7">
						<textarea rows="3" name="infodeptopinion" id="infodeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="infodeptsign" id="infodeptsign" isnull="no" dorder="18" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" rowspan="2">
						设备移交情况
					</td>
					<td>
						设备负责人签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="devprincipalsign" id="devprincipalsign" isnull="no" dorder="19" mes="请签字"/>
					</td>
					<td>
						接收人签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="recipienty" id="recipienty" isnull="no" dorder="20" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="7">
						注：设备负责人负责将设备要素更新情况通知本部门台账管理人员。
					</td>
				</tr>
				<tr>
					<td colspan="9">
						以下部分由操作人员填写
					</td>
				</tr>
				<tr>
					<td colspan="2" rowspan="3">
						存储介质信息清除、拆除、设备移交情况
					</td>
					<td colspan="2">
						是否已完成信息清除
					</td>
					<td width="15%">
						<hi:select type="radio" emu="yesOrNo" name="infoclear" id="infoclear" isnull="no" dorder="21" mes="是否已完成信息清除"/>
					</td>
					<td colspan="2">
						是否已拆除存储固件
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="dismantledisk" id="dismantledisk" isnull="no" dorder="22" mes="是否已拆除存储固件"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						设备是否移交
					</td>
					<td colspan="5">
						<hi:select type="radio" emu="yesOrNo" name="transfer" id="transfer" isnull="no" dorder="23" mes="设备是否移交"/>
					</td>
				</tr>
				<tr>
					<td>
						操作人签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="operatersign" id="operatersign" isnull="no" dorder="24" mes="请签字"/>
					</td>
					<td>
						接收人签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="tranrecipient" id="tranrecipient" isnull="no" dorder="25" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="5">
						开通（关闭）账户操作结果
					</td>
					<td colspan="2">
						分配(关闭)的IP地址
					</td>
					<td colspan="6">
						<input type="text" name="ipaddress" id="ipaddress" />
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						交换机操作：
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="openOrClose" name="tranoperate" id="tranoperate" />
					</td>
					<td>
						签字
					</td>
					<td colspan="3">
						<hi:select type="radio" emu="yesNo" name="transign" id="transign" isnull="no" dorder="26" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="checkbox" name="OA" id="OA" />OA
					</td>
					<td colspan="2">
						操作人签字
					</td>
					<td colspan="4">
						<hi:select type="radio" emu="yesNo" name="oasigny" id="oasigny" isnull="no" dorder="27" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						<hi:select type="checkbox" emu="page_27_openAccountResult" name="openAccountResult" id="openAccountResult" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						操作人签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="resultsign" id="resultsign" isnull="no" dorder="28" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td rowspan="4">
						信息档案部资产管理人员
					</td>
					<td colspan="6">
						台账是否更新
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="isupdate" id="isupdate" isnull="no" dorder="29" mes="台账是否更新"/>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						是否将台账信息告知申请人部门台账管理员
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="isinform" id="isinform" isnull="no" dorder="30" mes="是否将台账信息告知申请人部门台账管理员"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						是否到保密管理部门备案
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="isrecord" id="isrecord" isnull="no" dorder="31" mes="是否到保密管理部门备案"/>
					</td>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="deptrecord" id="deptrecord" isnull="no" dorder="32" mes="请签字"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						签字
					</td>
					<td colspan="6">
						<hi:select type="radio" emu="yesNo" name="managersign" id="managersign" isnull="no" dorder="33" mes="请签字"/>
					</td>
				</tr>
				<tr><td colspan="9">注：1、申请部门负责对申请人员的密级进行确定；2、此表交由信息化管理部门存档。</td></tr>
			</table>
			<input type="submit" value="提交"/>
		</form>
	</body>
</html>