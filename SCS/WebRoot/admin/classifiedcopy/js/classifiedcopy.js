function add_classifiedcopy(){
	parent.addTab("新增本部涉密载体外出复制审批单",ctx+"/classifiedcopy/classifiedcopyEdit.action","icon icon-nav");
}
function edit_classifiedcopy(id){
	var para = pageInfo();
	var str = ctx+"/classifiedcopy/classifiedcopyEdit.action?classifiedcopy.id="+id+"&"+para;
	parent.addTab("编辑本部涉密载体外出复制审批单",str,"icon icon-nav");
}
function classifiedcopy_info(id){
	var para = pageInfo();
	var str = ctx+"/classifiedcopy/classifiedcopyInfo.action?classifiedcopy.id="+id+"&"+para;
	parent.addTab("查看本部涉密载体外出复制审批单",str,"icon icon-nav");
}
function exam_classifiedcopy(id){
	
	var para = pageInfo();
	var str = ctx + "/classifiedcopy/toExamClassifiedcopy.action?classifiedcopy.id="+id+"&"+para;
	parent.addTab("审批本部涉密载体外出复制审批单",str,"icon icon-nav");
}
function saveClassifiedcopy(){
	$j("#formSearch").submit();
}

function tjClassifiedcopy(){
	$j("#formSearch").submit();
} 

function del_classifiedcopy(id){
	parent.$.messager.confirm('友情提示','您确定要删除该本部涉密载体外出复制审批单吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/classifiedcopy/delClassifiedcopy.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_classifiedcopy(){
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
		parent.$.messager.alert('友情提示','请至少选择一个本部涉密载体外出复制审批单','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的本部涉密载体外出复制审批单',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/classifiedcopy/delClassifiedcopy.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}