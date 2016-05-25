function statesecrets_info(id){
	var para = pageInfo();
	var str = ctx+"/statesecrets/statesecretsInfo.action?sStatesecretsTab.id="+id+"&"+para;
	parent.addTab("查看国家秘密事项的变更或解密审批",str,"icon icon-nav");
}

function edit_statesecrets(id){
	var para = pageInfo();
	var str = ctx+"/statesecrets/statesecretsEdit.action?sStatesecretsTab.id="+id+"&"+para;
	parent.addTab("编辑国家秘密事项的变更或解密审批",str,"icon icon-nav");
}

function add_statesecrets(){
	parent.addTab("新增国家秘密事项的变更或解密审批",ctx+"/statesecrets/statesecretsEdit.action","icon icon-nav");
}

function exam_statesecrets(id){
	var para = pageInfo();
	var str = ctx+"/statesecrets/toExamStatesecrets.action?sStatesecretsTab.id="+id+"&"+para;
	parent.addTab("国家秘密事项的变更或解密审批",str,"icon icon-nav");
}

function saveStatesecrets(){
	$j("#formSearch").submit();
}
function tjStatesecret(){
	$j("#formSearch").submit();
}
function delstatesecrets(id){
	parent.$.messager.confirm('友情提示', '您确定删除国家秘密事项的变更或解密审批信息吗？', function (r) {
		if (r) {
			document.formSearch.action=ctx+"/statesecrets/delStatesecrets.action?ids="+id;
			document.formSearch.submit();
			}
	})
}

function delAll_statesecrets(){
	var obj = document.getElementsByName("orderId");
	var sid = "";
	if(formSearch.orderId.length == undefined){
		if (formSearch.orderId.checked == true){
			sid=formSearch.orderId.value;
		}
	}else{
		for(var i=0;i<obj.length;i++){
			if(obj[i].checked==true){
				sid = sid +","+obj[i].value;
			}
		}
	}
	if(sid.length==0){
		parent.$.messager.alert("友情提示", "请选择至少一个国家秘密事项的变更或解密审批信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的国家秘密事项的变更或解密审批信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/statesecrets/delStatesecrets.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}