//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_depsecCheck(){
	var para = pageInfo();
	var str = ctx+"/depseccheck/depsecCheckAdd.action";
	parent.addTab("新增部门保密工作自查",str,"icon icon-nav");
}

function info_depsecCheck(id){
	var para = pageInfo();
	parent.addTab("部门保密工作自查详情",ctx+"/depseccheck/depsecCheckInfo.action?depsecCheck.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_depsecCheck() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个自查!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中自查吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/depseccheck/depsecCheckDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_depsecCheck(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该自查吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/depseccheck/depsecCheckDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}