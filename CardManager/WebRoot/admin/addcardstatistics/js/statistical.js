function stypechange(index){
	if(index == "0"){
		$j("#byear").show();
		$j("#eyear").show();
		$j("#bmonth").hide();
		$j("#emonth").hide();
		$j("#bdate").hide();
		$j("#edate").hide();
		$j("#bmonth").val('');
		$j("#emonth").val('');
		$j("#bdate").val('');
		$j("#edate").val('');
	}else if(index =="1"){
		$j("#byear").css("display","none");
		$j("#eyear").css("display","none");
		$j("#bmonth").css("display","inline");
		$j("#emonth").css("display","inline");
		$j("#bdate").css("display","none");
		$j("#edate").css("display","none");
		$j("#byear").val('');
		$j("#eyear").val('');
		$j("#bdate").val('');
		$j("#edate").val('');
	}else if(index =="2"){
		$j("#byear").css("display","none");
		$j("#eyear").css("display","none");
		$j("#bmonth").css("display","none");
		$j("#emonth").css("display","none");
		$j("#bdate").css("display","inline");
		$j("#edate").css("display","inline");
		$j("#byear").val('');
		$j("#eyear").val('');
		$j("#bmonth").val('');
		$j("#emonth").val('');
	}
}

function checkdate(){
	var ck = $j('input[name="stype"]:checked').val();
	if(ck =='0'){
		if($j("#byear").val()=="" || $j("#eyear").val()==""){
			alert("请选择年份！");
			return false;
		}else{
			var begin=new Date($j("#byear").val().replace(/-/g,"/"));
			var end=new Date($j("#eyear").val().replace(/-/g,"/"));
			//js判断日期
			if(begin-end>0){
			   alert("起始年份不能大于结束年份！");
			   return false;
			}else if((parseInt($j("#eyear").val()) - parseInt($j("#byear").val())) > 10){
				alert("日期差不能超过10年！");
				return false;
			}
		}
	}else if(ck =='1'){
		if($j("#bmonth").val()=="" || $j("#emonth").val()==""){
			alert("请选择月份！");
			return false;
		}else{
			var begin=new Date($j("#bmonth").val().replace(/-/g,"/"));
			var end=new Date($j("#emonth").val().replace(/-/g,"/"));
			var beginArr = $j("#bmonth").val().split("-");
			var endArr = $j("#emonth").val().split("-");
			var bmonth = parseInt(beginArr[0]) * 12 + parseInt(beginArr[1]);
			var emonth = parseInt(endArr[0]) * 12 + parseInt(endArr[1]);
			//js判断日期
			if(begin-end>0){
			   alert("起始日期不能大于结束日期！");
			   return false;
			}else if(emonth - bmonth > 24){
				alert("日期差不能超过24个月！");
				return false;
			}
		}
	}else if(ck =='2'){
		if($j("#bdate").val()==""){
			alert("请选择起始时间！");
			return false;
		}else if($j("#edate").val()==""){
			alert("请选择结束时间！");
			return false;
		}else{
			var begin=new Date($j("#bdate").val().replace(/-/g,"/"));
			var end=new Date($j("#edate").val().replace(/-/g,"/"));
			//js判断日期
			if(begin-end>0){
			   alert("起始日期不能大于结束日期！");
			   return false;
			}else if((end-begin)/(24*3600*1000) > 31){
				alert("自定义统计日期差不能大于31天！");
				return false;
			}
		}
	}
	return true;
}

