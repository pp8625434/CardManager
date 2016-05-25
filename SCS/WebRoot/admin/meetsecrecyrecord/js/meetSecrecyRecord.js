//包含‘其他’选项时的提交验证
function onForm_Submits(){
	
}
function add_meetSecrecyRecord(){
	var para = pageInfo();
	var str = ctx+"/meetsecrecyrecord/meetSecrecyRecordAdd.action";
	parent.addTab("新增涉密会议保密方案执行情况记录",str,"icon icon-nav");
}

function info_meetSecrecyRecord(id){
	var para = pageInfo();
	parent.addTab("涉密会议保密方案执行情况记录详情",ctx+"/meetsecrecyrecord/meetSecrecyRecordInfo.action?meetSecrecyRecord.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_meetSecrecyRecord() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个记录!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中记录吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/meetsecrecyrecord/meetSecrecyRecordDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_meetSecrecyRecord(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该记录吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/meetsecrecyrecord/meetSecrecyRecordDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}