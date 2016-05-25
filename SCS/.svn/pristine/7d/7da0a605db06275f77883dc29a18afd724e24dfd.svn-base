//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_filmingActivity(){
	var para = pageInfo();
	var str = ctx+"/filmingactivity/filmingActivityAdd.action";
	parent.addTab("新增本部拍摄活动审批",str,"icon icon-nav");
}

function info_filmingActivity(id){
	var para = pageInfo();
	parent.addTab("本部拍摄活动审批详情",ctx+"/filmingactivity/filmingActivityInfo.action?filmingActivity.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_filmingActivity() {
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
			document.getElementById("formSearch").action = ctx + "/filmingactivity/filmingActivityDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_filmingActivity(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该审批吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/filmingactivity/filmingActivityDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}