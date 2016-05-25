function add_borrowmedium(){
	parent.addTab("新增部门存储介质借用登记",ctx+"/borrowmedium/borrowmediumEdit.action","icon icon-nav");
}
function edit_borrowmedium(id){
	var para = pageInfo();
	var str = ctx+"/borrowmedium/borrowmediumEdit.action?borrowmedium.id="+id+"&"+para;
	parent.addTab("编辑部门存储介质借用登记",str,"icon icon-nav");
}
function borrowmedium_info(id){
	var para = pageInfo();
	var str = ctx+"/borrowmedium/borrowmediumInfo.action?borrowmedium.id="+id+"&"+para;
	parent.addTab("查看部门存储介质借用登记",str,"icon icon-nav");
}
function saveBorrowmedium(){
	$j("#formSearch").submit();
}
function del_borrowmedium(id){
	parent.$.messager.confirm('友情提示','您确定要删除该部门存储介质借用登记吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/borrowmedium/delBorrowmedium.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_borrowmedium(){
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
		parent.$.messager.alert('友情提示','请至少选择一个部门存储介质借用登记','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的部门存储介质借用登记',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/borrowmedium/delBorrowmedium.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}