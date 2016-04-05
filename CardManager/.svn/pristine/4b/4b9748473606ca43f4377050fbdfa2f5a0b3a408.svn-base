function card_info(id){
	var para = pageInfo();
	parent.addTab("卡片信息详情",ctx+"/card/cardInfo.action?card.id="+id+"&"+para,"icon icon-nav");		
}
function edit_card(id){
	var para = pageInfo();
	var str = ctx+"/card/cardEdit.action?card.id="+id+"&"+para;
	parent.addTab("编辑卡片信息",str,"icon icon-nav");
}
function add_card(){
	parent.addTab("新增卡片信息",ctx+"/card/cardEdit.action","icon icon-nav");
}

function del_card(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该卡片信息吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/card/cardDelete.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function delAll_card(){
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
		parent.$.messager.alert("友情提示", "请选择至少一个卡片信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的卡片信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/card/cardDelete.action?ids="+cid;
			document.getElementById("formSearch").submit();
		}
	});
}

function saveCardInfo(){

	var orgid =  $j("#orgid").val().trim();
	var cardnum =  $j("#cardnum").val().trim();
	var cellphone =  $j("#cellphone").val().trim();
	var oldNum =  $j("#oldNum").val().trim();
	var name =  $j("#name").val().trim();
	var identitycard =  $j("#identitycard").val().trim();
	var oldIcard =  $j("#oldIcard").val().trim();
	var phone = $j("#phone").val().trim();
	
	if("" == orgid){
		parent.$.messager.alert('友情提示', '社区id不能为空', 'info');
		$j("#orgid").focus();
		return false;
	}
	if("" == cardnum){
		parent.$.messager.alert('友情提示', '卡号不能为空', 'info');
		$j("#cardnum").focus();
		return false;
	}
	if("" == name){
		parent.$.messager.alert('友情提示', '姓名不能为空', 'info');
		$j("#name").focus();
		return false;
	}
	if("" == cellphone){
		parent.$.messager.alert('友情提示', '手机号不能为空', 'info');
		$j("#cellphone").focus();
		return false;
	}
	if("" != cellphone){
		var regu="^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
		var re=new RegExp(regu);
		if($j("#cellphone").val().length > 11){
			parent.$.messager.alert('友情提示', '手机号不能超过11位！', 'info');
			$j("#cellphone").focus();
			return false;
		}
		if(!re.test(cellphone)){
			parent.$.messager.alert('友情提示', '手机号格式不正确！', 'info');
			$j("#cellphone").focus();
			return false;
		}
	}
	if("" == identitycard){
		parent.$.messager.alert('友情提示', '身份证号码不能为空', 'info');
		$j("#identitycard").focus();
		return false;
	}

	if("" !=identitycard){
		var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;  
   		if(!reg.test(identitycard)){
   			parent.$.messager.alert('友情提示', '身份证号码格式不正确！', 'info');
			$j("#identitycard").focus();
			return false;
   		}
	}
	if("" == oldNum || cardnum != oldNum){
		$j.ajax({
			async:false,
			url: ctx+"/card/checkCardNum.action",
			type: "post", 
			data: {"cardnum":cardnum},
			dataType: 'json',
			success: function(data){
				if(data == 'succ'){
					parent.$.messager.alert('友情提示', '卡号已存在', 'info');
					$j("#cardnum").focus();
					return false;
				}else{
					if("" == oldIcard || identitycard != oldIcard){
						$j.ajax({
							async:false,
							url: ctx+"/card/checkIcard.action",
							type: "post", 
							data: {"identitycard":identitycard},
							dataType: 'json',
							success: function(data){
								if(data == 'succ'){
									parent.$.messager.alert('友情提示', '身份证号已存在', 'info');
									$j("#identitycard").focus();
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
			}
		});
	}else{
		if("" == oldIcard || identitycard != oldIcard){
			$j.ajax({
				async:false,
				url: ctx+"/card/checkIcard.action",
				type: "post", 
				data: {"identitycard":identitycard},
				dataType: 'json',
				success: function(data){
					if(data == 'succ'){
						parent.$.messager.alert('友情提示', '身份证号已存在', 'info');
						$j("#identitycard").focus();
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
}

function selectProject(id,cardnum,name,identitycard,cellphone){
	window.opener.window.setProjectvalue(id,cardnum,name,identitycard,cellphone);
	window.opener = null;
	window.close();
}
