function edit_securityedu(id){
	var para = pageInfo();
	var str = ctx+"/securityedu/securityeduEdit.action?securityedu.id="+id+"&"+para;
	parent.addTab("编辑新进涉密岗位人员岗前保密教育培训记录",str,"icon icon-nav");
}
function add_securityedu(){

	parent.addTab("新增新进涉密岗位人员岗前保密教育培训记录",ctx+"/securityedu/securityeduEdit.action","icon icon-nav");
}
function securityedu_info(id){
	var para = pageInfo();
	var str = ctx + "/securityedu/securityeduInfo.action?securityedu.id="+id+"&"+para;
	parent.addTab("查看新进涉密岗位人员岗前保密教育培训记录",str,"icon icon-nav");
}
function saveSecurityedu(){
	$j("#formSearch").submit();
}
function del_securityedu(id){

	parent.$.messager.confirm('友情提示','确认删除该新进涉密岗位人员岗前保密教育培训记录？',function(r){
		if(r){
			document.formSearch.action=ctx+"/securityedu/delSecurityedu.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_securityedu(){
	var obj = document.getElementsByName("orderId");
	var eid = "";
	if(formSearch.orderId.length == undefined){
		if(formSearch.orderId.checked == true){
			eid = formSearch.orderId.value;
		}
	}else{
		for(var i=0;i<obj.length;i++){
			if(obj[i].checked == true){
				eid = eid +","+obj[i].value;
			}
		}
	}
	if(eid.length == 0){
		parent.$.messager.alert('友情提示','请至少选择一项新进涉密岗位人员岗前保密教育培训记录','info');
		return;
	}
	parent.$.messager.confirm('友情提示','确认删除选中的新进涉密岗位人员岗前保密教育培训记录',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/securityedu/delSecurityedu.action?ids="+eid;
			document.getElementById("formSearch").submit();
		}
	});
}