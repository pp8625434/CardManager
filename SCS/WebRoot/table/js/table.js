
function initTable(){
	parent.$.messager.confirm('友情提示', '初始化表单信息，可能会影响到流程的正常使用，是否确认执行？', function (r) {  
		if(r){
			$j.ajax({
				async : true,
				url : ctx + "/table/initTableInfo.action",
				type : "post",
				data : {},
				dataType : "json",
				success : function(data) {
					if(data =="error"){
						parent.$.messager.alert('友情提示', '初始化失败，出现错误！', 'info');	
					}else if(data =="success"){
						parent.$.messager.alert('友情提示', '初始化完成！', 'info');
						parent.addTab("表单信息",ctx+"/table/findTablesList.action","icon icon-nav");
					}
				}
		
			});
		}
	});
}

function edit_table(id){
	parent.addTab("编辑表单信息",ctx+"/table/editTables.action?tables.id="+id,"icon icon-nav");
}

function add_table(){
	parent.addTab("添加表单信息",ctx+"/table/editTables.action?tables.id=-1","icon icon-nav");
}

function onSubEdit(){
	var tableName = $j("#tableName").val();
	var oldName = $j("#oldName").val();
	if(tableName==""){
		parent.$.messager.alert('友情提示', '表名不能为空！', 'info');
		return false;
	}
	if(oldName!=tableName){
		if(checkRepeat("p_tables","tablename",tableName)){
			parent.$.messager.alert('友情提示', '表名不能重复！', 'info');
			return false;
		}
	}
	return true;
}

function delete_table(id){
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
			document.getElementById("formSearch").action = ctx+"/table/deleteTable.action?ids="+ids;
			document.getElementById("formSearch").submit();
		}
	});
}


function view_tableInfo(id){
	parent.addTab("表字段信息",ctx+"/table/findTableFieldInfo.action?tables.id="+id,"icon icon-nav");
}

function edit_tableInfo(id){
	parent.addTab("添加表字段",ctx+"/table/addTableField.action?tablesInfo.id="+id,"icon icon-nav");
}

function delete_tableInfo(id){
	var ids = "";
	if(id!=null && id!="" && id!=undefined){
		ids = id;
	}else{
		$j('input[name="orderId"]:checked').each(function(){
            ids +=$j(this).val()+",";
        });
	}
	if(ids ==""){
		parent.$.messager.alert('友情提示', '至少选择一个字段', 'info');
		return false;
	}
	parent.$.messager.confirm('友情提示', '确定删除选中的字段吗？', function (r) {  
		if(r){
			document.getElementById("formSearch").action = ctx+"/table/deleteTableField.action?ids="+ids+"&tables.id="+$j("#tid").val();
			document.getElementById("formSearch").submit();
		}
	});
}
function view_tableInfo(id){
	parent.addTab("表字段信息",ctx+"/table/findTableFieldInfo.action?tables.id="+id,"icon icon-nav");
}

function addField(id){
	parent.addTab("添加表字段",ctx+"/table/addTableField.action?tables.id="+id,"icon icon-nav");
}

function onSubAdd(){
	var fieldName = $j("#fieldName").val();
	var oldName = $j("#oldName").val();
	var tid = $j("#tableid").val();
	
	if(fieldName==""){
		parent.$.messager.alert('友情提示', '字段名称不能为空！', 'info');
		return false;
	}
	if(oldName!=fieldName){
		//前台改表名不用重启
		if(checkFieldRepeat("p_tablesinfo",fieldName,tid)){
			parent.$.messager.alert('友情提示', '表字段名称不能重复！', 'info');
			return false;
		}
	}
	return true;
}

//表字段查重
function checkFieldRepeat(tableName,fieldName,ids){
	var flag = false;
	$j.ajax({
		async: false,
		url: ctx+"/table/checkFieldRepeat.action",
		type: "post", 
		data: {"tableName":tableName,"fieldName":fieldName,"ids":ids},
		dataType: 'json',
		success: function(data){
			if(data == "succ"){//有重复
				
				flag = true;
			}else{
				flag = false;
			}
		}
	});
	return flag;
}