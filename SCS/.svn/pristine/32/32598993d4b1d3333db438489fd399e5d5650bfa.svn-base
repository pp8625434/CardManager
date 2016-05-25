/**
  Copyright (c) 2012-10-09, hqt 
  All rights reserved.
  @author hqt
  @version 1.0 
 */
function email(value){
//	var myReg = /^[-_A-Za-z0-9]+@([_A-Za-z0-9]+.)+[A-Za-z0-9]{2,3}$/;
    var myReg = /\w+\@\w+\.\w/;
	if(myReg.test(value)) return null;
    return "\u4f60\u8f93\u5165\u7684\u90ae\u7bb1\u5730\u5740\u6709\u8bef!";
}

function phone(value){
	var myReg =  /^([0-9]+)(([0-9]|[-])+)([0-9]+)$/;
    if(myReg.test(value)) return null;
    return "\u4f60\u8f93\u5165\u7684\u7535\u8bdd\u53f7\u7801\u6709\u8bef!";
}

function integer(value){
	var myReg =  /^[-+]?([0-9]+)$/;
    if(myReg.test(value)) return null;
    return "\u4f60\u8f93\u5165\u7684\u6574\u6570,\u4e0d\u80fd\u6709\u5c0f\u6570\u70b9\u6216\u662f\u5b57\u7b26!";
}

function float(value){
	if(!isNaN(parseFloat(value)) || value == '')   return null;
    return "\u4f60\u8f93\u5165\u7684\u6574\u6570\u6216\u662f\u5c0f\u6570,\u4e0d\u80fd\u662f\u5b57\u7b26!";
}

function mobile(value){
	var myReg =  /^(13[0-9]|15[0-9]|168|189)\d{8}$/;
    if(myReg.test(value)) return null;
    return "\u4f60\u8f93\u5165\u7684\u624b\u673a\u53f7\u7801\u6709\u8bef!";
}

function taCheckOnChange(taId,maxSize) {  
    var defaultMaxSize = getDefaultMaxSize();  
    var ta = document.getElementById(taId);  
    if(!ta) {  
        return;  
    }  
    if(!maxSize) {  
        maxSize = defaultMaxSize;  
    } else {  
        maxSize = parseInt(maxSize);  
        if(!maxSize || maxSize < 1) {  
            maxSize = defaultMaxSize;  
        }  
    }  
    var taTipDiv =  $j("#"+taId).next("font");   
    taTipDiv.html("当前字数：" + ta.value.length + "，字数限制：" + maxSize);  
　　 if (ta.value.length > maxSize) {  
		parent.$.messager.alert('友情提示', "当前字数 "+ta.value.length+" ，超过最大字符限制数 "+maxSize+" ，点击 \"确定\" 将自动截断。", 'info');
        ta.value=ta.value.substring(0,maxSize);
        taTipDiv.html("当前字数：" + ta.value.length + "，字数限制：" + maxSize);  
    }   
}  

function taCheckOnKeyUp(taId,maxSize) {  
    var defaultMaxSize = getDefaultMaxSize();  
    var ta = document.getElementById(taId);  
    if(!ta) {  
        return;  
    }  
    if(!maxSize) {  
        maxSize = defaultMaxSize;  
    } else {  
        maxSize = parseInt(maxSize);  
        if(!maxSize || maxSize < 1) {  
            maxSize = defaultMaxSize;  
        }  
    }
    if (ta.value.length > maxSize) {  
        ta.value=ta.value.substring(0,maxSize);  
    }   
    var taTipDiv = $j("#"+taId).next("font");
    if(maxSize == ta.value.length){
    	taTipDiv.html("<font color='red'>当前字数：" + ta.value.length + "，字数限制：" + maxSize+"</font>");
    } else{
	    taTipDiv.html("当前字数：" + ta.value.length + "，字数限制：" + maxSize);
    } 
}  

function getDefaultMaxSize() {  
    return 200;  
}  
