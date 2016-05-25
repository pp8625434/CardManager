//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_confidentiality(){
	var para = pageInfo();
	var str = ctx+"/confidentiality/confidentialityAdd.action";
	parent.addTab("新增保密责任书",str,"icon icon-nav");
}

function info_confidentiality(id){
	var para = pageInfo();
	parent.addTab("保密责任书详情",ctx+"/confidentiality/confidentialityInfo.action?confidentiality.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_confidentiality() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个责任书!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中责任书吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/confidentiality/confidentialityDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_confidentiality(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该责任书吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/confidentiality/confidentialityDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}