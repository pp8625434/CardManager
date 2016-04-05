
//function add_recharge(){
//	var para = pageInfo();
//	var str = ctx+"/recharge/toEditRecharge.action";
//	parent.addTab("新增充值",str,"icon icon-nav");
//}

function onSubEdit(){
	var uid =  $j("#uid").val();
	var money =  $j("#money").val();
	
	if("" == uid){
		parent.$.messager.alert('友情提示', '请先读卡', 'info');
		$j("#cardnum").focus();
		return false;
	}
	
	if("" == money || parseFloat(money) == 0){
		parent.$.messager.alert('友情提示', '充值金额不能为零！', 'info');
		$j("#money").focus();
		return false;
	}
	
	parent.$.messager.confirm("友情提示", "确定要给“"+$j("#name").val()+"”充值“"+$j("#money").val()+"”元吗？", function (r) {
		if (r) {
			document.forms[0].submit();
		}
	});
	
	
}

function readCard(){
	var cardnum =  $j("#cardnum").val();
	
	if("" == cardnum){
		parent.$.messager.alert('友情提示', '卡号不能为空', 'info');
		$j("#cardnum").focus();
		return false;
	}
	$j.ajax({
		async:false,
		url: ctx+"/card/getCardInfoByCardNum.action",
		type: "post", 
		data: {"cardnum":cardnum},
		dataType: 'json',
		success: function(data){
			var obj = $j.parseJSON(data);
			if(obj != null){
				$j("#uid").val(obj.uid);
				$j("#cardnum").val(obj.cardnum);
				$j("#name").val(obj.name);
				$j("#identitycard").val(obj.identitycard);
				$j("#cellphone").val(obj.cellphone);
				
				$j.ajax({
					async:false,
					url: "http://card.easyxiao.com/CardService/getUserCreditJSON.action",
					type: "post", 
					data: {"uid":obj.uid},
					dataType: 'json',
					success: function(data){
						$j("#money1").val(data.money);
						$j("#credit1").val(data.credit);
					}
				});
			}else{
				parent.$.messager.alert('友情提示', '卡号不存在或已停用', 'info');
				$j("#uid").val("");
				$j("#cardnum").val("");
				$j("#name").val("");
				$j("#identitycard").val("");
				$j("#cellphone").val("");
				$j("#cardnum").focus();
				return false;
			}
		}
	});
}

function backRecharge(){
	window.location.href = ctx+"/moneylog/toEditMoneyLog.action";
}

//充值记录
function moneyLog(){
	parent.addTab("充值记录",ctx+"/moneylog/rechargeLog.action","icon icon-nav");		
}

//查询条件验证
function checkCondition(){
	var startMoney =  $j("#startMoney").val();
	var endMoney =  $j("#endMoney").val();
	var startDate =  $j("#startDate").val();
	var endDate =  $j("#endDate").val();
	if("" != startMoney && "" != endMoney && startMoney > endMoney){
		parent.$.messager.alert('友情提示', '起始金额不能大于结束金额！', 'info');
		$j("#startMoney").val("");
		$j("#endMoney").val("");
		return false;
	}
	
	if("" != startDate && "" != endDate && startDate > endDate){
		parent.$.messager.alert('友情提示', '起始时间不能大于结束时间！', 'info');
		$j("#startDate").val("");
		$j("#endDate").val("");
		return false;
	}
	
}