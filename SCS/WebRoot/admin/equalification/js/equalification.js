function edit_equalification(id){
	var para = pageInfo();
	var str = ctx+"/equalification/equalificationEdit.action?eclassification.id="+id+"&"+para;
	parent.addTab("编辑涉密岗位聘用人员保密资格审查",str,"icon icon-nav");
}
function add_equalification(){

	parent.addTab("新增涉密岗位聘用人员保密资格审查",ctx+"/equalification/equalificationEdit.action","icon icon-nav");
}
function equalification_info(id){

	var para = pageInfo();
	var str = ctx + "/equalification/equalificationInfo.action?eclassification.id="+id+"&"+para;
	parent.addTab("查看涉密岗位聘用人员保密资格审查",str,"icon icon-nav");
}
function addStudy(){
	
	var elements =  $("[name='wstartdate']");
	var es = elements.size()+1;
	var dt = "#brtr"+elements.size();
	var html="";
	
	html += "<td colspan='2'><input type='text' name='wstartdate'  id='wstartdate"+es+"'  dtype='date(yyyy-MM-dd)'/>-";
	html += "<input type='text' name='wenddate'  id='wenddate"+es+"'  dtype='date(yyyy-MM-dd)'/></td>";
	html += "<td><input type='text' name='workunit'/></td> ";
	html += "<td><input type='text' name='jobs'/></td>";
	html += "<td><input type='text' name='position'/></td>";
	html += "<td><input type='text' name='zmname'/></td>";
	html +="</tr>";
	
	if(elements.size()==0){
		$j("#brtr").after("<tr id='brtr"+es+"'>"+html);
	}else{
		$j(dt).after("<tr id='brtr"+es+"'>"+html);
	}
	domRendering($("#wstartdate"+es));
	domRendering($("#wenddate"+es));
}
function addCy(){
	var elements =  $("[name='name']");
	var es = elements.size()+1;
	var dt = "#gxtr"+elements.size();
	var html="";
	
	html += "<td><input type='text' name='relation'/></td> ";
	html += "<td><input type='text' name='name'/></td>";
	html += "<td><input type='radio' name='sex"+es+"' value='0'/>女"
	html +="<input type='radio' name='sex"+es+"' value='1'/>男</td>";
	html += "<td><input type='text' name='age'/></td>";
	html += "<td><input type='text' name='national'/></td>";
	html += "<td><input type='text' name='dwzw'/></td>";
	html +="</tr>";
	
	if(elements.size()==0){
		$j("#gxtr").after("<tr id='gxtr"+es+"'>"+html);
	}else{
		$j(dt).after("<tr id='gxtr"+es+"'>"+html);
	}	
	
}

function saveEqualification(){
	
	$j("#formSearch").submit();
	
}

function del_equalification(id){
	parent.$.messager.confirm('友情提示','您确定要删除该涉密岗位聘用人员保密资格审查吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/equalification/delEqualification.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_equalification(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个涉密岗位聘用人员保密资格审查信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的涉密岗位聘用人员保密资格审查信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/equalification/delEqualification.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}