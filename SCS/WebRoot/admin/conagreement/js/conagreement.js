function add_conagreement(){
	parent.addTab("新增保密协议书",ctx+"/conagreement/conagreementEdit.action","icon icon-nav");
}
function edit_conagreement(id){
	var para = pageInfo();
	var str = ctx+"/conagreement/conagreementEdit.action?conagreement.id="+id+"&"+para;
	parent.addTab("编辑保密协议书",str,"icon icon-nav");
}
function conagreement_info(id){
	var para = pageInfo();
	var str = ctx+"/conagreement/conagreementInfo.action?conagreement.id="+id+"&"+para;
	parent.addTab("查看保密协议书",str,"icon icon-nav");
}
function saveConagreement(){
	$j("#formSearch").submit();
}
function del_conagreement(id){
	parent.$.messager.confirm('友情提示','您确定要删除该保密协议书吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/conagreement/delConagreement.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_conagreement(){
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
		parent.$.messager.alert('友情提示','请至少选择一个保密协议书','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的保密协议书',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/conagreement/delConagreement.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}