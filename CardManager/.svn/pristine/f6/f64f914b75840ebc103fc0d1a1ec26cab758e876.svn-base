var org_lookup = {
"org":{
		"url":"orgList.action?lookup=1",
		"domain":"org",
		"arrayName":"org.orgList",
		"mapping":[{"b":"id", "t":"parent"},
				   {"b":"name", "t":"parentName"}
				  ]
		}
}

var org_detailObject ; 
var org_lookupObject ;
var org_detailCounts = new Array();

function org_parse(){
	org_lookupObject = new framework_lookup(org_lookup);
	org_initDetailTabs();
}


function org_lookupPOP(name,index){
	framework_lookup_tempobj = org_lookupObject;
	org_lookupObject.lookupPOP(name);
	if(index!=null){
		framework_lookup_tempIndex = index;
	}
}

function lookupOrg(id,name){
	var org = {"id":id,"name":name};
	if(window.opener.document.getElementById("name")!=null&&window.opener.document.getElementById("name").value==name){
		//alert("父分类不能是自己");
		parent.$.messager.alert('友情提示', '父分类不能是自己', 'info');
		return false;
	}
	window.opener.bringBack(org);
	window.close();
}

var org_detailTabs;
function org_initDetailTabs(){
	if($("org_detailTabsDIV")!=null){
	   org_detailTabs = new CUBBYTab("org_detailTabsDIV");
	   org_detailTabs.setTabsName(detailNames);
	   org_detailTabs.setCloseButtons(detailTabButtons);
	   org_detailTabs.setSize(1500,200);   
	   org_detailTabs.show();
   }
}
Event.observe(window,"load",org_parse);

function org_addNew(parent)
{
	document.formSearch.action=ctx+"/org/orgView.action?org.id=-1&parent="+parent;
	document.formSearch.submit();
}

function onSubEdit(){
	var oldName = $j("#oldName").val();	
	var newName = $j("#name").val().trim();
	
	if(newName==""){
		parent.$.messager.alert('友情提示', '机构名称不能为空！', 'info');
		return false;
	}
	
	if(""!= $j("#appendStr").html()){
		parent.$.messager.alert('友情提示', $j("#appendStr").html(), 'info');
		return false;
	}
	//if(oldName == newName){
	//	parent.$.messager.alert('友情提示','机构名称未修改!', 'info');
	//	return false;
	//}
	var num = $j("#orgType").val();
	if(num==""){
		//alert("机构类型不能为空！");
		parent.$.messager.alert('友情提示', '机构类型不能为空！', 'info');
		return false;
	}
	//if(checkNum(num)){
	//}else{
	//	alert("机构类型必须是整数0-9")
	//	return false;
	//}
	
}

String.prototype.trim=function(){
	return this.replace(/(^\s*)|(\s*$)/g, "");
}

$j(document).ready(function(){
	$j("#name").blur(function(){
		$j("#appendStr").empty();
      	var name = $j("#name").val().trim();
      	var oldName = $j("#oldName").val();	
      	var parent = $j("#orgId").val();	
      	if(name == ""){
      		//$j("#addBut").attr({"disabled":"disabled"});
			$j("#appendStr").append("请输入机构名称!")
			return false;
		}
		if(name!=oldName){
			$j.ajax({
				url: ctx+"/org/checkOrg.action",
				type: "post", 
				data: {"name":name,"parent":parent},
				dataType: 'json',
				success: function(data){
					if(data == "succ"){
						$j("#appendStr").append("该机构已存在！")
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

/*是否为整数*/
function checkNum(num){
	if(num.length>1){
		return false;
	}
	if(isNaN(num)){
		return false;
	}
	return true;
}

function goBack(flag){
	document.forms[0].action = ctx+"/org/orgList.action?flag="+flag;
	document.forms[0].submit();
}

function showAlert(content) {
    parent.$.messager.show({
         title: '友情提示',
         msg: content,
         timeout: 0,
         showType: 'fade'
    });
}

function checkDataBeforeDelete(orgId,pa){
	parent.$.messager.confirm('友情提示', '您确定删除该机构吗？', function (r) {
	if (r) {
		var flag = false;
		$j.ajax({
			async: false,
			url: ctx+"/org/checkDataBeforeDelete.action",
			type: "post", 
			data: {"orgId":orgId},
			dataType: 'json',
			success: function(data){
				if(data == "1"){
					parent.$.messager.alert('友情提示', '该机构下存在子机构或用户，不能直接删除！');
					flag = false;
				}else{
					flag = true;
				}
			}
			
		});
		if(true == flag) {
			$j.ajax({
			async: false,
			url: ctx+"/org/orgRemove.action?org.id="+orgId,
			type: "post", 
			data: {"orgId":orgId},
			dataType: 'json',
			success: function(data){
					
				}	
			});
			$j("#tr_"+orgId).remove();	
			//parent.$.messager.alert('友情提示', '删除成功！','info');
						
		} 
	}
  })
}

function orgf(orgid){
	document.getElementById("f_parent").value=orgid;
	document.formSearch.submit();
}

function deleteCheckedOrg(tableName) {
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
		parent.$.messager.alert('友情提示', '请选择至少一个机构!', 'info');
		return;
	}
	parent.$.messager.confirm('友情提示', '您确定删除选中机构吗', function (r){
		if (r) {
			if(idString.slice(0, 1) == ","){
				idString = idString.substring(1);
			}
			$j.ajax({
				async: false,
				url: tableName+"RemoveAll.action",
				type: "post", 
				data: {"orderIndexs":idString},
				dataType: 'json',
				success: function(data){
					var obj = eval('('+data+')');
					if('fail' == obj.result){
						parent.$.messager.alert('友情提示', obj.info+"存在子机构或用户，不能直接删除！");
					}
					$j("#formSearch").submit();
				}	
			});
		}
	})
}
