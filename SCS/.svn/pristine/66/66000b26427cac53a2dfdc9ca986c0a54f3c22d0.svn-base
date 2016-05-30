function edit_applykeypart(id){
	var para = pageInfo();
	var str = ctx+"/applykeypart/applykeypartEdit.action?applykeypart.id="+id+"&"+para;
	parent.addTab("编辑外来人员进入保密要害部门、部位申请",str,"icon icon-nav");
}
function add_applykeypart(){

	parent.addTab("新增外来人员进入保密要害部门、部位申请",ctx+"/applykeypart/applykeypartEdit.action","icon icon-nav");
}
function applykeypart_info(id){

	var para = pageInfo();
	var str = ctx + "/applykeypart/applykeypartInfo.action?applykeypart.id="+id+"&"+para;
	parent.addTab("查看外来人员进入保密要害部门、部位申请",str,"icon icon-nav");
}
function addRy(){
	
	var elements =  $("[name='name']");
	var es = elements.size()+1;
	var dt = "#mytr"+elements.size();
	var html="";
	
	html += "<td><input type='text' name='name'/></td>";
	html += "<td><input type='text' name='jobs'/></td> ";
	html += "<td colspan='2'><input type='text' name='workunit'/></td>";
	html +="</tr>";
	
	if(elements.size()==0){
		$j("#mytr").after("<tr id='mytr"+es+"'><td>"+es+"</td>"+html);
	}else{
		$j(dt).after("<tr id='mytr"+es+"'><td>"+es+"</td>"+html);
	}
}

function saveApplykeypart(){
	
	$j("#formSearch").submit();
	
}

function del_applykeypart(id){
	parent.$.messager.confirm('友情提示','您确定要删除该外来人员进入保密要害部门、部位申请吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/applykeypart/delApplykeypart.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_applykeypart(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个外来人员进入保密要害部门、部位申请信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的外来人员进入保密要害部门、部位申请信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/applykeypart/delApplykeypart.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}