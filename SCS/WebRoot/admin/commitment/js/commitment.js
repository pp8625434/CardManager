function add_commitment(){
	parent.addTab("新增员工安全保密承诺书",ctx+"/commitment/commitmentEdit.action","icon icon-nav");
}
function edit_commitment(id){
	var para = pageInfo();
	var str=ctx + "/commitment/commitmentEdit.action?scommitmentTab.id="+id+"&"+para;
	parent.addTab("编辑员工安全保密承诺书",str,"icon icon-nav");
}
function commitment_info(id){
	var para = pageInfo();
	var str=ctx + "/commitment/commitmentInfo.action?scommitmentTab.id="+id+"&"+para;
	parent.addTab("查看员工安全保密承诺书",str,"icon icon-nav");
}
function saveCommitment(){
	$j("#formSearch").submit();
}
function del_commitment(id){
	parent.$.messager.confirm('友情提示','您确定要删除该员工安全保密承诺书吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/commitment/delCommitment.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_commitment(){
	var obj = document.getElementsByName("orderId");
	var cid = "";
	if(formSearch.orderId.length == undefined){
		if(formSearch.orderId.checked == true){
			cid = formSearch.orderId.value;
		}
	}else{
		for(var i =0;i<obj.length;i++){
			if(obj[i].checked == true){
				cid = cid + "," + obj[i].value;
			}
		}
	}
	if(cid.length == 0){
		parent.$.messager.alert('友情提示','至少选择一个员工安全保密承诺书','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的员工安全保密承诺书吗？',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/commitment/delCommitment.action?ids="+cid;
			document.getElementById("formSearch").submit();
		}
	});
}