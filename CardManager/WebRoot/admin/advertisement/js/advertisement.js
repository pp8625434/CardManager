function edit_advertisement(id){
	var para = pageInfo();
	var str = ctx+"/advertisement/toEditAdvertisement.action?advertisement.id="+id+"&"+para;
	parent.addTab("编辑广告信息",str,"icon icon-nav");
}

function add_advertisement(){
	var para = pageInfo();
	var str = ctx+"/advertisement/toEditAdvertisement.action";
	parent.addTab("新增广告信息",str,"icon icon-nav");
}

function advertisement_info(id){
	var para = pageInfo();
	parent.addTab("广告信息详情",ctx+"/advertisement/advertisementInfo.action?advertisement.id="+id+"&"+para,"icon icon-nav");		
}


function onSubEdit(){
	var adname =  $j("#adname").val();
	var imgurl =  $j("#imgnull").val();
	var pxorder =  $j("#pxorder").val();
	var orgid =  $j("#orgid").val().trim();
	
	if("" == orgid){
		parent.$.messager.alert('友情提示', '社区不能为空', 'info');
		$j("#orgid").focus();
		return false;
	}
	
	if(adname==""){
		parent.$.messager.alert('友情提示', '广告标题不能为空！', 'info');
		$j("#adname").focus();
		return false;
	}

	if(imgurl==null || imgurl==''){
		parent.$.messager.alert('友情提示', '请选择图片！', 'info');
		$j("#imgurl").focus();
		return false;
	}
	if(pxorder==""){
		parent.$.messager.alert('友情提示', '排序不能为空！', 'info');
		$j("#pxorder").focus();
		return false;
	}
	
	document.forms[0].submit();
}



//删除选中
function delAll_advertisement() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个广告!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除广告吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/advertisement/delAdvertisement.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_advertisement(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该广告信息吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/advertisement/delAdvertisement.action?ids="+id;
		document.formSearch.submit();
		}
	})
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
	$j("#imgnull").val("notNull");		//图片非空判断
	return true; 
} 
