
var enumerationValue_lookup = {
"enumeration":{
		"url":"enumerationList.action?lookup=1",
		"domain":"enumerationValue",
		"arrayName":"enumeration.enumerationValues",
		"mapping":[{"b":"id", "t":"enumeration.id"},
				   {"b":"enName", "t":"enumeration.enName"}
				  ]
		},
"creator":{
		"url":"hiUserList.action?lookup=1",
		"domain":"enumerationValue",
		"arrayName":"enumeration.enumerationValues",
		"mapping":[{"b":"id", "t":"creator.id"},
				   {"b":"fullName", "t":"userName"}
				  ]
		}
}

var enumerationValue_detailObject ; 
var enumerationValue_lookupObject ;
var enumerationValue_detailCounts = new Array();

function enumerationValue_parse(){
	enumerationValue_lookupObject = new framework_lookup(enumerationValue_lookup);
	enumerationValue_initDetailTabs();
}

function enumerationValue_lookupPOP(name,index){
	framework_lookup_tempobj = enumerationValue_lookupObject;
	enumerationValue_lookupObject.lookupPOP(name);
	if(index!=null){
		framework_lookup_tempIndex = index;
	}
}

function lookupEnumerationValue(id,valueName,displayRef,description,enName){
	var enumerationValue = {"id":id,"valueName":valueName,"displayRef":displayRef,"description":description,"enName":enName};
	window.opener.bringBack(enumerationValue);
	window.close();
}

function enumerationValue_addNew()
{
	document.formSearch.action= ctx+"/admin/enumerationValueView.action?enumerationValue.id=-1";
	document.formSearch.submit();
}

var enumerationValue_detailTabs;
function enumerationValue_initDetailTabs(){
	if(document.getElementById("enumerationValue_detailTabsDIV")!=null){
	   enumerationValue_detailTabs = new CUBBYTab("enumerationValue_detailTabsDIV");
	   enumerationValue_detailTabs.setTabsName(detailNames);
	   enumerationValue_detailTabs.setCloseButtons(detailTabButtons);
	   enumerationValue_detailTabs.setSize(1500,200);   
	   enumerationValue_detailTabs.show();
   }
}

function checkOnlyEname(){
	var enNameV = document.getElementById('enumerationValue.valueName').value.trim();
	var oldValueName = document.getElementById('oldValueName').value.trim();
	document.getElementById("check_eName").innerHTML="";
	if(oldValueName==""){	
		if(enNameV==""){		
			document.getElementById("check_eName").innerHTML=" 枚举值名称不能为空！";
			return false;
		}/*else{
			if(checkValueName() == false){
				document.getElementById("check_eName").innerHTML=" 枚举值名称不能重复！";
				return false;
			}
		}*/
	}else if(oldValueName.trim() != enNameV.trim()){
		if(enNameV==""){	
			document.getElementById("check_eName").innerHTML=" 枚举值名称不能为空！";
			return false;
		}
		/*if(checkValueName() == false){
			document.getElementById("check_eName").innerHTML=" 枚举值名称不能重复！";
			return false;
		}*/
	}
	
}

function check_evalueName(){
	document.getElementById("check_eDis").innerHTML="";
	var v_dis = document.getElementById('enumerationValue.displayRef').value.trim()
	if(v_dis==""){
		document.getElementById("check_eDis").innerHTML="显示信息不能为空！";
	
		return false;	
	}else{
		document.getElementById('enumerationValue.valueName').value = v_dis;
	}
	

	
}

function check_eId(){
	document.getElementById("check_eId").innerHTML="";
	var  e_enName = document.getElementById('enumerationValue.enumeration.enName').value.trim()
	if(e_enName==""){
		document.getElementById("check_eId").innerHTML="枚举项名称不能为空"
		return false;
	}
}

function  onSubmitValue(){
	var enNameV = document.getElementById('enumerationValue.valueName').value.trim();
	var oldValueName = document.getElementById('oldValueName').value.trim();
	if(oldValueName==""){	
		if(enNameV==""){
			parent.$.messager.alert('友情提示', '枚举值名称不能为空！', 'info');
			return false;
		}/*else{
			if(checkValueName() == false){
				parent.$.messager.alert('友情提示', '枚举值不能重复！', 'info');
				return false;
			}
		}*/
	}else if(oldValueName.trim() != enNameV.trim()){
		/*if(checkValueName() == false){
			parent.$.messager.alert('友情提示', '枚举值不能重复！', 'info');
			return false;
		}*/
	}
	
	var v_dis = document.getElementById('enumerationValue.displayRef').value.trim()
	if(v_dis==""){
		parent.$.messager.alert('友情提示', '显示信息不能为空！', 'info');
		return false;	
	}
	var  e_enName = document.getElementById('enumerationValue.enumeration.enName').value.trim()
	if(e_enName==""){
		parent.$.messager.alert('友情提示', '枚举项名称不能为空！', 'info');
		return false;
	}
	
	document.forms[0].action = ctx+"/admin/enumerationValueSave.action";
	document.forms[0].submit();
}

/*function checkValue()
{

  	if($j("input[name='enumerationValue.valueName']").val() == "") {
  		//alert("请输入名称");
  		$.messager.alert('友情提示', '请输入名称', 'info');
		return false;
  	}
  	if(	$j("input[name='enumerationValue.enumeration.id']").val() == "") {
  		//alert("请选择枚举项");
  		$.messager.alert('友情提示', '请选择枚举项', 'info');
		return false;
  	}
	return true;
}*/

//Event.observe(window,"load",enumerationValue_parse);

$j(document).ready(function(){
  $j("window").bind("load",enumerationValue_parse());
});

//删除提示
function enumerationValue_Delete(v_id){
	var para = pageInfo();
	parent.$.messager.confirm('友情提示', '确定要删除吗?', function (r) {
    if (r) {
    	document.location.href=ctx+"/admin/enumerationValueRemove.action?enumerationValue.id="+v_id+"&"+para;
	
	}
	})
}

function checkValueName(id){
	var flag = false;
	var valueName = document.getElementById('enumerationValue.valueName').value.trim();
	var valueId = document.getElementById("enumerationID").value;
		$j.ajax({
		async: false,
		url: ctx+"/admin/checkEnumerationValue.action",
		type: "post", 
		data: {"valueName":valueName},
		dataType: 'json',
		success: function(data){
			if(data == "succ"){
				//parent.$.messager.alert('友情提示', '枚举值不能重复！', 'info');
				flag = false;
			}else{
				flag = true;
			}
		}
		
	});
	return flag;
}

// 筛选值 验证
function  onSubmitFiltrateValue(){
	var enNameV = document.getElementById('enumerationValue.valueName').value.trim();
	var oldValueName = document.getElementById('oldValueName').value.trim();
	if(oldValueName==""){	
		if(enNameV==""){
			parent.$.messager.alert('友情提示', '筛选值名称不能为空！', 'info');
			return false;
		}else{
			/*if(checkValueName2() == false){
				parent.$.messager.alert('友情提示', '筛选值不能重复！', 'info');
				return false;
			}*/
		}
	}else if(oldValueName.trim() != enNameV.trim()){
		/*if(checkValueName2() == false){
			parent.$.messager.alert('友情提示', '筛选值不能重复！', 'info');
			return false;
		}*/
	}else{
		document.getElementById('enumerationValue.displayRef').value = enNameV;
	}
	
	var v_dis = document.getElementById('enumerationValue.displayRef').value.trim()
	if(v_dis==""){
		parent.$.messager.alert('友情提示', '显示信息不能为空！', 'info');
		return false;	
	}else{
		document.getElementById('enumerationValue.valueName').value = v_dis;
	}
	var  e_enName = document.getElementById('enumerationValue.enumeration.enName').value.trim()
	if(e_enName==""){
		parent.$.messager.alert('友情提示', '筛选项名称不能为空！', 'info');
		return false;
	}
	
	document.forms[0].action = ctx+"/admin/saveFiltrateValue.action";
	document.forms[0].submit();
}

function checkOnlyFiltrateEname(){
	var enNameV = document.getElementById('enumerationValue.valueName').value.trim();
	var oldValueName = document.getElementById('oldValueName').value.trim();
	document.getElementById("check_eName").innerHTML="";
	if(oldValueName==""){	
		if(enNameV==""){		
			document.getElementById("check_eName").innerHTML=" 筛选值名称不能为空！";
			return false;
		}/*else{
			if(checkValueName2() == false){
				document.getElementById("check_eName").innerHTML=" 筛选值名称不能重复！";
				return false;
			}
		}*/
	}else if(oldValueName.trim() != enNameV.trim()){
		if(enNameV==""){	
			document.getElementById("check_eName").innerHTML=" 筛选值名称不能为空！";
			return false;
		}
		/*if(checkValueName2() == false){
			document.getElementById("check_eName").innerHTML=" 筛选值名称不能重复！";
			return false;
		}*/
	}
	document.getElementById('enumerationValue.displayRef').value = enNameV;
}

/*//删除筛选值
function deleteChecked(id) {
    var ids = ""; 
	var checkBox = document.getElementsByName("orderId");   
    var num = checkBox.length;   
    for(var index =0 ; index<num;index++){ 
        if(checkBox[index].checked){       		
        		ids += checkBox[index].value + ",";                 
        }
    }   
    if(id !="" && id != null){
    	ids = id;
	}
    if(ids!=""){  
    	parent.$.messager.confirm('友情提示', '确定删除选中的筛选值吗？', function (r) {  
    		if(r){
    			document.getElementById("formSearch").action = ctx+"/admin/enumerationValueRemoveAll.action?orderIndexs="+ids;
    			document.getElementById("formSearch").submit();
    		}
    	})		
    	
   }else{
	   parent.$.messager.alert('友情提示', '至少选择一条筛选值', 'info');
   }
}*/

function checkValueName2(){
	var flag = false;
	var valueName = document.getElementById('enumerationValue.valueName').value.trim();
	var valueId = document.getElementById("enumerationID").value;
	
		$j.ajax({
		async: false,
		url: ctx+"/admin/checkEnumerationValue.action",
		type: "post", 
		data: {"valueName":valueName,"enumerationID":valueId},
		dataType: 'json',
		success: function(data){
			if(data == "succ"){
				//parent.$.messager.alert('友情提示', '枚举值不能重复！', 'info');
				flag = false;
			}else{
				flag = true;
			}
		}
		
	});
	return flag;
}
