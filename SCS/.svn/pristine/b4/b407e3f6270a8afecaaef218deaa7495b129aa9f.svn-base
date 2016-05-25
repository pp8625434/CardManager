function add_smediumborrow(){
	parent.addTab("新增专用存储介质借用审批",ctx+"/smediumborrow/smediumborrowEdit.action","icon icon-nav");
}
function edit_smediumborrow(id){
	var para = pageInfo();
	var str = ctx+"/smediumborrow/smediumborrowEdit.action?smediumborrow.id="+id+"&"+para;
	parent.addTab("编辑专用存储介质借用审批",str,"icon icon-nav");
}
function smediumborrow_info(id){
	var para = pageInfo();
	var str = ctx+"/smediumborrow/smediumborrowInfo.action?smediumborrow.id="+id+"&"+para;
	parent.addTab("查看专用存储介质借用审批",str,"icon icon-nav");
}
function saveSmediumborrow(){
	$j("#formSearch").submit();
}
function del_smediumborrow(id){
	parent.$.messager.confirm('友情提示','您确定要删除该专用存储介质借用审批吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/smediumborrow/delSmediumborrow.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_smediumborrow(){
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
		parent.$.messager.alert('友情提示','请至少选择一个专用存储介质借用审批','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的专用存储介质借用审批',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/smediumborrow/delSmediumborrow.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}