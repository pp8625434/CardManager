//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_deviceIoSys(){
	var para = pageInfo();
	var str = ctx+"/deviceiosys/deviceIoSysAdd.action";
	parent.addTab("新增设备接入/退出涉密信息系统审批",str,"icon icon-nav");
}

function info_deviceIoSys(id){
	var para = pageInfo();
	parent.addTab("设备接入/退出涉密信息系统审批详情",ctx+"/deviceiosys/deviceIoSysInfo.action?deviceIoSys.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_deviceIoSys() {
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
			document.getElementById("formSearch").action = ctx + "/deviceiosys/deviceIoSysDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_deviceIoSys(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该审批吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/deviceiosys/deviceIoSysDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}