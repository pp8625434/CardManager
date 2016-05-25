//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_meetSecrecy(){
	var para = pageInfo();
	var str = ctx+"/meetsecrecy/meetSecrecyAdd.action";
	parent.addTab("新增本部涉密会议保密管理审批",str,"icon icon-nav");
}

function info_meetSecrecy(id){
	var para = pageInfo();
	parent.addTab("本部涉密会议保密管理审批详情",ctx+"/meetsecrecy/meetSecrecyInfo.action?meetSecrecy.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_meetSecrecy() {
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
			document.getElementById("formSearch").action = ctx + "/meetsecrecy/meetSecrecyDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_meetSecrecy(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该审批吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/meetsecrecy/meetSecrecyDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}