function add_internetdeclear(){
	parent.addTab("新增计算机国际联网申报审批",ctx+"/internetdeclear/internetdeclearEdit.action","icon icon-nav");
}
function edit_internetdeclear(id){
	var para = pageInfo();
	var str = ctx+"/internetdeclear/internetdeclearEdit.action?internetdeclear.id="+id+"&"+para;
	parent.addTab("编辑计算机国际联网申报审批",str,"icon icon-nav");
}
function internetdeclear_info(id){
	var para = pageInfo();
	var str = ctx+"/internetdeclear/internetdeclearInfo.action?internetdeclear.id="+id+"&"+para;
	parent.addTab("查看计算机国际联网申报审批",str,"icon icon-nav");
}
function saveInternetdeclear(){
	$j("#formSearch").submit();
}
function del_internetdeclear(id){
	parent.$.messager.confirm('友情提示','您确定要删除该计算机国际联网申报审批吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/internetdeclear/delInternetdeclear.action?ids="+id;
			document.formSearch.submit();
		}
	});
}
function delAll_internetdeclear(){
	var obj = document.getElementsByName("orderId");
	var lids = "";
	if(formSearch.orderId.length == undefined){
		if(formSearch.orderId.checked == true){
			lids = formSearch.orderId.value;
		}
	}else{
		for(var i =0;i<obj.length;i++){
			if(obj[i].checked == true){
				lids = lids +","+obj[i].value;
			}
		}
	}
	if(lids.length == 0){
		parent.$.messager.alert('友情提示','请至少选择一个计算机国际联网申报审批','info');
		return;
	}
	parent.$.messager.confirm('友情提示','您确定要删除选中的计算机国际联网申报审批',function(r){
		if(r){
			document.getElementById("formSearch").action=ctx+"/internetdeclear/delInternetdeclear.action?ids="+lids;
			document.getElementById("formSearch").submit();
		}
	});
}