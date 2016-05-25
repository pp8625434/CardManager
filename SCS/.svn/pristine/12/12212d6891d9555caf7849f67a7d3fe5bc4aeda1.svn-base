function add_carrypartmedium(){
	parent.addTab("新增本部存储介质携带外出审批",ctx+"/carrypartmedium/carrypartmediumEdit.action","icon icon-nav");
}
function edit_carrypartmedium(id){
	var para = pageInfo();
	var str = ctx+"/carrypartmedium/carrypartmediumEdit.action?carrypartmedium.id="+id+"&"+para;
	parent.addTab("编辑本部存储介质携带外出审批",str,"icon icon-nav");
}
function carrypartmedium_info(id){
	var para = pageInfo();
	var str = ctx+"/carrypartmedium/carrypartmediumInfo.action?carrypartmedium.id="+id+"&"+para;
	parent.addTab("查看本部存储介质携带外出审批",str,"icon icon-nav");
}
function saveCarrypartmedium(){
	$j("#formSearch").submit();
}
function del_carrypartmedium(id){
	parent.$.messager.confirm('友情提示','您确定要删除该本部存储介质携带外出审批吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/carrypartmedium/delCarrypartmedium.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_carrypartmedium(){
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
		parent.$.messager.alert('友情提示','请至少选择一个本部存储介质携带外出审批','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的本部存储介质携带外出审批',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/carrypartmedium/delCarrypartmedium.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}