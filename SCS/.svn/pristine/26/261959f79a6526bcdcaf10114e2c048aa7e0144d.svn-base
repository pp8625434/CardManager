function add_leavepromise(){
	parent.addTab("新增离岗保密承诺书",ctx+"/leavepromise/leavepromiseEdit.action","icon icon-nav");
}
function edit_leavepromise(id){
	var para = pageInfo();
	var str = ctx+"/leavepromise/leavepromiseEdit.action?leavepromise.id="+id+"&"+para;
	parent.addTab("编辑离岗保密承诺书",str,"icon icon-nav");
}
function leavepromise_info(id){
	var para = pageInfo();
	var str = ctx+"/leavepromise/leavepromiseInfo.action?leavepromise.id="+id+"&"+para;
	parent.addTab("查看离岗保密承诺书",str,"icon icon-nav");
}
function saveLeavepromise(){
	$j("#formSearch").submit();
}
function del_leavepromise(id){
	parent.$.messager.confirm('友情提示','您确定要删除该离岗保密承诺书吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/leavepromise/delLeavepromise.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_leavepromise(){
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
		parent.$.messager.alert('友情提示','请至少选择一个离岗保密承诺书','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的离岗保密承诺书',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/leavepromise/delLeavepromise.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}