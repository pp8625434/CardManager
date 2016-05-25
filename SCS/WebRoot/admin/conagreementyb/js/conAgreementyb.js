//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_conAgreementyb(){
	var para = pageInfo();
	var str = ctx+"/conagreementyb/conAgreementybAdd.action";
	parent.addTab("新增保密协议书（样本）",str,"icon icon-nav");
}

function info_conAgreementyb(id){
	var para = pageInfo();
	parent.addTab("保密协议书（样本）详情",ctx+"/conagreementyb/conAgreementybInfo.action?conAgreementyb.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_conAgreementyb() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个协议书!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中协议书吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/conagreementyb/conAgreementybDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_conAgreementyb(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该协议书吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/conagreementyb/conAgreementybDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}