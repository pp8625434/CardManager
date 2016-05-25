//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_promise(){
	var para = pageInfo();
	var str = ctx+"/promise/promiseAdd.action";
	parent.addTab("新增保密承诺书",str,"icon icon-nav");
}

function info_promise(id){
	var para = pageInfo();
	parent.addTab("保密承诺书详情",ctx+"/promise/promiseInfo.action?promise.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_promise() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个承诺书!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中承诺书吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/promise/promiseDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_promise(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该承诺书吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/promise/promiseDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}