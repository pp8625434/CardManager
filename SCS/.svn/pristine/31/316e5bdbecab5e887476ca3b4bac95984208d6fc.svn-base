//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_divulgeSecret(){
	var para = pageInfo();
	var str = ctx+"/divulgesecret/divulgeSecretAdd.action";
	parent.addTab("新增泄密事件报告登记",str,"icon icon-nav");
}

function info_divulgeSecret(id){
	var para = pageInfo();
	parent.addTab("泄密事件报告登记详情",ctx+"/divulgesecret/divulgeSecretInfo.action?divulgeSecret.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_divulgeSecret() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个登记!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中登记吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/divulgesecret/divulgeSecretDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_divulgeSecret(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该登记吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/divulgesecret/divulgeSecretDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}