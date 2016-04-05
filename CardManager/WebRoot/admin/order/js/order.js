function selectProject(){
	window.open(ctx+"/merchant/merchantList.action?lookup=1", 'anyname' , 'width=1300,height=735,scrollbars=yes');	
}

function setProjectvalue(id,mname){
	$j("#mid").val(id);
	$j("#mname").val(mname);
}

function clearMerchant(){
	$j("#mid").val("");
	$j("#mname").val("");
}

function clearOrgin(){
	$j("#orgid").val("");
	$j("#orgname").val("");
}

function order_info(id){
	var para = pageInfo();
	parent.addTab("订单详情",ctx+"/order/orderInfo.action?order.id="+id+"&"+para,"icon icon-nav");		
}

$j(document).ready(function(){
	var startDate = $j("#startDate").val();
	var endDate = $j("#endDate").val();
	if(startDate > endDate){
		parent.$.messager.alert('友情提示', '开始时间不能大于结束时间！', 'info');
		return false;
	}
	if($j("#orgid").val()!=""){
		$.ajax({
			type: "POST",
			url: ctx+"/organization/getOrganizationById.action",
			data: {"otagid":$j("#orgid").val()},
			async: false,
			success: function(data){
				$j("#orgname").html(data);
			}
		}); 
	}
});
