function edit_classified(id){
	var para = pageInfo();
	var str = ctx+"/examclassification/classifiedEdit.action?eclassification.id="+id+"&"+para;
	parent.addTab("编辑涉密人员密级审定",str,"icon icon-nav");
}
function add_classified(){

	parent.addTab("新增涉密人员密级审定",ctx+"/examclassification/classifiedEdit.action","icon icon-nav");
}
function classified_info(id){

	var para = pageInfo();
	var str = ctx + "/examclassification/classifiedInfo.action?eclassification.id="+id+"&"+para;
	parent.addTab("查看涉密人员密级审定",str,"icon icon-nav");
}
function addproject(){
	
	var elements =  $("[name='proname']");
	var es = elements.size()+1;
	$j("#mytable").append("<tr ><td width='10%'>"+es+"</td><td colspan='4'><input type='text' name='proname' id='xm'/></td>"+
	"<td colspan='3'><input type='radio' name='classification"+es+"' value='0'/>秘密 "+
	"<input type='radio' name='classification"+es+"' value='1' />机密 "+
	"<input type='radio' name='classification"+es+"' value='2' />绝密</td></tr>");
}

function approve_classified(id){
	
	var para = pageInfo();
	var str = ctx + "/examclassification/toApproveClassified.action?eclassification.id="+id+"&"+para;
	parent.addTab("审定涉密人员密级",str,"icon icon-nav");
}



function saveClassified(){
	
	$j("#formSearch").submit();
}

function tjClassified(){
	$j("#formSearch").submit();
}
function delclassified(id){
	parent.$.messager.confirm('友情提示','您确定要删除该涉密人员密级审定吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/examclassification/delClassified.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_classified(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个涉密人员密级审定信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的涉密人员密级审定信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/examclassification/delClassified.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}