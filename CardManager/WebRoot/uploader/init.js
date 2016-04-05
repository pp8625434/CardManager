
function uploadFile(serviceurl,method){
	
    $('#selectFile').uploader({
        action: serviceurl+method,   //服务端脚本
        mode: 'flash',        //上传模式，html5/flash
        name: "FileItem",           //字段名
        formData: {},           //
        multiple: false,         //是否多选
        auto: true,            //是否自动上传
		//debug:true,
        preview: false,
        showQueue: '#queue',                        //显示队列的位置（传递jQuery选择器自定义队列显示的元素，传递true自动生成队列）
        fileSizeLimit: '20M',                        //文件大小限制（'100kb' '5M' 等）
        fileTypeDesc: '选择图片文件',      //可选择的文件的描述，用中竖线分组。此字符串出现在浏览文件对话框的文件类型下拉中
        fileTypeExts: 'jpg,jpeg,gif,png',        //允许上传的文件类型类表，用逗号分隔多个扩展，用中竖线分组（eg: 'jpg,jpeg,gif,png | zip,rar'）
        onSuccess: function(e){
        	var temp = eval(e.data.replace("[","(").replace("]",")"));
        	var obj = eval(temp);
        	if(obj.error =="0"){
        		alert("上传图片失败，请重试！");
        	}else if(obj.ok =="0"){  
        		var h = "<img  src='"+serviceurl+obj.url+"'style=\"width: 300px; height: 200px;\" />";
				$("#showMsg").html(h);
				$("#path").val(serviceurl+obj.url);
        	}
       
        }
    }); 
}

function clearpath(){
	$("#showMsg").html("<img  src='"+ctx+"/admin/images/qsimage.jpg' style=\"width: 300px; height: 200px;\" />");
	$("#path").val("");
}

function uploadFile2(serviceurl,method){
	
    $('#selectFile2').uploader({
        action: serviceurl+method,   //服务端脚本
        mode: 'flash',        //上传模式，html5/flash
        name: "FileItem",           //字段名
        formData: {},           //
        multiple: false,         //是否多选
        auto: true,            //是否自动上传
		//debug:true,
        preview: false,
        showQueue: '#queue2',                        //显示队列的位置（传递jQuery选择器自定义队列显示的元素，传递true自动生成队列）
        fileSizeLimit: '20M',                        //文件大小限制（'100kb' '5M' 等）
        fileTypeDesc: '选择图片文件',      //可选择的文件的描述，用中竖线分组。此字符串出现在浏览文件对话框的文件类型下拉中
        fileTypeExts: 'jpg,jpeg,gif,png',        //允许上传的文件类型类表，用逗号分隔多个扩展，用中竖线分组（eg: 'jpg,jpeg,gif,png | zip,rar'）
        onSuccess: function(e){
        	var temp = eval(e.data.replace("[","(").replace("]",")"));
        	var obj = eval(temp);
        	if(obj.error =="0"){
        		alert("上传图片失败，请重试！");
        	}else if(obj.ok =="0"){  
        		var h = "<img  src='"+serviceurl+obj.url+"'style=\"width: 300px; height: 200px;\" />";
				$("#showMsg2").html(h);
				$("#path2").val(serviceurl+obj.url);
        	}
       
        }
    }); 
}

function clearpath2(){
	$("#showMsg2").html("<img  src='"+ctx+"/admin/images/qsimage.jpg' style=\"width: 300px; height: 200px;\" />");
	$("#path2").val("");
}

/*function removefile(newfilename){
	document.getElementById("showMsg").removeChild(document.getElementById(newfilename));
	var newfile1 = "";
	var oldfile1 = "";
	var filesize1 = "";
	var newfile = $("#newfilename").val();
	var oldfile = $("#oldfilename").val();
	var filesize = $("#filesize").val();
	var nf = newfile.split(",");
	var of = oldfile.split(",");
	var fs = filesize.split(",");
	var thei = -1;
	for(var i=0;i<nf.length;i++){
		if(nf[i]==newfilename){
			thei = i;
		}else{
			if(newfile1 == ""){
				newfile1 = nf[i];
			}else{
				newfile1 += ","+ nf[i];
			}
		}
	}
	for(var i=0;i<nf.length;i++){
		if(i != thei){
			if(oldfile1 == ""){
				oldfile1 = of[i];
			}else{
				oldfile1 += ","+ of[i];
			}
		}
	}
	for(var i=0;i<nf.length;i++){
		if(i != thei){
			if(filesize1 == ""){
				filesize1 = fs[i];
			}else{
				filesize1 += ","+ fs[i];
			}
		}
	}
	
	$("#newfilename").val(newfile1);
	$("#oldfilename").val(oldfile1);
	$("#filesize").val(filesize1);
}*/


