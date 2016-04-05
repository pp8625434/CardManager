function deleteCheckedIpUser(tableName) {
	var idString = "";
	if (formSearch.orderId.length==undefined){
		if (formSearch.orderId.checked == true){
			idString = formSearch.orderId.value
		}
	}
	else{
		for (var i = 0; i < formSearch.orderId.length; i++) {
			if (formSearch.orderId[i].checked == true) {
				idString = idString + "," + formSearch.orderId[i].value;
			}
		}
	}
	if (idString.length == 0) {
		parent.$.messager.alert('友情提示', '请选择至少一个IP用户!', 'info');
		return;
	}
	parent.$.messager.confirm('友情提示', '您确定删除选中IP用户吗?', function (r){
		if (r) {
			if(idString.slice(0, 1) == ","){
				idString = idString.substring(1);
			}
			$j.ajax({
				async: false,
				url: ctx+"/user/removeAllIpUser.action",
				type: "post", 
				data: {"orderIndexs":idString},
				dataType: 'json',
				success: function(data){
					var obj = eval('('+data+')');
					if('fail' == obj.result){
						parent.$.messager.alert('友情提示', obj.info+"删除失败");
					} 
					$j("#formSearch").submit();
				}	
			});
		}
	})
}

function vailstartIpInput(obj){
	var resObj = vailstartIp();
	if(!resObj.result){
		$j(obj).next().next("span").html(resObj.msg);	
	}else{
		$j(obj).next().next("span").html("");
		$j("#endIp").next().next("span").html("");
	}
}

function vailstartIp(){
	var startIp = $j("#startIp").val().trim();
	var endIp = $j("#endIp").val().trim();
	if(""!= startIp){
		if(!(f_check_IP(startIp))){
			return {'result':false,'msg':'IP起始地址格式错误!'};
		}
	}
	if(""!= startIp && ""!= endIp){
		if(!vailIpSelection(startIp,endIp)){
			return {'result':false,'msg':'IP的起始地址与截止地址必须在同一个IP段上!'};
		}
		if(!vailIpStartEnd(startIp,endIp)){
			return {'result':false,'msg':'IP的起始地址必须小于截止地址!'};
		}
	}
	return {'result':true};
}

function vailendIpInput(obj){
	var resObj = vailendIp();
	if(!resObj.result){
		$j(obj).next().next("span").html(resObj.msg);	
	}else{
		$j(obj).next().next("span").html("");
		$j("#startIp").next().next("span").html("");
	}
}

function vailendIp(){
	var startIp = $j("#startIp").val().trim();
	var endIp = $j("#endIp").val().trim();
	if(""!= endIp){
		if(!(f_check_IP(endIp))){
			return {'result':false,'msg':'IP截止地址格式错误!'};
		}
	}
	if(""!= startIp && ""!= endIp){
		if(!vailIpSelection(startIp,endIp)){
			return {'result':false,'msg':'IP的起始地址与截止地址必须在同一个IP段上!'};
		}
		if(!vailIpStartEnd(startIp,endIp)){
			return {'result':false,'msg':'IP的起始地址必须小于截止地址!'};
		}
	}
	return {'result':true};
}
 
function f_check_IP(ip){      
   var re=/^(\d+)\.(\d+)\.(\d+)\.(\d+)$/;//正则表达式     
   if(re.test(ip))     
   {     
       if( RegExp.$1<256 && RegExp.$2<256 && RegExp.$3<256 && RegExp.$4<256)   
       return true;     
   }     
   return false;      
}  

function vailIpSelection(startIp,endIp){
	var sid = startIp.lastIndexOf(".");
	var eid = endIp.lastIndexOf(".");
	var a = startIp.substring(0, sid);
	var b = endIp.substring(0, eid);
	if(a == b){
		return true;
	}else{
		return false;
	}
}

function vailIpStartEnd(startIp,endIp){
	var sid = startIp.lastIndexOf(".");
	var eid = endIp.lastIndexOf(".");
	var a = startIp.substring(sid+1);
	var b = endIp.substring(eid+1);
	if(parseInt(a)< parseInt(b)){
		return true;
	}else{
		return false;
	}
}


function checkIpUserName(){
	var ipusername = $j("#ipusername").val().trim();
	var oldName = $j("#oldName").val().trim();
	if("" == ipusername){
		parent.$.messager.alert('友情提示', '请输入IP用户名称!', 'info');
		return false;
	}
	if(oldName!=ipusername){
		$j.ajax({
			async: false,
			url: ctx+"/user/checkIpUserName.action",
			type: "post", 
			data: {"ipUser.ipUserName":ipusername},
			dataType: 'json',
			success: function(data){
				if(!data){
					$j("#appendStr").html("IP用户名称已经使用!");
				}else{
					$j("#appendStr").html("");
				} 
			}	
		});
	}
}

function vailLimitCountInput(obj){
	var resObj = vailLimitCount();
	if(!resObj.result){
		$j(obj).next().next("span").html(resObj.msg);
	}else{
		$j(obj).next().next("span").html("");
	} 
}

function vailLimitCount(){
	var limitCount = $j("#limitCount").val().trim();
	if("" == limitCount){
		return {'result':false,'msg':'请输入登陆人数限制!'};
	}
	if(isNaN(limitCount)){
		return {'result':false,'msg':'请输入整数!'};
	}
	if("less" == vailCountIp()){
		return {'result':false,'msg':'登陆人数个数不能大于登陆IP个数!'};
	}
	return {'result':true};
}

function vailCountIp(){
	var startIp = $j("#startIp").val().trim();
	var endIp = $j("#endIp").val().trim();
	var limitCount = $j("#limitCount").val().trim();
	if("-1" == limitCount){
		return "succ";
	}
	if(""!=startIp && ""!=endIp){
		var sid = startIp.lastIndexOf(".");
		var eid = endIp.lastIndexOf(".");
		var a = startIp.substring(sid+1);
		var b = endIp.substring(eid+1);
		if(parseInt(a)< parseInt(b)){
			if(parseInt(limitCount)>((parseInt(b) - parseInt(a))+1)){
				return "less";
			}	
		}else{
			return "succ";
		} 
	}else{
		return "succ";
	}	

}

function vailProposerInput(obj){
	var resObj = vailProposer();
	if(!resObj.result){
		$j(obj).next().next("span").html(resObj.msg);
	}else{
		$j(obj).next().next("span").html("");
	}
}

function vailProposer(){
	var value = $j("#proposer").val().trim();
	if("" == value){
		return {'result':false,msg:'请输入申请人姓名!'};
	}
	return {'result':true};
}

function vailDepartmentInput(obj){
	var resObj = vailDepartment();
	if(!resObj.result){
		$j(obj).next().next("span").html(resObj.msg);
	}else{
		$j(obj).next().next("span").html("");
	}
}

function vailDepartment(){
	var value = $j("#department").val().trim();
	if("" == value){
		return {'result':false,msg:'请输入申请人部门!'};
	}
	return {'result':true};
}

function vailEndDate(){
	var value = $j("#endDate").val().trim();
	if("" == value){
		return {'result':false,msg:'请输入有效期!'};
	}
	if(new Date()> new Date(value.replace(/-/g,"/"))){
		return {'result':false,'msg':'有效日期必须大于今天!'};
	}
	return {'result':true};
}

function onSubEdit(){
	var flag = true;
	//用户名称
	if("" == $j("#ipusername").val().trim()){
		parent.$.messager.alert('友情提示', "请输入IP用户名称!", 'info');
		return false;
	}
	var hStr = $j("#appendStr").html().trim();
	if("" != hStr){
		parent.$.messager.alert('友情提示',hStr, 'info');
		return false;
	}
	//起始IP 
	if("" == $j("#startIp").val().trim()){
		parent.$.messager.alert('友情提示',"请输入IP起始地址!", 'info');
		return false;
	}
	var resObj = vailstartIp();
	if(!resObj.result){
		parent.$.messager.alert('友情提示',resObj.msg, 'info');
		return false;
	}
	//结束IP 
	if("" == $j("#endIp").val().trim()){
		parent.$.messager.alert('友情提示',"请输入IP截止地址!", 'info');
		return false;
	}
	var resObj = vailendIp();
	if(!resObj.result){
		parent.$.messager.alert('友情提示',resObj.msg, 'info');
		return false;
	}
	//登陆人数	
	var resObj = vailLimitCount();
	if(!resObj.result){
		parent.$.messager.alert('友情提示',resObj.msg, 'info');
		return false;
	}
	//申请人
	var resObj = vailProposer();
	if(!resObj.result){
		parent.$.messager.alert('友情提示',resObj.msg, 'info');
		return false;
	}
	//申请部门
	var resObj = vailDepartment();
	if(!resObj.result){
		parent.$.messager.alert('友情提示',resObj.msg, 'info');
		return false;
	}
	//有效日期
	var resObj = vailEndDate();
	if(!resObj.result){
		parent.$.messager.alert('友情提示',resObj.msg, 'info');
		return false;
	}
	$j("#submitForm").submit();
}
