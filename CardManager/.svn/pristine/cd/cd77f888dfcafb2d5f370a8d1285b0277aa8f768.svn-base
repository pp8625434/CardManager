/**
 * 
 * 
 * 
 */
// 删除Ldesc信息
function deleteChecked(id) {
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
    			document.getElementById("formSearch").action = ctx+"/admin/removeLdescById1.action?ids="+ids;
    			document.getElementById("formSearch").submit();
    		}
    	})		
    	
   }else{
	   parent.$.messager.alert('友情提示', '至少选择一条信息', 'info');
   }
}

//添加或修改Ldesc信息
function  onSubmit(){
	if($j("#ldescName").val()==""){
		parent.$.messager.alert('友情提示', '名称不能为空', 'info');
	}else{
		document.getElementById("formSearch").action = ctx+"/admin/saveLdes1.action";
		document.getElementById("formSearch").submit();
	}
}

function checkName(){
	$j("#ldesc_name").empty();
	if($j("#ldescName").val()==""){
		$j("#ldesc_name").html("名称不能为空");
	}else{
		$j("#ldesc_name").empty();
	}
}


function pathChange(str, id) { 
	var docObj=document.getElementById(id); 
	var imgObjPreview=document.getElementById("hpath" + str); 
	if(docObj.files && docObj.files[0]){ 
		//火狐下，直接设img属性 
		imgObjPreview.style.display = 'block'; 
		imgObjPreview.style.width = '175px'; 
		imgObjPreview.style.height = '115px'; 
		//imgObjPreview.src = docObj.files[0].getAsDataURL(); 
		//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式 
		imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]); 
	}else{ 
		//IE下，使用滤镜 
		docObj.select(); 
		var imgSrc = document.selection.createRange().text; 
		var localImagId = document.getElementById("localImag" + str); 
		//必须设置初始大小 
		localImagId.style.width = "175px"; 
		localImagId.style.height = "115px"; 
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
	return true; 
} 