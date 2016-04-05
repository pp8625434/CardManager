function merchant_info(id){
	var para = pageInfo();
	parent.addTab("商铺信息详情",ctx+"/merchant/merchantInfo.action?merchant.id="+id+"&"+para,"icon icon-nav");		
}
function edit_merchant(id){
	var para = pageInfo();
	var str = ctx+"/merchant/merchantEdit.action?merchant.id="+id+"&"+para;
	parent.addTab("编辑商铺信息",str,"icon icon-nav");
}
function add_merchant(){
	parent.addTab("新增商铺信息",ctx+"/merchant/merchantEdit.action","icon icon-nav");
}

function del_merchant(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该商铺信息吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/merchant/merchantDelete.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function delAll_merchant(){
	var obj=document.getElementsByName("orderId");
	var cid="";
	if(formSearch.orderId.length == undefined){
		if (formSearch.orderId.checked == true){
			cid=formSearch.orderId.value;
		}
	}else{
		for(var i=0;i<obj.length;i++){
			if(obj[i].checked==true){
				cid = cid +","+obj[i].value;
			}
		}
	}
	if(cid.length==0){
		parent.$.messager.alert("友情提示", "请选择至少一个商铺信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的商铺信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/merchant/merchantDelete.action?ids="+cid;
			document.getElementById("formSearch").submit();
		}
	});
}

function saveMerchantInfo(){
	var mname =  $j("#mname").val().trim();
	var phone =  $j("#phone").val().trim();
	var oldMname =  $j("#oldMname").val().trim();
	if("" == mname){
		parent.$.messager.alert('友情提示', '商铺名称不能为空', 'info');
		$j("#mname").focus();
		return false;
	}
	if("" != phone){
		var regu="^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
		var re=new RegExp(regu);
		if($j("#phone").val().length > 11){
			parent.$.messager.alert('友情提示', '联系电话不能超过11位！', 'info');
			$j("#phone").focus();
			return false;
		}
		if(!re.test(phone)){
			parent.$.messager.alert('友情提示', '联系电话格式不正确！', 'info');
			$j("#phone").focus();
			return false;
		}
	}
	if("" == oldMname || mname != oldMname){
		$j.ajax({
			async:false,
			url: ctx+"/merchant/checkMname.action",
			type: "post", 
			data: {"mname":mname},
			dataType: 'json',
			success: function(data){
				if(data == 'succ'){
					parent.$.messager.alert('友情提示', '商铺名称已存在', 'info');
					$j("#mname").focus();
					return false;
				}else{
					$j("#formSearch").submit();
				}
			}
		});
	}else{
		$j("#formSearch").submit();
	}
}

function selectProject(id,pname){
	
	window.opener.window.setProjectvalue(id,pname);
	window.opener = null;
	window.close();
}
function selectProjectSource(id,pname){
	window.opener.window.setProjectvalueSource(id,pname);
	window.opener = null;
	window.close();
}