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
					开通/撤销互联网账号审批表
				</caption>
				<tr>
					<td width="25%">
						申请人
					</td>
					<td width="25%">
						<input type="text" name="applyer" id="applyer" isnull="no" dorder="1"  mes="申请人不能为空" size="20"/>
					</td>
					<td width="25%">
						所在部门/单位
					</td>
					<td width="25%">
						<input type="text" name="deptname" id="deptname" isnull="no" dorder="2"  mes="所在部门/单位不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						外网实名用户名单（可附表）
					</td>
					<td>
						<input type="text" name="userlist" id="userlist" isnull="no" dorder="3"  mes="外网实名用户名单不能为空" size="20"/>
					</td>
					<td>
						联系人联系电话
					</td>
					<td>
						<input type="text" name="telephone" id="telephone" isnull="no" dorder="4"  mes="联系人联系电话不能为空" size="20"/>
					</td>
				</tr>
				<tr>
					<td>
						开通/撤销原因
					</td>
					<td colspan="3">
						<textarea rows="3" name="applyreasion" id="applyreasion"></textarea>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						申请部门/单位意见
					</td>
					<td colspan="3">
						<textarea rows="3" name="applydeptopinion" id="applydeptopinion"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="applydept" id="applydept" isnull="no" dorder="5" mes="请申请部门/单位签字" />
					</td>
				</tr>
				<tr>
					<td>
						责任告知书
					</td>
					<td colspan="3">
						<p align="left">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							中国航天科技集团公司第九院永丰基地园区国际互联网出口已采用实名审计，登录互联网请自觉遵守如下规定：
						</p>
						<p align="left">
							一、遵守国家、集团公司和院本部有关互联网上网保密管理规定和法律法规；
						</p>
						<p align="left">
							二、使用公共上网机时严格按照要求做好登记，使用完成后应立即登出管理网关；
						</p>
						<p align="left">
							三、不准在互联网计算机中处理、存储涉密信息及办公事务；
						</p>
						<p align="left">
							四、不准连接涉密移动存储介质、光盘等涉密载体；
						</p>
						<p align="left">
							五、未经审批不得通过上网机向国际互联网发布信息（含邮件）；
						</p>
						<p align="left">
							六、在涉密场所内的上网机不得外接多媒体设备或开启多媒体设备功能；
						</p>
						<p align="left">
							七、因互联网使用人工作变动，责任部门应及时通知信息档案部撤销该使用人的上网账户。
						</p>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						责任人签字
					</td>
					<td colspan="3">
						本人已阅读并了解上述条款的含义，保证遵守上述条款的约束，并保证将此保密责任书内容传达到每一个使用该上网计算机的人员，并承担监督检查及时报告的责任。
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="zrrsign" id="zrrsign" isnull="no" dorder="6" mes="请责任人签字" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						操作记录情况
					</td>
					<td>
						是否完成开通（撤销）申请账号
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesOrNo" name="isupdate" id="isupdate" isnull="no" dorder="9" mes="是否完成开通（撤销）申请账号"/>
					</td>
				</tr>
				<tr>
					<td>
						签字
					</td>
					<td colspan="2">
						<hi:select type="radio" emu="yesNo" name="opsign" id="opsign" isnull="no" dorder="10" mes="请签字" />
					</td>
				</tr>
			</table>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
