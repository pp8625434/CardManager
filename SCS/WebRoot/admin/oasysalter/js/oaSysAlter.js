//包含‘其他’选项时的提交验证
function onForm_Submits(){

}

function edit_oaSysAlter(id){
	var para = pageInfo();
	var str = ctx+"/oasysalter/oaSysAlterAdd.action?oaSysAlter.id="+id+"&"+para;
	parent.addTab("编辑应用系统入网审批",str,"icon icon-nav");
}

function add_oaSysAlter(){
	var para = pageInfo();
	var str = ctx+"/oasysalter/oaSysAlterAdd.action";
	parent.addTab("新增应用系统入网审批",str,"icon icon-nav");
}

function info_oaSysAlter(id){
	var para = pageInfo();
	parent.addTab("应用系统入网审批详情",ctx+"/oasysalter/oaSysAlterInfo.action?oaSysAlter.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_oaSysAlter() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个变更单!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中变更单吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/oasysalter/oaSysAlterDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_oaSysAlter(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该变更单吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/oasysalter/oaSysAlterDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}
