//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_devicePurchase(){
	var para = pageInfo();
	var str = ctx+"/devicepurchase/devicePurchaseAdd.action";
	parent.addTab("新增年度设备购置需求",str,"icon icon-nav");
}

function info_devicePurchase(id){
	var para = pageInfo();
	parent.addTab("年度设备购置需求详情",ctx+"/devicepurchase/devicePurchaseInfo.action?devicePurchase.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_devicePurchase() {
	var obj = document.getElementsByName("orderId");
	var idString = "";
	if (formSearch.orderId.length == undefined) {
		if (formSearch.orderId.checked == true) {
			idString = formSearch.orderId.value;
		}
	} else {
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked == true) {
				idString = idString + "," + obj[i].value;
			}
		}
	}
	if (idString.length == 0) {
		parent.$.messager.alert("友情提示", "请至少选中一个需求!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中需求吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/devicepurchase/devicePurchaseDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_devicePurchase(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该需求吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/devicepurchase/devicePurchaseDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}