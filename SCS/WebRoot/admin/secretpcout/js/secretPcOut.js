//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function edit_secretPcOut(id){
	var para = pageInfo();
	var str = ctx+"/secretpcout/secretPcOutAdd.action?secretPcOut.id="+id+"&"+para;
	parent.addTab("编辑借用专供外出携带涉密便携式计算机审批",str,"icon icon-nav");
}
function add_secretPcOut(){
	var para = pageInfo();
	var str = ctx+"/secretpcout/secretPcOutAdd.action";
	parent.addTab("新增借用专供外出携带涉密便携式计算机审批",str,"icon icon-nav");
}

function info_secretPcOut(id){
	var para = pageInfo();
	parent.addTab("借用专供外出携带涉密便携式计算机审批详情",ctx+"/secretpcout/secretPcOutInfo.action?secretPcOut.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_secretPcOut() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个审批!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中审批吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/secretpcout/secretPcOutDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_secretPcOut(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该审批吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/secretpcout/secretPcOutDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}