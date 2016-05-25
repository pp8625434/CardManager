
function add_telltaleRecord(){
	var para = pageInfo();
	var str = ctx+"/telltalerecord/telltaleRecordAdd.action";
	parent.addTab("新增系统失泄密记录",str,"icon icon-nav");
}

function info_telltaleRecord(id){
	var para = pageInfo();
	parent.addTab("系统失泄密记录详情",ctx+"/telltalerecord/telltaleRecordInfo.action?telltaleRecord.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_telltaleRecord() {
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
			document.getElementById("formSearch").action = ctx + "/telltalerecord/telltaleRecordDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_telltaleRecord(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该记录吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/telltalerecord/telltaleRecordDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}