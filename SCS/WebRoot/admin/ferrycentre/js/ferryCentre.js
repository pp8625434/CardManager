//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function edit_ferryCentre(id){
	var para = pageInfo();
	var str = ctx+"/ferrycentre/ferryCentreAdd.action?ferryCentre.id="+id+"&"+para;
	parent.addTab("编辑建立摆渡中心申请",str,"icon icon-nav");
}
function add_ferryCentre(){
	var para = pageInfo();
	var str = ctx+"/ferrycentre/ferryCentreAdd.action";
	parent.addTab("新增建立摆渡中心申请",str,"icon icon-nav");
}

function info_ferryCentre(id){
	var para = pageInfo();
	parent.addTab("建立摆渡中心申请详情",ctx+"/ferrycentre/ferryCentreInfo.action?ferryCentre.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_ferryCentre() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个申请!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中申请吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/ferrycentre/ferryCentreDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_ferryCentre(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该申请吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/ferrycentre/ferryCentreDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}