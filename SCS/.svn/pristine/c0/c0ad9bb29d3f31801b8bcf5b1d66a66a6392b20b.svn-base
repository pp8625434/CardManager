function add_secretonline(){
	parent.addTab("新增上国际互联网计算机保密责任书",ctx+"/secretonline/secretonlineEdit.action","icon icon-nav");
}
function edit_secretonline(id){
	var para = pageInfo();
	var str = ctx+"/secretonline/secretonlineEdit.action?secretonline.id="+id+"&"+para;
	parent.addTab("编辑上国际互联网计算机保密责任书",str,"icon icon-nav");
}
function secretonline_info(id){
	var para = pageInfo();
	var str = ctx+"/secretonline/secretonlineInfo.action?secretonline.id="+id+"&"+para;
	parent.addTab("查看上国际互联网计算机保密责任书",str,"icon icon-nav");
}
function saveSecretonline(){
	$j("#formSearch").submit();
}

function del_secretonline(id){
	parent.$.messager.confirm('友情提示','您确定要删除该上国际互联网计算机保密责任书吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/secretonline/delSecretonline.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_secretonline(){
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
		parent.$.messager.alert('友情提示','请至少选择一个上国际互联网计算机保密责任书','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的上国际互联网计算机保密责任书',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/secretonline/delSecretonline.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}