function edit_changemedium(id){
	var para = pageInfo();
	var str = ctx+"/changemedium/changemediumEdit.action?changemedium.id="+id+"&"+para;
	parent.addTab("编辑存储介质变更审批",str,"icon icon-nav");
}
function add_changemedium(){

	parent.addTab("新增存储介质变更审批",ctx+"/changemedium/changemediumEdit.action","icon icon-nav");
}
function changemedium_info(id){

	var para = pageInfo();
	var str = ctx + "/changemedium/changemediumInfo.action?changemedium.id="+id+"&"+para;
	parent.addTab("查看存储介质变更审批",str,"icon icon-nav");
}
function addCminfo(){
	
	var elements =  $("[name='mtype']");
	var es = elements.size()+1;
	var dt = "#mytable"+elements.size();
	
	var tds = "<td><input type='text' name='specifications'/></td> "+
	"<td><input type='text' name='bcorgname'/></td> "+
	"<td><input type='text' name='bcdepository'/></td> "+
	"<td><input type='radio' name='bcclassification"+es+"' value='0'/>机密 "+
	"<input type='radio' name='bcclassification"+es+"' value='1' />秘密 "+
	"<input type='radio' name='bcclassification"+es+"' value='2' />内部 "+
	"<input type='radio' name='bcclassification"+es+"' value='3' />上网</td>"+
	"<td><input type='text' name='bcscode'/></td> "+
	"<td><input type='text' name='acorgname'/></td> "+
	"<td><input type='text' name='acdepository'/></td> "+
	"<td><input type='radio' name='acclassification"+es+"' value='0'/>机密 "+
	"<input type='radio' name='acclassification"+es+"' value='1' />秘密 "+
	"<input type='radio' name='acclassification"+es+"' value='2' />内部 "+
	"<input type='radio' name='acclassification"+es+"' value='3' />上网</td>"+
	"<td><input type='text' name='acscode'/></td> "+
	"<td><input type='text' name='changereason'/></td></tr> "
	
	if(elements.size()==0){
		$j("#mytable").after("<tr id='mytable"+es+"'><td>"+es+"</td><td><input type='text' name='mtype'/></td>"+tds);
	}else{
		$j(dt).after("<tr id='mytable"+es+"'><td>"+es+"</td><td><input type='text' name='mtype'/></td>"+tds);
	}
	
}

function saveChangemedium(){
	
	$j("#formSearch").submit();
	
}

function del_changemedium(id){
	parent.$.messager.confirm('友情提示','您确定要删除该存储介质变更审批吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/changemedium/delChangemedium.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_changemedium(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个存储介质变更审批信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的存储介质变更审批信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/changemedium/delChangemedium.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}