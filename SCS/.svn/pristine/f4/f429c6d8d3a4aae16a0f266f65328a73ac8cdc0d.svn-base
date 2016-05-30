function edit_changeinternet(id){
	var para = pageInfo();
	var str = ctx+"/changeinternet/changeinternetEdit.action?changeinternet.id="+id+"&"+para;
	parent.addTab("编辑国际互联网计算机变更审批",str,"icon icon-nav");
}
function add_changeinternet(){

	parent.addTab("新增国际互联网计算机变更审批",ctx+"/changeinternet/changeinternetEdit.action","icon icon-nav");
}
function changeinternet_info(id){

	var para = pageInfo();
	var str = ctx + "/changeinternet/changeinternetInfo.action?changeinternet.id="+id+"&"+para;
	parent.addTab("查看国际互联网计算机变更审批",str,"icon icon-nav");
}
function addCinfo(){
	
	var elements =  $("[name='licensenum']");
	var es = elements.size()+1;
	var dt = "#mytable"+elements.size();
	var tds = "<td><input type='text' name='bcorgname'/></td> "+
	"<td><input type='text' name='bcsresponsible'/></td> "+
	"<td><input type='text' name='bcserialnum'/></td> "+
	"<td><input type='text' name='haddress'/></td> "+
	"<td><input type='text' name='acorgname'/></td> "+
	"<td><input type='text' name='acsresponsible'/></td> "+
	"<td><input type='text' name='acserialnum'/></td> "+
	"<td><input type='text' name='achaddress'/></td> "+
	"<td><input type='text' name='changereason'/></td></tr>"
	if(elements.size()==0){
		$j("#mytable").after("<tr id='mytable"+es+"'><td>"+es+"</td><td><input type='text' name='licensenum'/></td>"+tds);
	}else{
		$j(dt).after("<tr id='mytable"+es+"'><td>"+es+"</td><td><input type='text' name='licensenum'/></td>"+tds);
	}
	
}

function saveChangeinternet(){
	
	$j("#formSearch").submit();
	
}

function del_changeinternet(id){
	parent.$.messager.confirm('友情提示','您确定要删除该国际互联网计算机变更审批吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/changeinternet/delChangeinternet.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_changeinternet(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个国际互联网计算机变更审批信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的国际互联网计算机变更审批信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/changeinternet/delChangeinternet.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}