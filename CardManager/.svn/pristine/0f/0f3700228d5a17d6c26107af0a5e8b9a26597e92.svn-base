require.config({
    paths: {
        echarts:ctx+'/echarts/echarts',
        'echarts/chart/map':ctx+'/echarts/echarts-map',
        'echarts/chart/bar':ctx+'/echarts/echarts',
        'echarts/chart/line':ctx+'/echarts/echarts',
        'echarts/chart/pie':ctx+'/echarts/echarts',
        'echarts/chart/radar':ctx+'/echarts/echarts'
    }
});

//订单统计
function getLineOption(title,subtext,legenddata,xAxisdata,sdata){
	var str = "{\"title\": {\"text\": \""+title+"\",\"subtext\": \""+subtext+"\"},\"tooltip\": {\"trigger\": \"axis\"},\"legend\": {\"data\": ["+legenddata+"]},\"toolbox\": {\"show\": true,\"feature\": {\"mark\": {\"show\": true},\"magicType\": {\"show\": true,\"type\": [\"line\",\"bar\",\"stack\",\"tiled\"]},\"restore\": {\"show\": true},\"saveAsImage\": {\"show\": true}}},\"calculable\": true,\"xAxis\": [{\"type\": \"category\",\"data\": ["+xAxisdata+"]}],\"yAxis\": [{\"type\": \"value\"}],\"series\": ["+sdata+"]}";
	return $j.parseJSON(str);
}

//全部商品统计-销量
function getBarOption1(title,subtext,legenddata,seriesdata){
	//var str = "{\"title\": {\"text\": \""+title+"\",\"subtext\": \""+subtext+"\",\"x\": \"center\"},\"tooltip\": {\"trigger\": \"item\",\"formatter\": \"{a} <br/>{b} : {c} ({d}%)\"},\"legend\": {\"orient\": \"vertical\",\"x\": \"left\",\"data\": ["+legenddata+"]},\"toolbox\": {\"show\": true,\"feature\": {\"mark\": {\"show\": true},\"restore\": {\"show\": true},\"saveAsImage\": {\"show\": true}}},\"calculable\": true,\"series\": [{\"name\": \"销量\",\"markLine\":false,\"type\": \"pie\",\"radius\": \"55%\",\"center\": [\"50%\",\"60%\"],\"data\": ["+seriesdata+"]}]}";
	var str = "{\"title\": {\"text\": \""+title+"\",\"subtext\": \""+subtext+"\"},\"tooltip\": {\"trigger\": \"axis\"},\"legend\": {\"data\":[\"销量\"]},\"toolbox\": {\"show\": true,\"feature\": {\"mark\": {\"show\": true},\"magicType\": {\"show\": true, \"type\": [\"line\", \"bar\"]},\"restore\": {\"show\": true},\"saveAsImage\": {\"show\": true}}},\"calculable\": true,\"xAxis\": [{\"type\": \"category\",\"data\": ["+legenddata+"]}],\"yAxis\": [{\"type\": \"value\"}],\"series\": [{\"name\":\"销量\",\"type\":\"bar\",\"data\":["+seriesdata+"],\"markPoint\": {\"data\": [{\"type\": \"max\", \"name\": \"最大值\"},{\"type\": \"min\", \"name\": \"最小值\"}]},\"itemStyle\": {\"normal\": {\"color\":\"rgb(255,127,80)\",\"barBorderRadius\": 8},\"emphasis\": {\"barBorderRadius\": 8}},\"markLine\": {\"data\": [{\"type\": \"average\", \"name\": \"平均销量\"}]}}]}";
	return $.parseJSON(str);
}

//全部商品统计-销售额
function getBarOption2(title,subtext,legenddata,seriesdata){
	var str = "{\"title\": {\"text\": \""+title+"\",\"subtext\": \""+subtext+"\"},\"tooltip\": {\"trigger\": \"axis\"},\"legend\": {\"data\":[\"销售额\"]},\"toolbox\": {\"show\": true,\"feature\": {\"mark\": {\"show\": true},\"magicType\": {\"show\": true, \"type\": [\"line\", \"bar\"]},\"restore\": {\"show\": true},\"saveAsImage\": {\"show\": true}}},\"calculable\": true,\"xAxis\": [{\"type\": \"category\",\"data\": ["+legenddata+"]}],\"yAxis\": [{\"type\": \"value\"}],\"series\": [{\"name\":\"销售额\",\"type\":\"bar\",\"data\":["+seriesdata+"],\"markPoint\": {\"data\": [{\"type\": \"max\", \"name\": \"最大值\"},{\"type\": \"min\", \"name\": \"最小值\"}]},\"itemStyle\": {\"normal\": {\"color\":\"rgb(255,127,80)\",\"barBorderRadius\": 8},\"emphasis\": {\"barBorderRadius\": 8}},\"markLine\": {\"data\": [{\"type\": \"average\", \"name\": \"平均销量\"}]}}]}";
	return $.parseJSON(str);
}

//折线图-多条线方法
function seriesdata(name,type,stack,itemStyle,data){
	if(type == ""){
		type = "line";
	}
	if(stack==""){
		stack = "总量";
	}
	if(itemStyle ==""){
		itemStyle = "{\"normal\": {\"areaStyle\": {\"type\": \"default\"},\"label\" : {\"show\": true, \"position\": \"top\"}}}";
	}
	
	var str = "{";
	str += "\"name\":\""+name+"\",";
	str += "\"type\":\""+type+"\",";
	str += "\"stack\":\""+stack+"\",";
	str += "\"itemStyle\":"+itemStyle+",";
	str += "\"data\":["+data+"]}";
	return str;
}