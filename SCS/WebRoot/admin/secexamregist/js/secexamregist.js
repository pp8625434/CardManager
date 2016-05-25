function add_secexamregist(){
	parent.addTab("新增保密审查审批登记",ctx+"/secexamregist/secexamregistEdit.action","icon icon-nav");
}
function edit_secexamregist(id){
	var para = pageInfo();
	var str = ctx+"/secexamregist/secexamregistEdit.action?secexamregist.id="+id+"&"+para;
	parent.addTab("编辑保密审查审批登记",str,"icon icon-nav");
}
function secexamregist_info(id){
	var para = pageInfo();
	var str = ctx+"/secexamregist/secexamregistInfo.action?secexamregist.id="+id+"&"+para;
	parent.addTab("查看保密审查审批登记",str,"icon icon-nav");
}
function saveSecexamregist(){
	$j("#formSearch").submit();
}

function del_secexamregist(id){
	parent.$.messager.confirm('友情提示','您确定要删除该保密审查审批登记吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/secexamregist/delSecexamregist.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_secexamregist(){
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
		parent.$.messager.alert('友情提示','请至少选择一个保密审查审批登记','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的保密审查审批登记',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/secexamregist/delSecexamregist.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}