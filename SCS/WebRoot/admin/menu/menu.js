
var menu_lookup = {
"parentMenu":{
		"url":"menuList.action?lookup=1",
		"domain":"menu",
		"arrayName":"menu.menus",
		"mapping":[{"b":"id", "t":"parentMenu.id"},
				   {"b":"name", "t":"parentMenu.name"}
				  ]
		},
"creator":{
		"url":"hiUserList.action?lookup=1",
		"domain":"menu",
		"arrayName":"menu.menus",
		"mapping":[{"b":"id", "t":"creator.id"},
				   {"b":"fullName", "t":"userName"}
				  ]
		}
}

var menu_detailObject ; 
var menu_lookupObject ;
var menu_detailCounts = new Array();

function menu_parse(){
	menu_lookupObject = new framework_lookup(menu_lookup);
	menu_initDetailTabs();
}


function menu_lookupPOP(name,index){
	framework_lookup_tempobj = menu_lookupObject;
	menu_lookupObject.lookupPOP(name);
	if(index!=null){
		framework_lookup_tempIndex = index;
	}
}

function lookupMenu(id,name,displayRef,parentMenuName,orderNum,userName){
	var menu = {"id":id,"name":name,"displayRef":displayRef,"parentMenuName":parentMenuName,"orderNum":orderNum,"userName":userName};
	window.opener.bringBack(menu);
	window.close();
}

function menu_addNew()
{
	document.formSearch.action= ctx+"/admin/menuView.action?menu.id=-1";
	document.formSearch.submit();
}

var menu_detailTabs;
function menu_initDetailTabs(){
	if($("menu_detailTabsDIV")!=null){
	   menu_detailTabs = new CUBBYTab("menu_detailTabsDIV");
	   menu_detailTabs.setTabsName(detailNames);
	   menu_detailTabs.setCloseButtons(detailTabButtons);
	   menu_detailTabs.setSize(1500,200);   
	   menu_detailTabs.show();
   }
}
Event.observe(window,"load",menu_parse);

//删除提示
function menu_Delete(id){
	var para = pageInfo();
	parent.$.messager.confirm('友情提示', '您确定要删除该一级菜单吗?', function (r) {
    if (r) {
    	//document.location.href="/admin/menuRemove.action?menu.id="+id+"&pageInfo.currentPage=1"+"&"+para;
    	document.forms[0].action = ctx+"/admin/menuRemove.action?menu.id=" + id;
		document.forms[0].submit();
	}
	})
}

function checkMenu(){
	document.getElementById("check_menu_dis").innerHTML="";
	var m_dif = document.getElementById('menu.displayRef').value.trim();
	if(m_dif==""){
		document.getElementById("check_menu_dis").innerHTML="一级菜单名称不能为空！";
		return false;	
	}
	
}

function check_menu_name(){
	document.getElementById("check_menu_name").innerHTML="";
	var name = document.getElementById('menu.name').value.trim();
	var oldName = document.getElementById('oldName').value.trim();
	if(oldName==""){		
		if(name==""){
			document.getElementById("check_menu_name").innerHTML=" 英文名称不能为空！";
			
			return false;
		}else{
			if(checkMenuName() == false){
				document.getElementById("check_menu_name").innerHTML=" 菜单名称不能重复！！";
				return false;
			}
		}
	}else if(oldName != name){
		if(name==""){
			document.getElementById("check_menu_name").innerHTML=" 英文名称不能为空！";
			return false;
		}
		if(checkMenuName() == false){
			document.getElementById("check_menu_name").innerHTML=" 菜单名称不能重复！";
			return false;
		}
	}
	
}

function check_menu_num(){
	document.getElementById("check_menu_num").innerHTML="";
	var orderNum  = document.getElementById('menu.orderNum').value;
	if(orderNum != "" && checkNum(orderNum) == false){
			
			document.getElementById("check_menu_num").innerHTML="序列必须为数字类型！";
			//document.getElementById('menu.orderNum').value='';
			return false;
			
	}
}

function  onSubmit(){
	
	
	var name = document.getElementById('menu.name').value.trim();
	var oldName = document.getElementById('oldName').value.trim();
	if(oldName==""){		
		if(name==""){
			parent.$.messager.alert('友情提示', '英文名称不能为空！', 'info');
			return false;
		}else{
			if(checkMenuName() == false){
				parent.$.messager.alert('友情提示', '菜单名称不能重复！', 'info');
				return false;
			}
		}
	}else if(oldName != name){
		if(name==""){
			parent.$.messager.alert('友情提示', '英文名称不能为空！', 'info');
			return false;
		}
		if(checkMenuName() == false){
			parent.$.messager.alert('友情提示', '菜单名称不能重复！', 'info');
			return false;
		}
	}
	
	var m_dif = document.getElementById('menu.displayRef').value.trim();
	if(m_dif==""){
		parent.$.messager.alert('友情提示', '一级菜单名称不能为空！', 'info');
		return false;	
	}
	var orderNum  = document.getElementById('menu.orderNum').value;
	if(orderNum != "" && checkNum(orderNum) == false){
			parent.$.messager.alert('友情提示', '序列必须为数字类型！', 'info');
			document.getElementById('menu.orderNum').value='';
			return false;
			
	}
	
	
	document.forms[0].action = ctx+"/admin/menuSave.action";
	document.forms[0].submit();
}

function checkNum(num){
	var re = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
	if (!re.test(num)){
        return false;
    }else{
    	return true;
    }
}

function checkMenuName(){
	var flag = false;
	var name = document.getElementById('menu.name').value.trim();
	$j.ajax({
		async: false,
		url: ctx+"/admin/checkMenuName.action",
		type: "post", 
		data: {"name":name},
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