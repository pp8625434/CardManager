/**
  Copyright (c) 2012-09-26, hqt 
  All rights reserved.
  @author hqt
  @see basic js grammer
  @version 1.0 
 */

var sort = "";
var direction = "";
function sortBy(sortField) {
	
	direction = document.getElementById("pageInfo.sorterDirection").value;
	sort = document.getElementById("pageInfo.sorterName").value = sortField;
	if (sort == sortField) {
		if (direction == "ASC" || direction == "") {
			direction = "DESC";
			
		} else {
			direction = "ASC";
		}
	} else {
		direction = "ASC";
		sort = sortField;
	}
	
	document.getElementById("pageInfo.sorterName").value = sortField;
	document.getElementById("pageInfo.sorterDirection").value = direction;
	document.formSearch.submit();
}

// check required field 
function checkValue(fieldStr)
{
	var checkOk=true;
  if (fieldStr.length==0)
  return   checkOk;
  
        var arrayFieldName = fieldStr.split(',');
        var i;		
        for (i=0; i<arrayFieldName.length; i++)
        {
            var obj = document.getElementById(arrayFieldName[i]);
            if (obj.value == null || obj.value.trim() == "")
            {
            	var labelObj = document.getElementById(arrayFieldName[i] + "Label");
               	var msg = "\u8bf7\u8f93\u5165\u7ea2\u8272\u7684\u5fc5\u987b\u586b\u5199\u9879"
               	if(labelObj != null)
               		msg+="\n" + labelObj.innerText;
               	//alert(msg);
               	parent.$.messager.alert('\u53cb\u60c5\u63d0\u793a', msg, 'info');
                obj.focus();
				checkOk=false;
				break;
                //return false;
            }
        }
  
	return checkOk;
}

function selectAll(flag) {
	if(formSearch.orderId==undefined){
		return;
	}else{
		if(flag=="true"){
			formSearch.chkall.checked=true;
		}
	  	formSearch.orderId.checked= formSearch.chkall.checked
		for (var i = 0; i < formSearch.orderId.length; i++) {
			//alert("-----" + formSearch.orderId[i].disabled);
			if(formSearch.orderId[i].disabled == false){
				formSearch.orderId[i].checked = formSearch.chkall.checked;
			}
		}
	}
}
function selectCancel() {
	if(formSearch.orderId==undefined){
		return;
	}
 	formSearch.chkall.checked=false;
  	formSearch.orderId.checked=false;
	for (var i = 0; i < formSearch.orderId.length; i++) {
		formSearch.orderId[i].checked = false;
	}
}
function deleteChecked(tableName) {
	var idString = "";
	if (formSearch.orderId.length==undefined)
	{
	if (formSearch.orderId.checked == true)
	idString = formSearch.orderId.value
	}
	else{
		for (var i = 0; i < formSearch.orderId.length; i++) {
			if (formSearch.orderId[i].checked == true) {
				idString = idString + "," + formSearch.orderId[i].value;
			}
		}
	}
	if (idString.length == 0) {
		//alert("\u8bf7\u5148\u9009\u62e9\u8981\u5220\u9664\u7684\u8bb0\u5f55\uff01");
		parent.$.messager.alert('\u53cb\u60c5\u63d0\u793a', '\u8bf7\u5148\u9009\u62e9\u8981\u5220\u9664\u7684\u8bb0\u5f55\uff01', 'info');
		return;
	}
	//�޸���ʾ����
	//if (confirm("\u786e\u5b9e\u8981\u5220\u9664\u8fd9\u4e9b\u8bb0\u5f55\u5417\uff1f")) {
		//document.formSearch.action = tableName+"RemoveAll.action?orderIndexs=" + idString;
		//document.formSearch.submit();
	//}
	parent.$.messager.confirm('\u53cb\u60c5\u63d0\u793a', '\u786e\u5b9e\u8981\u5220\u9664\u8fd9\u4e9b\u8bb0\u5f55\u5417\uff1f', function (r){
	if (r) {
		if(idString.slice(0, 1) == ","){
			idString = idString.substring(1);
		}
		document.formSearch.action = tableName+"RemoveAll.action?orderIndexs=" + idString;
		document.formSearch.submit();
	}
	})
}
function sortInit(){
	if(document.getElementById("pageInfo.sorterName") != null){
	//if($("pageInfo.sorterName")!=null){
		sort = document.getElementById("pageInfo.sorterName").value;
		direction = document.getElementById("pageInfo.sorterDirection").value;
	}
}
function formSearchSubmit(){
	var currentPage = $j("#currentPage");
	var pageInfo = $j("#pageInfo\\.currentPage");
	if(currentPage){
		currentPage.val(1);
	}
	if(pageInfo){
		pageInfo.val(1);	
	}
	$j("#formSearch").submit();
}
function pageSubmit(currentPageName,action,formName,targetPage){
	//$(currentPageName+".currentPage").value = targetPage; // prototype
	document.getElementById(currentPageName+".currentPage").value = targetPage;
	document.getElementById("currentPage").value = targetPage;
	//debugger;
	//$(formName).action = action; // prototype
	document.getElementById(formName).action = action;
	 
	document.getElementById(formName).submit();

}
function checkThenSubmit(currentPageName,action,formName,targetPage,totalPage){
	var pageNum = targetPage;
	var re = /^[1-9]\d*$/;
	if(!re.test(pageNum)){
		parent.$.messager.alert('\u53cb\u60c5\u63d0\u793a', '请输入正确页数！', 'info');
		return false;
	}
	if(parseInt(targetPage)>parseInt(totalPage)){
		pageNum = totalPage;
	}
	if(parseInt(targetPage)<=0){
		pageNum = "1";
	}
	pageSubmit(currentPageName,action,formName,pageNum);
}
window.onload = sortInit;

$j(function(){
	var currtab_title = parent._operatorName_;
	$j('.chancleButton').live('click',function(){
		parent.chancleButton(currtab_title);
	})
})
function pageInfo(){
	var obj = "";
	$j("input[name^='pageInfo']").map(function(){
		obj = obj + $j(this).attr('name') + "=" + $j(this).val()+"&";
	});
	obj = obj.substring(0,obj.length-1);
	obj = encodeURI(obj);
	obj = encodeURI(obj);
	return obj;
}

function getbrowse(){ //判断当前浏览器是何种浏览器
	var str="";
	// 包含「Opera」文字列
	Agent=navigator.userAgent;
	if(Agent.indexOf("Opera") != -1) {
	str='Opera';
	}
	// 包含「MSIE」文字列
	else if(Agent.indexOf("MSIE") != -1) {
	str='MSIE';
	}
	// 包含「Firefox」文字列
	else if(Agent.indexOf("Firefox") != -1) {
		str='Firefox';
	}
	// 包含「Netscape」文字列
	else if(Agent.indexOf("Netscape") != -1) {
		str='Netscape';
	}
	// 包含「Safari」文字列
	else if(Agent.indexOf("Safari") != -1) {
		str='Safari';
	}else{  
	}  
	return str;
}

// 文件上传时，验证本地是否存在该文件（pathStr:文件路径）
function uploadFileValidatorNO(pathStr){
	//return true;
	var flag = false;
	var apths = pathStr.split("\\");
	var filespec = apths[0];
	for(var j = 1; j < apths.length; j++){
		filespec = filespec + "/" + apths[j];
	}
	var fso,s = filespec;   // filespec="C:/path/myfile.txt"
	fso=new ActiveXObject("Scripting.FileSystemObject");
	if(fso.FileExists(filespec)){
		//s+=" exists.";
		flag = true;
	}else{
		//s+=" doesn't exist.";alert(s);
		flag = false;		 
	}
	return flag;
}
// ajax验证上传的文件是否存在
function uploadFileValidator(id){
	return true;
	var flag = false;
	var docObj = document.getElementById(id);
	var pathStr = '';
	if(docObj.files && docObj.files[0]){ 
		//alert(docObj.files + "---" + docObj.value);
		pathStr = window.URL.createObjectURL(docObj.files[0]);
		return true;  
	}else{ 
		//IE下，使用滤镜 
		docObj.select(); 
		pathStr = document.selection.createRange().text;  
	}
	$j.ajax({
		async: false,
		url: ctx+"/user/checkFileExist.action",
		type: "post", 
		data: {"fileExist":pathStr},
		dataType: 'json',
		success: function(data){
			if(data == "succ"){
				flag = true;
			}else{
				flag = false;
			}
		}
	});
	return flag;
}


/*禁用backspace键的后退功能，但是可以删除文本内容*/  
//document.onkeydown = check;   
/*function check(e) {   
    var code;   
    if (!e) var e = window.event;   
    if (e.keyCode) code = e.keyCode;   
    else if (e.which) code = e.which;   
    var obj = e.srcElement?e.srcElement:e.target;   
    var keycode = e.keyCode?e.keyCode:e.which;   
    if (((keycode == 8) &&   //BackSpace    
         ((obj.type != "text" &&    
         obj.type != "textarea" &&    
         obj.type != "password") ||    
         obj.readOnly == true)) ||    
        ((e.ctrlKey) && ((keycode == 78) || (keycode == 82)) ) ||    //CtrlN,CtrlR   
        (keycode == 116) ) {                                                   //F5    
        if(window.event){   
            event.keyCode = 0;    
            event.returnValue = false;    
        }else{   
            e.preventDefault();   
        }   
    }   
    return true;   
}*/

//去掉字符串头尾空格   
function trimStr(str) {   
    return str.replace(/(^\s*)|(\s*$)/g, "");   
}
