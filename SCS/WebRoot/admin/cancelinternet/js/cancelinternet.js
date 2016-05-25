function add_cancelinternet(){
	parent.addTab("新增国际互联网计算机注销审批",ctx+"/cancelinternet/cancelinternetEdit.action","icon icon-nav");
}
function edit_cancelinternet(id){
	var para = pageInfo();
	var str = ctx+"/cancelinternet/cancelinternetEdit.action?cancelinternet.id="+id+"&"+para;
	parent.addTab("编辑国际互联网计算机注销审批",str,"icon icon-nav");
}
function cancelinternet_info(id){
	var para = pageInfo();
	var str = ctx+"/cancelinternet/cancelinternetInfo.action?cancelinternet.id="+id+"&"+para;
	parent.addTab("查看国际互联网计算机注销审批",str,"icon icon-nav");
}
function saveCancelinternet(){
	$j("#formSearch").submit();
}
function del_cancelinternet(id){
	parent.$.messager.confirm('友情提示','您确定要删除该国际互联网计算机注销审批吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/cancelinternet/delCancelinternet.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_cancelinternet(){
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
		parent.$.messager.alert('友情提示','请至少选择一个国际互联网计算机注销审批','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的国际互联网计算机注销审批',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/cancelinternet/delCancelinternet.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}