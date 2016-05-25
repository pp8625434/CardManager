//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_sysAuthorAlter(){
	var para = pageInfo();
	var str = ctx+"/sysauthoralter/sysAuthorAlterAdd.action";
	parent.addTab("新增应用系统权限变更内容",str,"icon icon-nav");
}

function info_sysAuthorAlter(id){
	var para = pageInfo();
	parent.addTab("应用系统权限变更内容详情",ctx+"/sysauthoralter/sysAuthorAlterInfo.action?sysAuthorAlter.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_sysAuthorAlter() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个内容!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中内容吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/sysauthoralter/sysAuthorAlterDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_sysAuthorAlter(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该内容吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/sysauthoralter/sysAuthorAlterDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}