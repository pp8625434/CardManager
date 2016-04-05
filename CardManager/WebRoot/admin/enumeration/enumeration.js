var enumeration_lookup = {
"creator":{
		"url":"hiUserList.action?lookup=1",
		"domain":"enumeration",
		"arrayName":"hiUser.enumerations",
		"mapping":[{"b":"id", "t":"creator.id"},
				   {"b":"fullName", "t":"userName"}
				  ]
		}
}

var enumeration_detail = {
"enumerationValue":{
	"name":"enumeration.enumerationValues",
	"containerID":"enumerationValue_Tbody",
	"sizeInput":"enumerationValue_Length",	
	"POPmethod":"enumerationValue_lookupPOP",
	"removeMethod":"enumeration_delDetail",
	"removeAction":"/enumerationValueRemove.action?enumerationValue.id=",	
	"fields":[
			  {"name":"valueName","type":"text"},
			  {"name":"displayRef","type":"text"},
			  {"name":"description","type":"text"}//, {"name":"enumeration","type":"lookup","lookupName":"enumeration","field":"enName"}
			 ]
	}
}

var enumeration_detailObject ; 
var enumeration_lookupObject ;
var enumeration_detailCounts = new Array();

function enumeration_parse(){
	enumeration_lookupObject = new framework_lookup(enumeration_lookup);
	enumeration_detailObject = new framework_detail(enumeration_detail);
	enumeration_detailCounts.push({"name":"enumerationValue","size":CUBBYUtil.getValue(eval("enumeration_detail.enumerationValue.sizeInput"))});
	enumeration_initDetailTabs();
}

function enumeration_lookupPOP(name,index){
	framework_lookup_tempobj = enumeration_lookupObject;
	enumeration_lookupObject.lookupPOP(name);
	if(index!=null){
		framework_lookup_tempIndex = index;
	}
}

function lookupEnumeration(id,enName,displayRef,description){
	var enumeration = {"id":id,"enName":enName,"displayRef":displayRef,"description":description};
	window.opener.bringBack(enumeration);
	window.close();
}
function enumeration_addDetail(detailName){
	var size;
	var index;
	for(i = 0;i<enumeration_detailCounts.length;i++){
		if(detailName==enumeration_detailCounts[i].name){
				size = enumeration_detailCounts[i].size;
				index = i;
				break;
		}
	}
	enumeration_detailObject.addLine(detailName, size);
	enumeration_detailCounts[index].size++;
}

function enumeration_delDetail(id, detailName,event){
	enumeration_detailObject.deleteLine(id, detailName, event);

}
function enumeration_addNew()
{
	document.formSearch.action=ctx+"admin/enumerationView.action?enumeration.id=-1";
	document.formSearch.submit();
}

var enumeration_detailTabs;
function enumeration_initDetailTabs(){
	
	if(document.getElementById("enumeration_detailTabsDIV")!=null){
	   enumeration_detailTabs = new CUBBYTab("enumeration_detailTabsDIV");
	   enumeration_detailTabs.setTabsName(detailNames);
	   enumeration_detailTabs.setCloseButtons(detailTabButtons);
	   enumeration_detailTabs.setSize(1500,200);   
	   enumeration_detailTabs.show();
   }
}

function check(){
	alert("check");
}
/*
function checkValue(){
		return true;
}
*/

//Event.observe(window,"load",enumeration_parse);

$j(document).ready(function(){
  $j("window").bind("load",enumeration_parse());
});

//删除提示
function enumeration_Delete(e_id){
	var para = pageInfo();
	parent.$.messager.confirm('友情提示', '确定要删除吗?', function (r) {
    if (r) {
    	document.location.href=ctx+"/admin/enumerationRemove.action?enumeration.id="+e_id+"&"+para;
	}
	})
}

function checkNull(){
	
	
	var e_dis = document.getElementById('enumeration.displayRef').value.trim();
	if(e_dis==""){
		document.getElementById("check_dis").innerHTML=" 显示信息不能为空！";
		return false;	
	}
}

function checkOnlyName(){
	var enName = document.getElementById('enumeration.enName').value.trim();
	var oldname = document.getElementById('oldname').value.trim();
	document.getElementById("ckeck_name").innerHTML="";
	document.getElementById("check_dis").innerHTML=""
	if(oldname==""){
		if(enName==""){
			document.getElementById("ckeck_name").innerHTML="枚举名称不能为空！";
			return false;
		}else{
			if(checkEnName() == false){
				document.getElementById("ckeck_name").innerHTML="枚举名称不能重复！";
				return false;
			}
		}
	}else if(oldname.trim() != enName.trim()){
		if(enName==""){
			document.getElementById("ckeck_name").innerHTML="枚举名称不能为空！";
			return false;
		}	
		if(checkEnName() == false){
			document.getElementById("ckeck_name").innerHTML="枚举名称不能重复！";
			return false;
		}
	}
}


function  onSubmit(){
	var enName = document.getElementById('enumeration.enName').value.trim();
	var oldname = document.getElementById('oldname').value.trim();
	if(oldname==""){
		if(enName==""){
			parent.$.messager.alert('友情提示', '枚举名称不能为空！', 'info');
			return false;
		}else{
			if(checkEnName() == false){
				parent.$.messager.alert('友情提示', '枚举名称不能重复！', 'info');
				return false;
			}
		}
	}else if(oldname.trim() != enName.trim()){
		if(enName==""){
			parent.$.messager.alert('友情提示', '枚举名称不能为空！', 'info');
			return false;
		}
		if(checkEnName() == false){
			parent.$.messager.alert('友情提示', '枚举名称不能重复！', 'info');
			return false;
		}
	}

	var e_dis = document.getElementById('enumeration.displayRef').value;
	if(e_dis==""){
		parent.$.messager.alert('友情提示', '显示信息不能为空！', 'info');
		return false;	
	}
	
	document.forms[0].action = ctx+"/admin/enumerationSave.action";
	document.forms[0].submit();
}


function checkEnName(){
	var flag = false;
	var enName = document.getElementById('enumeration.enName').value.trim();
	var en_id = document.getElementById('enumeration.id').value;
	$j.ajax({
		async: false,
		url: ctx+"/admin/checkEnumeration.action",
		type: "post", 
		data: {"enName":enName,"en_id":en_id},
		dataType: 'json',
		success: function(data){
			if(data == "succ"){
				//parent.$.messager.alert('友情提示', '枚举名称不能重复！', 'info');
				flag = false;
			}else{
				flag = true;
			}
		}
		
	});
	return flag;
}


function  onFiltrateSubmit(){
	var enName = document.getElementById('enumeration.enName').value.trim();
	var oldname = document.getElementById('oldname').value.trim();
	if(oldname==""){
		if(enName==""){
			parent.$.messager.alert('友情提示', '筛选项名称不能为空！', 'info');
			return false;
		}else{
			if(checkEnName() == false){
				parent.$.messager.alert('友情提示', '筛选项名称不能重复！', 'info');
				return false;
			}
		}
	}else if(oldname.trim() != enName.trim()){
		if(enName==""){
			parent.$.messager.alert('友情提示', '筛选项名称不能为空！', 'info');
			return false;
		}
		if(checkEnName() == false){
			parent.$.messager.alert('友情提示', '筛选项名称不能重复！', 'info');
			return false;
		}
	}

	var e_dis = document.getElementById('enumeration.displayRef').value;
	if(e_dis==""){
		parent.$.messager.alert('友情提示', '显示信息不能为空！', 'info');
		return false;	
	}
	
	document.forms[0].action = ctx+"/admin/EditFiltrate.action";
	document.forms[0].submit();
}

function checkOnlyFiltrateName(){
	var enName = document.getElementById('enumeration.enName').value.trim();
	var oldname = document.getElementById('oldname').value.trim();
	document.getElementById("ckeck_name").innerHTML="";
	document.getElementById("check_dis").innerHTML=""
	if(oldname==""){
		if(enName==""){
			document.getElementById("ckeck_name").innerHTML="筛选项名称不能为空！";
			return false;
		}else{
			if(checkEnName() == false){
				document.getElementById("ckeck_name").innerHTML="筛选项名称不能重复！";
				return false;
			}
		}
	}else if(oldname.trim() != enName.trim()){
		if(enName==""){
			document.getElementById("ckeck_name").innerHTML="筛选项名称不能为空！";
			return false;
		}	
		if(checkEnName() == false){
			document.getElementById("ckeck_name").innerHTML="筛选项名称不能重复！";
			return false;
		}
	}
}
