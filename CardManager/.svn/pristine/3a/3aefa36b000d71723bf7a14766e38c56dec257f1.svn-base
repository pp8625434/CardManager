
function jjjcx(){
	
	
	var gjz = document.getElementById("f_name").value;
	if(gjz == ""){
		alert("请输入关键字！");
		document.getElementById("f_name").focus();
		return false;
	}
	var imageText = document.getElementById("yzm").value;
	if(imageText==""){
		alert("请输入验证码！");
		document.getElementById("yzm").focus();
		return false;
	}
	if(imageValue!=imageText){
		alert("您输入的验证码有错！");
		document.getElementById("yzm").focus();
		return false;
	}
	
	var t = document.getElementById("hjcx");
	if(t.options[t.selectedIndex].value =="1"){
		document.forms[0].action = ctx+"/admin/ldeschjList4.action";
		document.forms[0].submit();
	}else if(t.options[t.selectedIndex].value =="2"){
		document.forms[0].action = ctx+"/admin/ldeschjList7.action";
		document.forms[0].submit();
	}else if(t.options[t.selectedIndex].value =="3"){
		document.forms[0].action = ctx+"/admin/ldeschjList8.action";
		document.forms[0].submit();
	}
}