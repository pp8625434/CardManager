function add_classifiedtz(){
	parent.addTab("新增部门或个人涉密载体台账",ctx+"/classifiedtz/classifiedtzEdit.action","icon icon-nav");
}
function edit_classifiedtz(id){
	var para = pageInfo();
	var str = ctx+"/classifiedtz/classifiedtzEdit.action?classifiedtz.id="+id+"&"+para;
	parent.addTab("编辑部门或个人涉密载体台账",str,"icon icon-nav");
}
function classifiedtz_info(id){
	var para = pageInfo();
	var str = ctx+"/classifiedtz/classifiedtzInfo.action?classifiedtz.id="+id+"&"+para;
	parent.addTab("查看部门或个人涉密载体台账",str,"icon icon-nav");
}
function addTz(){
	
	var elements =  $("[name='filename']");
	var el = elements.size()+1;
	var html = "";
	html += "<tr><td>";
	html += ""+el+"</td>";
	html += "<td><input type='text' name='filename'/></td>";
	html += "<td><input type='text' name='productunit'/></td>";
	html += "<td><input type='text' name='carriertype'/></td>";
	html += "<td><input type='text' name='code'/></td>";
	html += "<td><input type='text' name='classification'/></td>";
	html += "<td><input type='text' name='pages'/></td>";
	html += "<td><input type='text' name='copies'/></td>";
	html += "<td><input type='text' name='usrange'/></td>";
	html += "<td><textarea rows='3' name='note' id='note'></textarea>";
	html += "</td></tr>";
	$j("#mytable").append(html);
}
function saveClassifiedtz(){
	$j("#formSearch").submit();
}

function del_classifiedtz(id){
	parent.$.messager.confirm('友情提示','您确定要删除该部门或个人涉密载体台账吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/classifiedtz/delClassifiedtz.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_classifiedtz(){
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
		parent.$.messager.alert('友情提示','请至少选择一个部门或个人涉密载体台账','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的部门或个人涉密载体台账',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/classifiedtz/delClassifiedtz.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}