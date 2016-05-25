//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_deviceInfo(){
	var para = pageInfo();
	var str = ctx+"/deviceinfo/deviceInfoAdd.action";
	parent.addTab("新增设备购置明细",str,"icon icon-nav");
}

function info_deviceInfo(id){
	var para = pageInfo();
	parent.addTab("设备购置明细详情",ctx+"/deviceinfo/deviceInfoInfo.action?deviceInfo.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_deviceInfo() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个明细!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中明细吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/deviceinfo/deviceInfoDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_deviceInfo(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该明细吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/deviceinfo/deviceInfoDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}