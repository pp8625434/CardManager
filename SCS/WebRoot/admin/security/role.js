

var role_lookup = {
}

var role_detailObject ; 
var role_lookupObject ;
var role_detailCounts = new Array();

function role_parse(){
	role_lookupObject = new framework_lookup(role_lookup);
	role_initDetailTabs();
}


function role_lookupPOP(name,index){
	framework_lookup_tempobj = role_lookupObject;
	role_lookupObject.lookupPOP(name);
	if(index!=null){
		framework_lookup_tempIndex = index;
	}
}

function lookupRole(id,roleName,displayRef,description){
	var role = {"id":id,"roleName":roleName,"displayRef":displayRef,"description":description};
	window.opener.bringBack(role);
	window.close();
}

function role_addNew()
{
	document.formSearch.action= ctx+"/roleView.action?role.id=-1";
	document.formSearch.submit();
}

var role_detailTabs;
function role_initDetailTabs(){
	if($("role_detailTabsDIV")!=null){
	   role_detailTabs = new CUBBYTab("role_detailTabsDIV");
	   role_detailTabs.setTabsName(detailNames);
	   role_detailTabs.setCloseButtons(detailTabButtons);
	   role_detailTabs.setSize(1500,200);   
	   role_detailTabs.show();
   }
}
Event.observe(window,"load",role_parse);

function onSubEdit(){
	var rolename = $j.trim($j("#name").val());	
	
	if(rolename==""){
		parent.$.messager.alert('友情提示', '角色名称不能为空！', 'info');
		return false;
	}
	if(""!= $j("#appendStr").html()){
		parent.$.messager.alert('友情提示', $j("#appendStr").html(), 'info');
		return false;
	}
	var num = $j.trim($j("#displayRef").val());
	if(num==""){
		//alert("机构类型不能为空！");
		parent.$.messager.alert('友情提示', '显示信息不能为空！', 'info');
		return false;
	}
}

$j(document).ready(function(){
	$j("#name").blur(function(){
		$j("#appendStr").empty();
      	var name = trimStr($j("#name").val());
      	var oldName = $j("#oldName").val();
      	if(name == ""){
      		//$j("#addBut").attr({"disabled":"disabled"});
			$j("#appendStr").append("请输入角色名称!")
			return false;
		}
      	
		if(name!=oldName){
			$j.ajax({
				url: ctx+"/admin/checkRole.action",
				type: "post", 
				data: {"name":name},
				dataType: 'json',
				success: function(data){
					if(data == "succ"){
						$j("#appendStr").append("该角色已存在！")
						//$j("#addBut").attr({"disabled":"disabled"});
					}else if(data == "false"){
						//$j("#addBut").removeAttr("disabled");
					}
				}
				
			})
		}else{
			//$j("#addBut").removeAttr("disabled");	
		}
	});
});

function notempty(obj){
	if("" == trim($j(obj).val())){
		var message = $j(obj).parent().prev("td").html();
		$j("#"+$j(obj).attr("id")+"span").html(message+"不能为空!");
		return false;
	}else{
		$j("#"+$j(obj).attr("id")+"span").html("");
		return true;
	};
}

function trim(str) {   
    return str.replace(/(^\s*)|(\s*$)/g, "");   
}

function deleteCheckedRole(tableName) {
	var idString = "";
	if (formSearch.orderId.length==undefined)
	{
	if (formSearch.orderId.checked == true)
	idString = formSearch.orderId.value
	}
	else{
		for (var i = 0; i < formSearch.orderId.length; i++) {
			if (formSearch.orderId[i].checked == true) {
				idString = idString + "," + formSearch.orderId[i].value;
			}
		}
	}
	if (idString.length == 0) {
		parent.$.messager.alert('友情提示', '请选择至少一个角色!', 'info');
		return;
	}
	parent.$.messager.confirm('友情提示', '您确定删除选中角色吗', function (r){
	if (r) {
		if(idString.slice(0, 1) == ","){
			idString = idString.substring(1);
		}
		document.formSearch.action = tableName+"RemoveAll.action?orderIndexs=" + idString;
		document.formSearch.submit();
	}
	})
}

function updateTopHTML(){//
	$j.ajax({
				url: ctx+"/admin/updateTopHTML.action",
				type: "post", 
				dataType: 'json',
				success: function(data){
					if(data == "succ"){
						parent.$.messager.alert('友情提示', '更新成功!', 'info');
					}else if(data == "false"){
						parent.$.messager.alert('友情提示', '更新失败!', 'info');
					}
				}
				
			});
	$j.ajax({
		url: ctx+"/admin/creatProductHtml.action",
		type: "post", 
		dataType: 'json',
		success: function(data){
			//if(data == "success"){
			//	parent.$.messager.alert('友情提示', '更新成功!', 'info');
			//}else if(data == "false"){
			//	parent.$.messager.alert('友情提示', '更新失败!', 'info');
			//}
		}
		
	});
}


//更新角色
function role_update(){
	$j.ajax({
		url: ctx+"/admin/updateRole.action",
		type: "post", 
		dataType: 'json',
		success: function(result){
			//var re = $j.parseJSON(result);
			//var obj = eval('('+result+')');
			//alert(re);
			if(result.code == "1"){
				parent.$.messager.alert('友情提示', '更新成功!', 'info');
			}else{
				parent.$.messager.alert('友情提示', result.msg, 'info');
			}
		}
		
	});
}