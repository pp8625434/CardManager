
var menuLink_lookup = {
"authority":{
		"url":"authorityList.action?lookup=1",
		"domain":"menuLink",
		"arrayName":"authority.menuLinks",
		"mapping":[{"b":"id", "t":"authority.id"},
				   {"b":"authorityName", "t":"authorityName"}
				  ]
		},
"menu":{
		"url":"menuList.action?lookup=1",
		"domain":"menuLink",
		"arrayName":"authority.menuLinks",
		"mapping":[{"b":"id", "t":"menu.id"},
				   {"b":"name", "t":"name"}
				  ]
		},
"creator":{
		"url":"hiUserList.action?lookup=1",
		"domain":"menuLink",
		"arrayName":"authority.menuLinks",
		"mapping":[{"b":"id", "t":"creator.id"},
				   {"b":"fullName", "t":"userName"}
				  ]
		}
}

var menuLink_detailObject ; 
var menuLink_lookupObject ;
var menuLink_detailCounts = new Array();

function menuLink_parse(){
	menuLink_lookupObject = new framework_lookup(menuLink_lookup);
	menuLink_initDetailTabs();
}


function menuLink_lookupPOP(name,index){
	framework_lookup_tempobj = menuLink_lookupObject;
	menuLink_lookupObject.lookupPOP(name);
	if(index!=null){
		framework_lookup_tempIndex = index;
	}
}

function lookupMenuLink(id,linkUrl,displayRef,authority,authorityName,orderNum,menuName,userName){
	var menuLink = {"id":id,"linkUrl":linkUrl,"displayRef":displayRef,"authority":authority,"authorityName":authorityName,"orderNum":orderNum,"menuName":menuName,"userName":userName};
	window.opener.bringBack(menuLink);
	window.close();
}

function menuLink_addNew()
{
	document.formSearch.action=ctx+"/admin/menuLinkView.action?menuLink.id=-1";
	document.formSearch.submit();
}

var menuLink_detailTabs;
function menuLink_initDetailTabs(){
	if($("menuLink_detailTabsDIV")!=null){
	   menuLink_detailTabs = new CUBBYTab("menuLink_detailTabsDIV");
	   menuLink_detailTabs.setTabsName(detailNames);
	   menuLink_detailTabs.setCloseButtons(detailTabButtons);
	   menuLink_detailTabs.setSize(1500,200);   
	   menuLink_detailTabs.show();
   }
}
//Event.observe(window,"load",menuLink_parse);
$j(document).ready(function(){
  $j("window").bind("load",menuLink_parse());
});


//删除提示
function menuLink_Delete(id){
	var para = pageInfo();
	parent.$.messager.confirm('友情提示', '确定要删除吗?', function (r) {
    if (r) {
    
    	document.location.href= ctx+"/admin/menuLinkRemove.action?menuLink.id="+id+"&"+para;
		}
	})
}

function deleteCheckedMenu(id) {
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
    	parent.$.messager.confirm('友情提示', '确定删除选中的信息吗？', function (r) {  
    		if(r){
    			document.getElementById("formSearch").action = ctx+"/admin/menuLinkRemoveAll.action?menuLinkIndexs="+ids;
    			document.getElementById("formSearch").submit();
    		}
    	})		
    	
   }else{
	   parent.$.messager.alert('友情提示', '至少选择一条信息', 'info');
   }
}

function check_mLink(){
	document.getElementById("check_mLink_dis").innerHTML="";
	document.getElementById("check_mLink_url").innerHTML="";
	var dis = document.getElementById('menuLink.displayRef').value.trim();
	if(dis==""){
		document.getElementById("check_mLink_dis").innerHTML="二级菜单不能为空！";
		return false;
	}
	
	
}

function check_mLink_num(){
	document.getElementById("check_mLink_num").innerHTML="";
	var orderNum  = document.getElementById('menuLink.orderNum').value;
	if(orderNum != "" && checkNum(orderNum) == false){	
			document.getElementById("check_mLink_num").innerHTML="序列必须为数字类型！";
			return false;
			
	}
}

function onSubmitMenuLink(){
	var dis = document.getElementById('menuLink.displayRef').value.trim();
	if(dis==""){
		parent.$.messager.alert('友情提示','二级菜单不能为空！', 'info')
		return false;
	}
	
	var url = document.getElementById('menuLink.linkUrl').value.trim();
	var oldLinkUrl = document.getElementById('oldLinkUrl').value.trim();
	if(oldLinkUrl == ""){		
		if(url==""){
			parent.$.messager.alert('友情提示', '菜单URL不能为空！', 'info');
			return false;
		}else{
			if(checkMenuLink() == false){
				parent.$.messager.alert('友情提示', '菜单URL不能重复！', 'info');
				return false;
			}
		}
	}else if(oldLinkUrl != url){
		if(url==""){
			parent.$.messager.alert('友情提示', '菜单URL不能为空！', 'info');
			return false;
		}
		if(checkMenuLink() == false){
			parent.$.messager.alert('友情提示', '菜单URL不能重复！', 'info');
			return false;
		}
	}
	
	var m_name = document.getElementById('menuLink.name').value.trim();
	if(m_name==""){
		parent.$.messager.alert('友情提示', '菜单项名称不能为空！', 'info');
		return false;	
	}
	var orderNum  = document.getElementById('menuLink.orderNum').value.trim();
	if(orderNum != "" && checkNum(orderNum) == false){
		parent.$.messager.alert('友情提示', '序列必须为数字类型！', 'info');
		document.getElementById('menuLink.orderNum').value='';
			return false;
			
	}
	
	
	document.forms[0].action = ctx+"/admin/menuLinkSave.action";
	document.forms[0].submit();
}

function checkURl(){
	var url = document.getElementById('menuLink.linkUrl').value.trim();
	var oldLinkUrl = document.getElementById('oldLinkUrl').value.trim();
	if(oldLinkUrl == ""){		
		if(url==""){
			document.getElementById("check_mLink_url").innerHTML="菜单URL不能为空！";
			return false;
		}else{
			if(checkMenuLink() == false){
				document.getElementById("check_mLink_url").innerHTML="菜单URL不能重复！";
				return false;
			}
		}
	}else if(oldLinkUrl != url){
		if(url==""){
			document.getElementById("check_mLink_url").innerHTML="菜单URL不能为空！";
			return false;
		}
		if(checkMenuLink() == false){
			return false;
		}
	}
	
	
}


function checkNum(num){
	var re = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
	if (!re.test(num)){
        return false;
    }else{
    	return true;
    }
}

function checkMenuLink(){
	var flag = false;
	var url = document.getElementById('menuLink.linkUrl').value.trim();
	$j.ajax({
		async: false,
		url: ctx+"/admin/checkMenuLinkName.action",
		type: "post", 
		data: {"linkUrl":url},
		dataType: 'json',
		success: function(data){
			if(data == "succ"){
				//parent.$.messager.alert('友情提示', '菜单名称不能重复！', 'info');
				flag = false;
			}else{
				flag = true;
			}
		}
		
	});
	return flag;
	
}