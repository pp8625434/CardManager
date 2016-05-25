function add_classifiedprint(){
	parent.addTab("新增涉密信息打印输出审批登记",ctx+"/classifiedprint/classifiedprintEdit.action","icon icon-nav");
}
function edit_classifiedprint(id){
	var para = pageInfo();
	var str = ctx+"/classifiedprint/classifiedprintEdit.action?classifiedprint.id="+id+"&"+para;
	parent.addTab("编辑涉密信息打印输出审批登记",str,"icon icon-nav");
}
function classifiedprint_info(id){
	var para = pageInfo();
	var str = ctx+"/classifiedprint/classifiedprintInfo.action?classifiedprint.id="+id+"&"+para;
	parent.addTab("查看涉密信息打印输出审批登记",str,"icon icon-nav");
}
function saveClassifiedprint(){
	$j("#formSearch").submit();
}
function del_classifiedprint(id){
	parent.$.messager.confirm('友情提示','您确定要删除该涉密信息打印输出审批登记吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/classifiedprint/delClassifiedprint.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_classifiedprint(){
	var obj = document.getElementsByName("orderId");
	var lids = "";
	if(formSearch.orderId.length == undefined){
		if(formSearch.orderId.checked == true){
			lids = formSearch.orderId.value;
		}
	}else{
		for(var i =0;i<obj.length;i++){
			if(obj[i].checked == true){
				lids = lids +","+obj[i].value;
			}
		}
	}
	if(lids.length == 0){
		parent.$.messager.alert('友情提示','请至少选择一个涉密信息打印输出审批登记','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的涉密信息打印输出审批登记',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/classifiedprint/delClassifiedprint.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}