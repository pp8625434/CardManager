
function checkdate(){
	if("" == $j("#bdate").val() && "" != $j("#edate").val()){
		alert("请选择起始时间！");
		return false;
	}else if(""==$j("#edate").val() && ""!=$j("#bdate").val()){
		alert("请选择结束时间！");
		return false;
	}else if(""!=$j("#edate").val() && ""!=$j("#bdate").val()){
		var begin=new Date($j("#bdate").val().replace(/-/g,"/"));
		var end=new Date($j("#edate").val().replace(/-/g,"/"));
		//js判断日期
		if(begin-end>0){
		   alert("起始日期不能大于结束日期！");
		   return false;
		}
	}
	return true;
}
