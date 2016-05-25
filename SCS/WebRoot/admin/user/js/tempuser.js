function formSearchSubmit(){
	document.formSearch.submit();
}

function notempty(obj){	
	if("" == $j(obj).val().trim()){
		var message = $j(obj).parent().prev("td").html();
		$j("#"+$j(obj).attr("id")+"span").html(message+"不能为空!");
		return false;
	}else{
		$j("#"+$j(obj).attr("id")+"span").html("");
		return true;
	}
}

function vailPhoneNum(obj){
	
	if(!notempty(obj)){
		return false;
	}
	if(checkNum($j("#phonenum").val())){
		var regu = "^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
		var re = new RegExp(regu);
		if(!re.test($j("#phonenum").val().trim())){
			$j("#"+$j(obj).attr("id")+"span").html('请输入正确的手机号码！');
			return false;
		}
		if($j("#phonenum").val().length > 11){
			$j("#"+$j(obj).attr("id")+"span").html('请输入正确的手机号码！');
			return false;
		}
	}else{
		$j("#"+$j(obj).attr("id")+"span").html('请输入正确的手机号码！');
		return false;
	}
}

function checkNum(num){

	num = trimStr(num);
	//var re = /^[1-9]\d*$/;
	var re =  /^[-]{0,1}[0-9]{1,}$/;
	if (!re.test(num)){
        return false;
    }else{
    	return true;
    }
}

function addSubmit(){
	if(trimStr($j("#names").val()) == ""){
		alert('请输入称呼！');
		return false;
	}
	
	if(checkNum($j("#phonenum").val())){
		var regu = "^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
		var re = new RegExp(regu);
		if(!re.test($j("#phonenum").val().trim())){
			alert("请输入正确的手机号码！");
			return false;
		}
		if($j("#phonenum").val().length > 11){
			alert("请输入正确的手机号码！");
			return false;
		}
	}else{
		alert("请输入正确的手机号码！");
		return false;
	}
	
	document.forms[0].submit();
}

function lock(id){
	parent.$.messager.confirm('友情提示', '确定要锁定该试用学员？', function (r) {
	if (r) {
		document.formSearch.action =ctx+"/user/tempUserlock.action?tempUser.id="+id;
		document.formSearch.submit();
	}
	})
	
}

$j(document).ready(function(){
	$j("#name").blur(
		vailUserName
	);
});

vailUserName = function (){
	$j("#appendStr").empty();
     	var userName = $j.trim($j("#name").val());
     	if(userName == ""){
     		//$j("#addBut").attr({"disabled":"disabled"});
		//alert("请输入用户名");
		//parent.$.messager.alert('友情提示', '请输入用户名', 'info');
		if($j("#f_isManager").val()=="1"){
			$j("#appendStr").append("请输入用户名！")
		}else{
			$j("#appendStr").append("请输入手机号码！")
		}
		
		return false;
		}else{
			if($j("#f_isManager").val()=="1"){
				var checkOK = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_";	
				for(i = 0; i < $j("#name").val().length; i++){
					ch = $j("#name").val().charAt(i);
					for(j = 0; j < checkOK.length; j++){
						if(ch == checkOK.charAt(j)){
							break;
						}
						if(j == checkOK.length-1){
							//alert("用户名只能为字母、数字和下划线！");
							$j("#appendStr").append('用户名只能为字母、数字和下划线！');
							//$j("#addBut").attr({"disabled":"disabled"});
							return false;
						}
					}
				}
			}else{
				if(checkNum($j("#name").val())){
					var regu = "^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
					var re = new RegExp(regu);
					if(!re.test(trimStr($j("#name").val()))){
						$j("#appendStr").append('手机号码格式不正确!');
						return false;
					}
					if($j("#name").val().length > 11){
						$j("#appendStr").append('手机号码不能超过11位!');
						return false;
					}
				}else{
					$j("#appendStr").append('手机号码必须为数字!');
					return false;
				}
			}
			
		}
	if($j.trim($j("#name").val()) != $j.trim($j("#oldName").val())){
		var sql = " select count(*) from com.manage.user.model.User u where u.name = '"+userName+"'";
		$j.ajax({
			url: ctx+"/user/checkName.action",
			type: "post", 
			data: {"sql":sql},
			dataType: 'json',
			success: function(data){
				if(data == "succ"){
					if($j("#f_isManager").val()=="1"){
						$j("#appendStr").append("用户名已经被使用！")
					}else{
						$j("#appendStr").append("手机号码已被注册！")
					}
					
					//$j("#addBut").attr({"disabled":"disabled"});
				}
			}
			
		});
	}else{
		//$j("#addBut").removeAttr("disabled");
	}
}



function checkSubmit(operType) {
	
	if(trimStr($j("#name").val()) == ""){
		
		if($j("#f_isManager").val()=="1"){
			parent.$.messager.alert('友情提示', '请输入用户名！', 'info');
		}else{
			parent.$.messager.alert('友情提示', '请输入手机号码！', 'info');
		}
		return false;
	}

	if(""!= trimStr($j("#appendStr").html())){
		parent.$.messager.alert('友情提示', $j("#appendStr").html(), 'info');
		return false;
	}
	if($j("#f_isManager").val()=="1"){
		var checkOK = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_";	
		for(i = 0; i < $j("#name").val().length; i++){
			ch = $j("#name").val().charAt(i);
			for(j = 0; j < checkOK.length; j++){
				if(ch == checkOK.charAt(j)){
					break;
				}
				if(j == checkOK.length-1){
					//alert("用户名只能为字母、数字和下划线！");
					parent.$.messager.alert('友情提示', '用户名只能为字母、数字和下划线！', 'info');
					//$j("#addBut").attr({"disabled":"disabled"});
					return false;
				}
			}
		}
	}else{
		if(checkNum($j("#name").val())){
			var regu = "^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
			var re = new RegExp(regu);
			if(!re.test(trimStr($j("#name").val()))){
				parent.$.messager.alert('友情提示', '手机号码格式不正确！', 'info');
				return false;
			}
			if($j("#name").val().length > 11){
				parent.$.messager.alert('友情提示', '手机号码不能超过11位！', 'info');
				return false;
			}
		}else{
			parent.$.messager.alert('友情提示', '手机号码必须为数字！', 'info');
			return false;
		}
	}
	
	if(trimStr($j("#realname").val()) == ""){
	
		parent.$.messager.alert('友情提示', '请输入您的姓名！', 'info');
		return false;
	}
	
	if($j("#f_isManager").val()=="1"){
		var obj = document.getElementsByName("roleIds");
		var j = 0;
		var roleNames="";
		for (i = 0; i < obj.length; i++) {
			if (obj[i].checked == true) {
				j++;
				if(roleNames == ""){
					roleNames = document.getElementById("rolespan"+obj[i].value).innerHTML;
				}else{
					roleNames += "," + document.getElementById("rolespan"+obj[i].value).innerHTML;
				}
			}
		}
		if(j>0){
			
			document.getElementById("roleNames").value = roleNames ;
		}
		document.getElementById("isManager").value = "1";
	}else{
		/*
		if(trimStr($j("#password").val()) != trimStr($j("#password2").val())){
			parent.$.messager.alert('友情提示', '两次输入的密码必须相同！', 'info');
			return false;
		}
		*/
		//if($j("#nickname").val() == ""){
		//	parent.$.messager.alert('友情提示', '请输入昵称！', 'info');
		//	return false;
		//}
	
		
	//	if(trimStr($j("#birthday").val()) == ""){
	//		parent.$.messager.alert('友情提示', '请选择您的出生日期！', 'info');
	//		return false;
	//	}
		
		var birthdayDate = new Date(trimStr($j("#birthday").val()).replace(/-/g,"/"));
		var now = new Date(); 
	    var currDate = new Date(now.getFullYear(),now.getMonth(),now.getDate());
	    if(birthdayDate>=currDate){
	    	parent.$.messager.alert('友情提示', '出生日期必须小于今天!', 'info');
	    	return false;
	    }   
		var _resultobj= vaildAllDate();
		if(!_resultobj.result){
			parent.$.messager.alert('友情提示', _resultobj.mes, 'info');
			return false;
		}
		if(trimStr($j("#mail").val()) != ""){
			var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT)$"
			var re = new RegExp(regu);
			if($j("#mail").val().search(re) != -1){
				
			}else{
				parent.$.messager.alert('友情提示', '请输入正确的邮箱！', 'info');
				return false;
			}
		}
	//	else{
	//		parent.$.messager.alert('友情提示', '请输入您的邮箱！', 'info');
	//		return false;
	//	}
		if(trimStr($j("#card").val()) != ""){
			if(IdCardValidate($j("#card").val())){
			
			}else{
				parent.$.messager.alert('友情提示', '身份证必须由15位的数字或由最后一位可以是X（x）的18位的组成！', 'info');
				return false;
			}
		}
		//else{
		//	parent.$.messager.alert('友情提示', '请输入您的身份证！', 'info');
		//	return false;
		//}
		if(trimStr($j("#phone").val()) != "") {
			if(checkNum($j("#phone").val())){
				if($j("#phone").val().length > 13){
					parent.$.messager.alert('友情提示', '固定电话不能超过13位!', 'info');
					return false;
				}
			}else{
				parent.$.messager.alert('友情提示', '电话号码必须为数字！', 'info');
				return false;
			}
		}
		//if(trimStr($j("#cellphone").val()) != "") {
		//	if(checkNum($j("#cellphone").val())){
		//		var regu = "^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
		//		var re = new RegExp(regu);
		//		if(!re.test(trimStr($j("#cellphone").val()))){
		//			parent.$.messager.alert('友情提示', '手机号码格式不正确!', 'info');
		//			return false;
		//		}
		//		if($j("#cellphone").val().length > 11){
		//			parent.$.messager.alert('友情提示', '手机号码不能超过11位', 'info');
		//			return false;
		//		}
		//	}else{
		//		parent.$.messager.alert('友情提示', '手机号码必须为数字！', 'info');
		//		return false;
		//	}
		//}else{
		//	parent.$.messager.alert('友情提示', '手机号码不能为空！', 'info');
		//	return false;
		//}
		if(trimStr($j("#postcode").val()) != "") {
			if(checkNum($j("#postcode").val())){
				if($j("#postcode").val().length > 6){
					parent.$.messager.alert('友情提示', '邮政编码格式不正确！', 'info');
					return false;
				}
			}else{
				parent.$.messager.alert('友情提示', '邮政编码必须为数字！', 'info');
				return false;
			}
		}
	//	if(trimStr($j("#orgName").val()) == ""){
	//		parent.$.messager.alert('友情提示', '所属机构不能为空！', 'info');
	//		return false;
	//	}
		//if($j("#workdate").val() == ""){
		//	parent.$.messager.alert('友情提示', '请选择您参加工作的时间！', 'info');
		//	return false;
		//}
	}
	
	
	
	return true;
}

function changeSubmit(){
	if(checkSubmit("add")){
		document.forms[0].submit();
	}
}

function vailMail(obj){
	if(!notempty(obj)){
		return false;
	};
	var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT)$"
	var re = new RegExp(regu);
	if(trimStr($j("#mail").val()).search(re) != -1){
		$j("#"+$j(obj).attr("id")+"span").html('');	
	}else{
		$j("#"+$j(obj).attr("id")+"span").html('请输入正确的邮箱！');
		return false;
	}		
}
function vailCard(obj){
	//if(!notempty(obj)){
	//	return false;
	//}
	if("" != trim($j(obj).val())){
		if(!IdCardValidate(trim($j(obj).val()))){
			$j("#"+$j(obj).attr("id")+"span").html('身份证必须由15位的数字或由最后一位可以是X（x）的18位的组成！');
			return false;	
		}else{
			$j("#"+$j(obj).attr("id")+"span").html('');
		}
	}
}

function vailPhoneNum1(obj){
	if(!notempty(obj)){
		return false;
	}
	if(checkNum($j("#cellphone").val())){
		var regu = "^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
		var re = new RegExp(regu);
		if(!re.test(trimStr($j("#cellphone").val()))){
			$j("#"+$j(obj).attr("id")+"span").html('请输入正确的手机号码！');
			return false;
		}
		if($j("#cellphone").val().length > 11){
			$j("#"+$j(obj).attr("id")+"span").html('请输入正确的手机号码！');
			return false;
		}
	}else{
		$j("#"+$j(obj).attr("id")+"span").html('请输入正确的手机号码！');
		return false;
	}
}

//去掉字符串头尾空格   
function trim(str) {   
    return str.replace(/(^\s*)|(\s*$)/g, "");   
}

/*身份证验证*/
var Wi = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1 ];    // 加权因子   
var ValideCode = [ 1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2 ];            // 身份证验证位值.10代表X   
function IdCardValidate(idCard) { 
    idCard = trim(idCard.replace(/ /g, ""));               //去掉字符串头尾空格                     
    if (idCard.length == 15) {   
        return isValidityBrithBy15IdCard(idCard);       //进行15位身份证的验证    
    } else if (idCard.length == 18) {   
        var a_idCard = idCard.split("");                // 得到身份证数组   
        if(isValidityBrithBy18IdCard(idCard)&&isTrueValidateCodeBy18IdCard(a_idCard)){   //进行18位身份证的基本验证和第18位的验证
            return true;   
        }else {   
            return false;   
        }   
    } else {   
        return false;   
    }   
}  

function isTrueValidateCodeBy18IdCard(a_idCard) {   
    var sum = 0;                             // 声明加权求和变量   
    if (a_idCard[17].toLowerCase() == 'x') {   
        a_idCard[17] = 10;                    // 将最后位为x的验证码替换为10方便后续操作   
    }   
    for ( var i = 0; i < 17; i++) {   
        sum += Wi[i] * a_idCard[i];            // 加权求和   
    }   
    valCodePosition = sum % 11;                // 得到验证码所位置   
    if (a_idCard[17] == ValideCode[valCodePosition]) {   
        return true;   
    } else {   
        return false;   
    }   
}   
/**  
  * 验证18位数身份证号码中的生日是否是有效生日  
  * @param idCard 18位书身份证字符串  
  * @return  
  */  
function isValidityBrithBy18IdCard(idCard18){   
    var year =  idCard18.substring(6,10);   
    var month = idCard18.substring(10,12);   
    var day = idCard18.substring(12,14);   
    var temp_date = new Date(year,parseFloat(month)-1,parseFloat(day));   
    // 这里用getFullYear()获取年份，避免千年虫问题   
    if(temp_date.getFullYear()!=parseFloat(year)   
          ||temp_date.getMonth()!=parseFloat(month)-1   
          ||temp_date.getDate()!=parseFloat(day)){   
            return false;   
    }else{   
        return true;   
    }   
}   
  /**  
   * 验证15位数身份证号码中的生日是否是有效生日  
   * @param idCard15 15位书身份证字符串  
   * @return  
   */  
  function isValidityBrithBy15IdCard(idCard15){   
      var year =  idCard15.substring(6,8);   
      var month = idCard15.substring(8,10);   
      var day = idCard15.substring(10,12);   
      var temp_date = new Date(year,parseFloat(month)-1,parseFloat(day));   
      // 对于老身份证中的你年龄则不需考虑千年虫问题而使用getYear()方法   
      if(temp_date.getYear()!=parseFloat(year)   
              ||temp_date.getMonth()!=parseFloat(month)-1   
              ||temp_date.getDate()!=parseFloat(day)){   
                return false;   
        }else{   
            return true;   
        }   
  }   

  function vaildAllDate(){
//	var birthday = $j("#birthday").val();
//	var workdate = $j("#workdate").val();
//	var accountoverdate = $j("#accountoverdate").val();
//	var studyoverduedate = $j("#studyoverduedate").val();
//	var birthdayDate = new Date(birthday.replace(/-/g,"/"));
//	var now = new Date(); 
//    var currDate = new Date(now.getFullYear(),now.getMonth(),now.getDate());
//	if("" != workdate){
//		if(birthdayDate >= new Date(workdate.replace(/-/g,"/"))){
//			return {result:false,mes:'工作时间必须大于出生日期'};
//		}
//	    if(new Date(workdate.replace(/-/g,"/"))>currDate){
//	    	return {result:false,mes:'工作时间不能大于今天!'};
//	    }   
//	}
//	if(""!= accountoverdate){
//		if(new Date()> new Date(accountoverdate.replace(/-/g,"/"))){
//			return {result:false,mes:'帐号使用截止日期必须大于今天'};
//		}
//	}
//	if(""!= studyoverduedate){
//		if(new Date()> new Date(studyoverduedate.replace(/-/g,"/"))){
//			return {result:false,mes:'学习课程截止日期必须大于今天'};
//		}
//	}
	return {result:true}	
}

function addConnectionSubmit(){
	if(checkNum($j("#phonenum").val())){
		var regu = "^0{0,1}(13[0-9]|15[0-9]|153|156|18[0-9])[0-9]{8}$";
		var re = new RegExp(regu);
		if(!re.test($j("#phonenum").val().trim())){
			parent.$.messager.alert('友情提示', '请输入正确的手机号码！', 'info');
			return false;
		}
		if($j("#phonenum").val().length > 11){
			parent.$.messager.alert('友情提示', '请输入正确的手机号码！', 'info');
			return false;
		}
	}else{
		parent.$.messager.alert('友情提示', '请输入正确的手机号码！', 'info');
		return false;
	}
	
	if(trimStr($j("#description").val()) == ""){
		parent.$.messager.alert('友情提示', '请输入记录！', 'info');
		return false;
	}
	
	document.forms[0].submit();
}

function connectionList(id){
	parent.addTab("查看联系记录",ctx+"/user/tempUserConnectionList.action?pageInfo1.f_tempuserid="+id,"icon icon-nav");
}

function deleteConnnection(id){
	parent.$.messager.confirm('友情提示', '您确定要删除该记录吗？', function (r) {
		if (r) {
			document.formSearch.action =ctx+ "/user/removeConnection.action?tempUserConnection.id=" + id;
			document.formSearch.submit();
		}
	})
}

function deleteAll(){
	var checkBox = document.getElementsByName("orderId");   
    var num = checkBox.length;   
    var idString = "";   
    for(var index =0 ; index<num;index++){ 
        if(checkBox[index].checked){   
            idString += checkBox[index].value + ",";                 
        }   
    }
	 if(idString == ""){
		parent.$.messager.alert('友情提示', '请选择至少一条记录!', 'info');
		return false;
	}
	//if (window.confirm("确定要删除吗？")) {
	parent.$.messager.confirm('友情提示', '确定要删除选中的记录吗？', function (r) {
	if (r) {
		var delStr = '';
		var pids = idString.split(",");
		var ids = '';
		for(var i = 0; i < pids.length; i ++){
			if(pids[i] != ''){
				ids += pids[i] + ",";
			}
		}
		if(ids != ''){
   			document.formSearch.action = ctx+"/user/removeAllConnection.action?orderIndexs=" + ids;
    		document.formSearch.submit();
   		}
		
	}
	})
}