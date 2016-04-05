function selectProject(){
	window.open(ctx+"/merchant/merchantList.action?lookup=1", 'anyname' , 'width=1300,height=735,scrollbars=yes');	
}

function setProjectvalue(id,mname){
	$j("#mid").val(id);
	$j("#mname").val(mname);
}

var myChart1;

function tjfx(){
	if(checkdate()){
		require(
			[
				'echarts',
				'echarts/chart/bar'
			],function (ec){
				myChart1=ec.init(document.getElementById('main1'));
		        myChart1.showLoading({
					text: '正在努力的读取数据中...'    //loading话术
				});
			}
		);
		queryordersdata()
	}
}

function queryordersdata(){

	$j.ajax({
		url: ctx+"/ordersta/orderSta.action",
		type: "post", 
		data: {"date":$j("#date").val(),"mid":$j("#mid").val(),"orgid":$j("#orgid").val()},
		dataType: 'json',
		success: function(data){
			initorderssta(data);
		}
	});
}

function initorderssta(data){
	var str = "<tr class=\"TRtit\"><th>消费时间</th><th>总价</th><th>现金</th><th>余额</th><th>使用积分转换的金额</th>";
	if(data != null && data != "[]"){
		$j("#datatable").empty();
		var list = $j.parseJSON(data);
		for(var i=0;i<list.length;i++){
			str += "<tr ><td align=\"center\">"+list[i].date+"</td>";
			if(list[i].allprice && "" !=list[i].allprice){
				str += "<td align=\"center\">"+list[i].allprice+"</td>";
			}else{
				str += "<td align=\"center\">"+0+"</td>";
			}
			if(list[i].cash && "" !=list[i].cash){
				str += "<td align=\"center\">"+list[i].cash+"</td>";
			}else{
				str += "<td align=\"center\">"+0+"</td>";
			}
			if(list[i].money && "" !=list[i].money){
				str += "<td align=\"center\">"+list[i].money+"</td>";
			}else{
				str += "<td align=\"center\">"+0+"</td>";
			}
			if(list[i].paycreditmoney && "" !=list[i].paycreditmoney){
				str += "<td align=\"center\">"+list[i].paycreditmoney+"</td>";
			}else{
				str += "<td align=\"center\">"+0+"</td>";
			}
		}
		$j("#datatable").append(str);
		var title = "";
		title = $j("#date").val();
		xsline(title,"",data);
	}else{
		myChart1.hideLoading();
		myChart1.clear();
		alert("无数据显示！");
	}
}

function xsline(title,subtext,data){
	var list = $j.parseJSON(data);
	var legenddata1 = "\"总价\",\"现金\",\"余额\",\"使用积分转换的金额\"";
	var xAxisdata1 = "";
	var series1 = "";
	var series2 = "";
	var series3 = "";
	var series4 = "";
	
	for(var i=0;i<list.length;i++){
		if(xAxisdata1==""){
			xAxisdata1 = "\""+list[i].date+"\"";
			if(list[i].allprice && "" !=list[i].allprice){
				series1 = list[i].allprice;
			}else{
				series1 = 0;
			}
			if(list[i].cash && "" !=list[i].cash){
				series2 = list[i].cash;
			}else{
				series2 = 0;
			}
			if(list[i].paycreditmoney && "" !=list[i].paycreditmoney){
				series3 = list[i].paycreditmoney;
			}else{
				series3 = 0;
			}
			if(list[i].money && "" !=list[i].money){
				series4 = list[i].money;
			}else{
				series4 = 0;
			}
		}else{
			xAxisdata1 += ",\""+list[i].date+"\"";
			if(list[i].allprice && "" !=list[i].allprice){
				series1 += ","+list[i].allprice;
			}else{
				series1 += ","+0;
			}
			if(list[i].cash && "" !=list[i].cash){
				series2 += ","+list[i].cash;
			}else{
				series2 += ","+0;
			}
			if(list[i].paycreditmoney && "" !=list[i].paycreditmoney){
				series3 += ","+list[i].paycreditmoney;
			}else{
				series3 += ","+0;
			}
			if(list[i].money && "" !=list[i].money){
				series4 += ","+ list[i].money;
			}else{
				series4 += ","+ 0;
			}
		}
	}
	var sdata1 = seriesdata("总价","bar","总价","",series1);
	sdata1 += "," +seriesdata("现金","bar","现金","",series2);
	sdata1 += "," +seriesdata("余额","bar","余额","",series4);
	sdata1 += "," +seriesdata("使用积分转换的金额","bar","使用积分转换的金额","",series3);
	
	option = getLineOption1(title+"消费统计情况",subtext,legenddata1,xAxisdata1,sdata1,"日期","金额（元）");
	myChart1.setOption(option);
	myChart1.hideLoading();
       
}

function search(){
	if(checkdate()){
		$j("#formSearch").submit();
	}
}

function getLineOption1(title,subtext,legenddata,xAxisdata,sdata,xName,yName){
	var str = "{\"title\": {\"text\": \""+title+"\",\"subtext\": \""+subtext+"\"},\"tooltip\": {\"trigger\": \"axis\"},\"legend\": {\"data\": ["+legenddata+"]},\"toolbox\": {\"show\": true,\"feature\": {\"mark\": {\"show\": true},\"magicType\": {\"show\": true,\"type\": [\"bar\",\"line\",\"stack\",\"tiled\"]},\"restore\": {\"show\": true},\"saveAsImage\": {\"show\": true}}},\"calculable\": true,\"xAxis\": [{\"type\": \"category\",\"data\": ["+xAxisdata+"],\"name\":\""+xName+"\"}],\"yAxis\": [{\"type\": \"value\",\"name\":\""+yName+"\"}],\"series\": ["+sdata+"]}";
	return $j.parseJSON(str);
}

function clearMerchant(){
	$j("#mid").val("");
	$j("#mname").val("");
}