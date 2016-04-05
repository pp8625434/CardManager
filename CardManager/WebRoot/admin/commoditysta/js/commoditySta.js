function selectProject(){
	window.open(ctx+"/merchant/merchantList.action?lookup=1", 'anyname' , 'width=1300,height=735,scrollbars=yes');	
}

function setProjectvalue(id,mname){
	$j("#mid").val(id);
	$j("#mname").val(mname);
}

function selectProjectSource(){
	window.open(ctx+"/merchant/merchantList.action?lookup=2", 'anyname' , 'width=1300,height=735,scrollbars=yes');	
}

function setProjectvalueSource(id,mname){
	$j("#sourceid").val(id);
	$j("#sourcename").val(mname);
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
		url: ctx+"/commditysta/commodityStatistical.action",
		type: "post", 
		data: {"bdate":$j("#bdate").val(),"edate":$j("#edate").val(),"mid":$j("#mid").val(),"sourceid":$j("#sourceid").val()},
		dataType: 'json',
		success: function(data){
			initorderssta(data);
		}
	});
}

function initorderssta(data){
	var str = "<tr class=\"TRtit\"><th>商品名称</th><th>销量(单位)</th><th>销售额</th>";
	if(data != null && data != "[]"){
		$j("#datatable").empty();
		var list = $j.parseJSON(data);
		for(var i=0;i<list.length;i++){
			str += "<tr ><td align=\"center\">"+list[i].cname+"</td>";
			if(list[i].sumcount && "" !=list[i].sumcount){
				str += "<td align=\"center\">"+list[i].sumcount+"("+list[i].unit+")</td>";
			}else{
				str += "<td align=\"center\">"+0+"("+list[i].unit+")</td>";
			}
			
			if(list[i].allprice && "" !=list[i].allprice){
				str += "<td align=\"center\">"+list[i].allprice+"</td>";
			}else{
				str += "<td align=\"center\">"+0+"</td>";
			}
		}
		$j("#datatable").append(str);
		var title = "";
		if(""!=$j("#edate").val() && ""!=$j("#bdate").val()){
			title = $j("#bdate").val() + "至" + $j("#edate").val();
		}
		xsline(title,"",data);
	}else{
		myChart1.hideLoading();
		myChart1.clear();
		parent.$.messager.alert('友情提示', '无数据显示!', 'info');
	}
}

function xsline(title,subtext,data){
	var list = $j.parseJSON(data);
	var count = list.length;
	if(count >20){
		count = 20;
	}
	var legenddata1 = "\"销量\",\"销售额\"";
	var xAxisdata1 = "";
	var series1 = "";
	var series2 = "";
	
	for(var i=0;i<count;i++){
		if(xAxisdata1==""){
			xAxisdata1 = "\""+list[i].cname+"\"";
			if(list[i].sumcount && "" !=list[i].sumcount){
				series1 = list[i].sumcount;
			}else{
				series1 = 0;
			}
			if(list[i].allprice && "" !=list[i].allprice){
				series2 = list[i].allprice;
			}else{
				series2 = 0;
			}
		}else{
			xAxisdata1 += ",\""+list[i].cname+"\"";
			if(list[i].sumcount && "" !=list[i].sumcount){
				series1 += ","+list[i].sumcount;
			}else{
				series1 += ","+0;
			}
			if(list[i].allprice && "" !=list[i].allprice){
				series2 += ","+list[i].allprice;
			}else{
				series2 += ","+0;
			}
		}
	}
	var sdata1 = seriesdata("销量","bar","销量","",series1);
	sdata1 += "," +seriesdata("销售额","bar","销售额","",series2);
	
	option = getLineOption1(title+"商品统计情况",subtext,legenddata1,xAxisdata1,sdata1,"商品名称","销量|销售额");
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

function clearMerchantSource(){
	$j("#sourceid").val("");
	$j("#sourcename").val("");
}

//导出
function exportCommdityData(){
	$j.ajax({
		url: ctx+"/commditysta/exportCommdityData.action",
		type: "post", 
		data: {"sourceid":$j("#sourceid").val(),"mid":$j("#mid").val(),
			"bdate":$j("#bdate").val(),"edate":$j("#edate").val()},
		dataType: 'json',
		success: function(data){
			if(data ==""){
				parent.$.messager.alert('友情提示', '导出失败!', 'info');
			}else{
				window.open(ctx+data);
			}
		}
	});
}