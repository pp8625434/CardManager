var setting = {
	view: {
		dblClickExpand: false
	},
	data: {
		simpleData: {
			enable: true
		}
	},
	callback: {
		beforeClick: beforeClick,
		onClick: onClick
	}
};

function beforeClick(treeId, treeNode) {
	var cityObj = $j("#citySel");
	cityObj.attr("value", treeNode.name);
	$("#orgName").val(treeNode.name);
	$("#orgId").val(treeNode.id);
	return true;
}

function onClick(e, treeId, treeNode) {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
	nodes = zTree.getSelectedNodes(),
	v = "";
	nodes.sort(function compare(a,b){return a.id-b.id;});
	for (var i=0, l=nodes.length; i<l; i++) {
		v += nodes[i].name + ",";
	}
	if (v.length > 0 ) v = v.substring(0, v.length-1);
	var cityObj = $j("#orgname");
	cityObj.attr("value", v);
	$("#orgname").val(treeNode.name);
	$("#orgid").val(treeNode.id);
	hideMenu();
}

function showMenu() {
	var cityObj = $j("#orgname");
	var cityOffset = $j("#orgname").offset();
	if(window.ActiveXObject){
		$j("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight()+document.body.scrollTop + "px"}).slideDown("fast");
	}else{
		$j("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
 
	}
	$j("body").bind("mousedown", onBodyDown);
}
function hideMenu() {
	$j("#menuContent").fadeOut("fast");
	$j("body").unbind("mousedown", onBodyDown);
}
 
function onBodyDown(event) {
	if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $j(event.target).parents("#menuContent").length>0)) {
		hideMenu();
	}
} 

function removeDate(){
	$j("#orgname").val("");
	$j("#orgid").val("");
}


$j(document).ready(function(){
	if($j("#cid").val()==""){
		var zNodes = Array();
		$.ajax({
			type: "POST",
			url: ctx+"/organization/getOrganizationTree.action",
			data: {},
			async: false,
			success: function(data){
				zNodes = data;
			}
		}); 
		
		$.fn.zTree.init($j("#treeDemo"), setting, zNodes);
	}else if($j("#orgid").val()!=""){
		$.ajax({
			type: "POST",
			url: ctx+"/organization/getOrganizationById.action",
			data: {"otagid":$j("#orgid").val()},
			async: false,
			success: function(data){
				$j("#orgname").html(data);
			}
		}); 
	}
});

