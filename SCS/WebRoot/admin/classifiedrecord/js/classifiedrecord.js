function add_classifiedrecord(){
	parent.addTab("新增本部送外复制涉密载体监督检查记录",ctx+"/classifiedrecord/classifiedrecordEdit.action","icon icon-nav");
}
function edit_classifiedrecord(id){
	var para = pageInfo();
	var str = ctx+"/classifiedrecord/classifiedrecordEdit.action?classifiedrecord.id="+id+"&"+para;
	parent.addTab("编辑本部送外复制涉密载体监督检查记录",str,"icon icon-nav");
}
function classifiedrecord_info(id){
	var para = pageInfo();
	var str = ctx+"/classifiedrecord/classifiedrecordInfo.action?classifiedrecord.id="+id+"&"+para;
	parent.addTab("查看本部送外复制涉密载体监督检查记录",str,"icon icon-nav");
}
function saveClassifiedrecord(){
	$j("#formSearch").submit();
}
function del_classifiedrecord(id){
	parent.$.messager.confirm('友情提示','您确定要删除该本部送外复制涉密载体监督检查记录吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/classifiedrecord/delClassifiedrecord.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_classifiedrecord(){
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
		parent.$.messager.alert('友情提示','请至少选择一个本部送外复制涉密载体监督检查记录','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的本部送外复制涉密载体监督检查记录',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/classifiedrecord/delClassifiedrecord.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}