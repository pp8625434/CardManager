var myChart1;

function tptj(){
	
	if(checkdate()){
		require(
			[
				'echarts',
				'echarts/chart/line'
			],function (ec){
				myChart1=ec.init(document.getElementById('main1'));
		        myChart1.showLoading({
					text: '正在努力的读取数据中...'    //loading话术
				});
				
			}
		);
		queryvotedata()
	}
}

function queryvotedata(){
	var ck = $j('input[name="stype"]:checked').val();
	if(ck =='0'){
		$j.ajax({
			url: ctx+"/addcardsta/addCardStatistical.action",
			type: "post", 
			data: {"stype":ck,"byear":$j("#byear").val(),"eyear":$j("#eyear").val(),"orgid":$j("#orgid").val()},
			dataType: 'json',
			success: function(data){
				initorderssta(data);
			}											
		});
	}else if(ck =='1'){
		$j.ajax({
			url: ctx+"/addcardsta/addCardStatistical.action",
			type: "post", 
			data: {"stype":ck,"bmonth":$j("#bmonth").val(),"emonth":$j("#emonth").val(),"orgid":$j("#orgid").val()},
			dataType: 'json',
			success: function(data){
				initorderssta(data);
			}
		});

	}else if(ck =='2'){
		$j.ajax({
			url: ctx+"/addcardsta/addCardStatistical.action",
			type: "post", 
			data: {"stype":ck,"bdate":$j("#bdate").val(),"edate":$j("#edate").val(),"orgid":$j("#orgid").val()},
			dataType: 'json',
			success: function(data){
				initorderssta(data);
			}
		});
	}
}

function initorderssta(data){
	var str = "<tr class=\"TRtit\"><th>时间</th><th>办卡数量</th></tr>";
	if(data != null && data != "[]"){
		$j("#datatable").empty();
		var list = $j.parseJSON(data);
		var yhl = 0;
		for(var i=0;i<list.length;i++){
			str += "<tr ><td align=\"center\">"+list[i].date+"</td>";
			str += "<td align=\"center\">"+list[i].count+"</td></tr>";
			yhl += list[i].count;
		}
		$j("#datatable").append(str);
		$j("#yhl").html("办卡数量："+yhl);
		var ck = $j('input[name="stype"]:checked').val();
		var title = "";
		if(ck =='0'){
			title = $j("#byear").val()+"年至"+$j("#eyear").val()+"年";
		}else if(ck =='1'){
			title = $j("#bmonth").val()+"月至"+$j("#emonth").val()+"月";
		
		}else if(ck =='2'){
			title = $j("#bdate").val()+"日至"+$j("#edate").val()+"日";
		}
		xsline(title,"",data);
	}else{
		$j("#datatable").empty();
		$j("#datatable").append(str);

		myChart1.hideLoading();
		myChart1.clear();
		alert("无数据显示！");
	}
}

function xsline(title,subtext,data){
	var list = $j.parseJSON(data);
	var legenddata1 = "\"办卡数量\"";
	var xAxisdata1 = "";
	var series1 = "";
	
	for(var i=0;i<list.length;i++){
		if(xAxisdata1==""){
			xAxisdata1 = "\""+list[i].date+"\"";
			series1 = list[i].count;
		}else{
			xAxisdata1 += ",\""+list[i].date+"\"";
			series1 += ","+list[i].count;
		}
	}
	var sdata1 = seriesdata("办卡数量","","办卡数量","",series1);
	
	option = getLineOption1(title+"办卡统计情况",subtext,legenddata1,xAxisdata1,sdata1,"日期","办卡数量");
	myChart1.setOption(option);
	myChart1.hideLoading();
       
}

function search(){
	if(checkdate()){
		$j("#formSearch").submit();
	}
}


function getLineOption1(title,subtext,legenddata,xAxisdata,sdata,xName,yName){
	var str = "{\"title\": {\"text\": \""+title+"\",\"subtext\": \""+subtext+"\"},\"tooltip\": {\"trigger\": \"axis\"},\"legend\": {\"data\": ["+legenddata+"]},\"toolbox\": {\"show\": true,\"feature\": {\"mark\": {\"show\": true},\"magicType\": {\"show\": true,\"type\": [\"line\",\"bar\",\"stack\",\"tiled\"]},\"restore\": {\"show\": true},\"saveAsImage\": {\"show\": true}}},\"calculable\": true,\"xAxis\": [{\"type\": \"category\",\"data\": ["+xAxisdata+"],\"name\":\""+xName+"\"}],\"yAxis\": [{\"type\": \"value\",\"name\":\""+yName+"\"}],\"series\": ["+sdata+"]}";
	return $j.parseJSON(str);
}

function clearOrgin(){
	$j("#orgid").val("");
	$j("#orgname").val("");
}