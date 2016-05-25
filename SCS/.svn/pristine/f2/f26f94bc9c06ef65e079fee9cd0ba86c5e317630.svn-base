//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_cooperationCheck(){
	var para = pageInfo();
	var str = ctx+"/cooperationcheck/cooperationCheckAdd.action";
	parent.addTab("新增涉密协作配套单位保密监督检查表（样本）",str,"icon icon-nav");
}

function info_cooperationCheck(id){
	var para = pageInfo();
	parent.addTab("涉密协作配套单位保密监督检查表（样本）详情",ctx+"/cooperationcheck/cooperationCheckInfo.action?cooperationCheck.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_cooperationCheck() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个检查表!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中检查表吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/cooperationcheck/cooperationCheckDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_cooperationCheck(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该检查表吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/cooperationcheck/cooperationCheckDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}