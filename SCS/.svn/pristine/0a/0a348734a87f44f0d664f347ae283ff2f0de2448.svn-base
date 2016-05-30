function edit_classifieddestroy(id){
	var para = pageInfo();
	var str = ctx+"/classifieddestroy/classifieddestroyEdit.action?classifieddestroy.id="+id+"&"+para;
	parent.addTab("编辑本部涉密载体销毁审批",str,"icon icon-nav");
}
function add_classifieddestroy(){

	parent.addTab("新增本部涉密载体销毁审批",ctx+"/classifieddestroy/classifieddestroyEdit.action","icon icon-nav");
}
function classifieddestroy_info(id){

	var para = pageInfo();
	var str = ctx + "/classifieddestroy/classifieddestroyInfo.action?classifieddestroy.id="+id+"&"+para;
	parent.addTab("查看本部涉密载体销毁审批",str,"icon icon-nav");
}
function addZt(){
	
	var elements =  $("[name='filename']");
	var es = elements.size()+1;
	var dt = "#mytr"+elements.size();
	var html="";
	
	html += "<td><input type='text' name='filename'/></td>";
	html += "<td><input type='text' name='productunit'/></td> ";
	html += "<td><input type='text' name='carriertype' onkeyup=\"if(isNaN(value))this.value='';\" onafterpaste=\"if(isNaN(value))this.value='';\"/></td>";
	html += "<td><input type='text' name='code'/></td>";
	html += "<td><input type='text' name='classification'/></td>";
	html += "<td><input type='text' name='pages' onkeyup=\"if(isNaN(value))this.value='';\" onafterpaste=\"if(isNaN(value))this.value='';\"/></td>";
	html += "<td><input type='text' name='copies' onkeyup=\"if(isNaN(value))this.value='';\" onafterpaste=\"if(isNaN(value))this.value='';\"/></td>";
	html += "<td><input type='text' name='depository'/></td>";
	html +="</tr>";
	
	if(elements.size()==0){
		$j("#mytr").after("<tr id='mytr"+es+"'><td>"+es+"</td>"+html);
	}else{
		$j(dt).after("<tr id='mytr"+es+"'><td>"+es+"</td>"+html);
	}
}

function saveClassifieddestroy(){
	
	$j("#formSearch").submit();
	
}

function del_classifieddestroy(id){
	parent.$.messager.confirm('友情提示','您确定要删除该本部涉密载体销毁审批吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/classifieddestroy/delClassifieddestroy.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_classifieddestroy(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个本部涉密载体销毁审批信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的本部涉密载体销毁审批信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/classifieddestroy/delClassifieddestroy.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}