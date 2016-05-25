
function flowchart_add(){
	parent.addTab("新建流程",ctx+"/flowchart/perCreateFlowchart.action?flowchart.id=-1","icon icon-nav");
}
function flowchart_edit(id){
	parent.addTab("编辑流程",ctx+"/flowchart/perCreateFlowchart.action?flowchart.id="+id,"icon icon-nav");
}

function flowchart_draw(id){
	parent.addTab("设计流程图",ctx+"/flowchart/perDrawFlowchart.action?flowchart.id="+id,"icon icon-nav");
}

function flowchart_config(id){
	parent.addTab("配置流程图",ctx+"/flowchart/configFlowchart.action?flowchart.id="+id,"icon icon-nav");
}

function flowchart_del(id){
	var ids = "";
	if(id!=null && id!="" && id!=undefined){
		ids = id;
	}else{
		$j('input[name="orderId"]:checked').each(function(){
            ids +=$j(this).val()+",";
        });
	}
	if(ids ==""){
		parent.$.messager.alert('友情提示', '至少选择一条信息', 'info');
		return false;
	}
	parent.$.messager.confirm('友情提示', '确定删除选中的信息吗？', function (r) {  
		if(r){
			document.getElementById("formSearch").action = ctx+"/flowchart/deleteFlowchart.action?ids="+ids;
			document.getElementById("formSearch").submit();
		}
	});
}