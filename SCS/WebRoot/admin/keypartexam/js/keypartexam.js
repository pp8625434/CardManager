function add_keypartexam(){
	parent.addTab("新增保密要害部门、部位审定",ctx+"/keypartexam/keypartexamEdit.action","icon icon-nav");
}
function edit_keypartexam(id){
	var para = pageInfo();
	var str = ctx+"/keypartexam/keypartexamEdit.action?keypartexam.id="+id+"&"+para;
	parent.addTab("编辑保密要害部门、部位审定",str,"icon icon-nav");
}
function keypartexam_info(id){
	var para = pageInfo();
	var str = ctx+"/keypartexam/keypartexamInfo.action?keypartexam.id="+id+"&"+para;
	parent.addTab("查看保密要害部门、部位审定",str,"icon icon-nav");
}
function savekeypartexam(){
	$j("#formSearch").submit();
}
function del_keypartexam(id){
	parent.$.messager.confirm('友情提示','您确定要删除该保密要害部门、部位审定吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/keypartexam/delKeypartexam.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_keypartexam(){
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
		parent.$.messager.alert('友情提示','请至少选择一个保密要害部门、部位审定','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的保密要害部门、部位审定',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/keypartexam/delKeypartexam.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}