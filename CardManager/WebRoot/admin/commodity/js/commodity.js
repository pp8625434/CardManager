function edit_commodity(id){
	var para = pageInfo();
	var str = ctx+"/admin/toEditCommodity.action?commodity.id="+id+"&"+para;
	parent.addTab("编辑商品信息",str,"icon icon-nav");
}

function add_commodity(){
	var para = pageInfo();
	var str = ctx+"/admin/toEditCommodity.action";
	parent.addTab("新增商品信息",str,"icon icon-nav");
}

function commodity_info(id){
	var para = pageInfo();
	parent.addTab("商品信息详情",ctx+"/admin/commodityInfo.action?commodity.id="+id+"&"+para,"icon icon-nav");		
}

$j(document).ready(function(){
	$j("#cname").blur(function(){
		$j("#appendStr").empty();
		var warename =  $j("#cname").val().trim();
		if(warename==""){
			$j("#appendStr").append("商品名称不能为空！");
			return false;
		}
	});
	$j("#price").blur(function(){
		$j("#appendStr1").empty();
		var price =  $j("#price").val().trim();
		if(price==""){
			$j("#appendStr1").append("商品单价不能为空！");
			return false;
		}
	});
	$j("#unit").blur(function(){
		$j("#appendStr2").empty();
		var unit =  $j("#unit").val().trim();
		if(unit==""){
			$j("#appendStr2").append("商品单位不能为空！");
			return false;
		}
	});
	
	$j("#mname").blur(function(){
		$j("#appendStr3").empty();
		var wtname =  $j("#mname").val().trim();
		if(wtname==""){
			$j("#appendStr3").append("商铺名称不能为空！");
			return false;
		}
	});
	
	$j("#sourcename").blur(function(){
		$j("#appendStr4").empty();
		var sourcename =  $j("#sourcename").val().trim();
		if(sourcename==""){
			$j("#appendStr4").append("商品来源不能为空！");
			return false;
		}
	});
	
});
function onSubEdit(){
	var cname =  $j("#cname").val().trim();
	var price =  $j("#price").val().trim();
	var unit =  $j("#unit").val().trim();
	var mid =  $j("#mid").val();
	var sourceid =  $j("#sourceid").val();
	
	if(mid==""){
		parent.$.messager.alert('友情提示', '请选择商铺！', 'info');
		$j("#mname").focus();
		return false;
	}
	if(sourceid==""){
		parent.$.messager.alert('友情提示', '请选择商品来源！', 'info');
		$j("#sourcename").focus();
		return false;
	}
	
	if(cname==""){
		parent.$.messager.alert('友情提示', '商品名称不能为空！', 'info');
		$j("#cname").focus();
		return false;
	}
	if(price==""){
		parent.$.messager.alert('友情提示', '商品单价不能为空！', 'info');
		$j("#price").focus();
		return false;
	}
	if(unit==""){
		parent.$.messager.alert('友情提示', '商品单位不能为空！', 'info');
		$j("#unit").focus();
		return false;
	}
	document.forms[0].submit();
}



//删除选中
function delAll_commodity() {
	var obj = document.getElementsByName("orderId");
	var idString = "";
	if (formSearch.orderId.length == undefined) {
		if (formSearch.orderId.checked == true) {
			idString = formSearch.orderId.value;
		}
	} else {
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked == true) {
				idString = idString + "," + obj[i].value;
			}
		}
	}
	if (idString.length == 0) {
		parent.$.messager.alert("友情提示", "请至少选中一个商品!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除商品吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/admin/delCommodity.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function commodityIsused(isused){
	var obj = document.getElementsByName("orderId");
	var idString = "";
	if (formSearch.orderId.length == undefined) {
		if (formSearch.orderId.checked == true) {
			idString = formSearch.orderId.value;
		}
	} else {
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked == true) {
				idString = idString + "," + obj[i].value;
			}
		}
	}
	if (idString.length == 0) {
		parent.$.messager.alert("友情提示", "请至少选中一个商品!", "info");
		return;
	}
	if(isused == '1'){
		parent.$.messager.confirm("友情提示", "确定要上架选中商品吗？", function (r) {
			if (r) {
				
				document.getElementById("formSearch").action = ctx + "/admin/commodityIsusedY.action?ids=" + idString ;
				document.getElementById("formSearch").submit();
			}
		});
	}else if(isused == '0'){
		parent.$.messager.confirm("友情提示", "确定要下架选中商品吗？", function (r) {
			if (r) {
				document.getElementById("formSearch").action = ctx + "/admin/commodityIsusedN.action?ids=" + idString ;
				document.getElementById("formSearch").submit();
			}
		});
	}
}

function del_commodity(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该商品信息吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/admin/delCommodity.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function selectProject(){
	window.open(ctx+"/merchant/merchantList.action?lookup=1", 'anyname' , 'width=1300,height=735,scrollbars=yes');	
}

function selectProjectSource(){
	window.open(ctx+"/merchant/merchantList.action?lookup=2", 'anyname' , 'width=1300,height=735,scrollbars=yes');	
}

function setProjectvalue(id,mname){
	$j("#mid").val(id);
	$j("#mname").val(mname);
}

function setProjectvalueSource(id,mname){
	$j("#sourceid").val(id);
	$j("#sourcename").val(mname);
}

function pathChange(str, id) { 

	var docObj=document.getElementById(id); 
	var imgObjPreview=document.getElementById("hpath" + str); 
	if(docObj.files && docObj.files[0]){ 
		//火狐下，直接设img属性 
		imgObjPreview.style.display = 'block'; 
		imgObjPreview.style.width = '550px'; 
		imgObjPreview.style.height = '250px'; 
		//imgObjPreview.src = docObj.files[0].getAsDataURL(); 
		//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式 
		imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]); 
	}else{ 
		//IE下，使用滤镜 
		docObj.select(); 
		var imgSrc = document.selection.createRange().text; 
		var localImagId = document.getElementById("localImag" + str); 
		//必须设置初始大小 
		localImagId.style.width = "550px"; 
		localImagId.style.height = "250px"; 
		//图片异常的捕捉，防止用户修改后缀来伪造图片 
		try{ 
			localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)"; 
			localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc; 
		}catch(e){ 
			alert("您上传的图片格式不正确，请重新选择!"); 
			return false; 
		} 
		
		imgObjPreview.style.display = 'none'; 
		document.selection.empty(); 
	} 
	//$j("#imgnull").val("notNull");		//图片非空判断
	return true; 
} 