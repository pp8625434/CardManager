function edit_quartersubsidies(id){
	var para = pageInfo();
	var str = ctx+"/quartersubsidies/quartersubsidiesEdit.action?quartersubsidies.id="+id+"&"+para;
	parent.addTab("编辑季度保密补贴考核发放",str,"icon icon-nav");
}
function add_quartersubsidies(){

	parent.addTab("新增季度保密补贴考核发放",ctx+"/quartersubsidies/quartersubsidiesEdit.action","icon icon-nav");
}
function quartersubsidies_info(id){

	var para = pageInfo();
	var str = ctx + "/quartersubsidies/quartersubsidiesInfo.action?quartersubsidies.id="+id+"&"+para;
	parent.addTab("查看季度保密补贴考核发放",str,"icon icon-nav");
}
function addMx(){
	
	var elements =  $("[name='name']");
	var es = elements.size()+1;
	var dt = "#mytr"+elements.size();
	var html = "";
	html += "<td><input type='text' name='name' id='name'/></td>";
	html += "<td><input type='text' name='classification' id='classification'/></td>";
	html += "<td><input type='text' name='yfmoney' id='yfmoney'/></td>";
	html += "<td><input type='text' name='brmoney' id='brmoney'/></td>";
	html += "<td><input type='text' name='sfmoney' id='sfmoney'/></td>";
	html += "<td><input type='text' name='moneybdreason' id='moneybdreason'/></td>";
	html += "<td><input type='radio' name='isperform"+es+"' value='0'/>符合";
	html += "<input type='radio' name='isperform"+es+"' value='1'/>不符合</td>";
	html += "<td><input type='text' name='remark' id='remark'/></td></tr>";
	
	if(elements.size() == 0){
		$j("#mytr").after("<tr id='mytr"+es+"'><td>"+es+"</td>"+html);
	}else{
		$j(dt).after("<tr id='mytr"+es+"'><td>"+es+"</td>"+html);
	}
	
}


function saveQuartersubsidies(){
	
	$j("#formSearch").submit();
}

function delquartersubsidies(id){
	parent.$.messager.confirm('友情提示','您确定要删除该季度保密补贴考核发放吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/quartersubsidies/delQuartersubsidies.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_quartersubsidies(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个季度保密补贴考核发放信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的季度保密补贴考核发放信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/quartersubsidies/delQuartersubsidies.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}