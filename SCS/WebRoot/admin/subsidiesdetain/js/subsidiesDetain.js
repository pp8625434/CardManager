//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_subsidiesDetain(){
	var para = pageInfo();
	var str = ctx+"/subsidiesdetain/subsidiesDetainAdd.action";
	parent.addTab("新增保密补贴扣发通知单（保密办留存）",str,"icon icon-nav");
}

function info_subsidiesDetain(id){
	var para = pageInfo();
	parent.addTab("保密补贴扣发通知单（保密办留存）详情",ctx+"/subsidiesdetain/subsidiesDetainInfo.action?subsidiesDetain.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_subsidiesDetain() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个通知单!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中通知单吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/subsidiesdetain/subsidiesDetainDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_subsidiesDetain(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该通知单吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/subsidiesdetain/subsidiesDetainDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}