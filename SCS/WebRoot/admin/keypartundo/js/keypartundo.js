function add_keypartexam(){
	parent.addTab("新增保密要害部门、部位撤销",ctx+"/keypartundo/keypartundoEdit.action","icon icon-nav");
}
function edit_keypartundo(id){
	var para = pageInfo();
	var str = ctx+"/keypartundo/keypartundoEdit.action?keypartundo.id="+id+"&"+para;
	parent.addTab("编辑保密要害部门、部位撤销",str,"icon icon-nav");
}
function keypartundo_info(id){
	var para = pageInfo();
	var str = ctx+"/keypartundo/keypartundoInfo.action?keypartundo.id="+id+"&"+para;
	parent.addTab("查看保密要害部门、部位撤销",str,"icon icon-nav");
}
function savekeypartundo(){
	$j("#formSearch").submit();
}
function del_keypartundo(id){
	parent.$.messager.confirm('友情提示','您确定要删除该保密要害部门、部位撤销吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/keypartundo/delKeypartundo.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_keypartundo(){
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
		parent.$.messager.alert('友情提示','请至少选择一个保密要害部门、部位撤销','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的保密要害部门、部位撤销',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/keypartundo/delKeypartundo.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}