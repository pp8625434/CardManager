<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 必选JSP -->
<%@ include file="../includes/main.jsp"%>
<!-- 必选JSP -->


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'MapDemo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 必选JS -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/admin/jquery/js/jquery-1.8.0.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/admin/jquery/js/jquery.yy.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/admin/jquery/js/yy-lang-zh_CN.js" charset="UTF-8"></script>
	<script src="<%=request.getContextPath()%>/echarts/esl.js" type="text/javascript"></script>  
	<script src="<%=request.getContextPath()%>/echarts/echarts-config.js" type="text/javascript"></script>  
	<!-- 必选JS -->
  </head>
  
  <body>
    <div id="main"style="height:500px;border:1px solid #ccc;padding:10px;"></div>
     <script type="text/javascript">

       //为模块加载器配置echarts的路径，这里主要是配置map图表的路径，其他的图表跟map的配置还不太一样，下边也会做另一种类型的图表事例。
	   //这里引用的主要是echarts文件夹下的echarts-map文件，而其他类型的图表引用的都是echarts文件夹下的echarts文件。
      //动态加载echarts，在回掉函数中使用，要注意保持按需加载结构定义图表路径
       
        require(
	        [
	            'echarts',
	            'echarts/chart/map'
	        ],
	        function (ec) {
	            var myChart=ec.init(document.getElementById('main'));
				$.ajax({
					type: "POST",
					url: ctx+"/charts/Map.action",
					data:{},
					async: false,
					success: function(data){
						option = jQuery.parseJSON(data);
						option.tooltip.formatter = function(a){
							 var sName = a[0];
	            			 var value = a[2] + '';
	                         value = value.replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
	                         return sName + '<br/>' + value + '个安全漏洞';
						};
						myChart.setOption(option);
					}
				});
				var ecConfig = require('echarts/config');
				var mapType = [
				    'china',
				    // 23个省
				    '广东', '青海', '四川', '海南', '陕西', 
				    '甘肃', '云南', '湖南', '湖北', '黑龙江',
				    '贵州', '山东', '江西', '河南', '河北',
				    '山西', '安徽', '福建', '浙江', '江苏', 
				    '吉林', '辽宁', '台湾',
				    // 5个自治区
				    '新疆', '广西', '宁夏', '内蒙古', '西藏', 
				    // 4个直辖市
				    '北京', '天津', '上海', '重庆',
				    // 2个特别行政区
				    '香港', '澳门'
				];
				myChart.on(ecConfig.EVENT.MAP_SELECTED, function (param){
			        // 全国选择时指定到选中的省份
			        var len = mapType.length;
			        var curIndx = -1;
			        var selected = param.selected;
			        for (var i in selected) {
			            if (selected[i]) {
			                var mt = i;
			                 while (len--) {
			                    if (mapType[len] == mt) {
			                        curIndx = len;
			                    }
				             }
				             break;
			                
			            }
			        }
			        if(curIndx>0){
			        	$.ajax({
								type: "POST",
								url: ctx+"/charts/MapByName.action",
								data:{pname:mt,sdate:'2014-10-27',edate:'2014-10-27'},
								async: false,
								success: function(data){
									option = jQuery.parseJSON(data);
									option.tooltip.formatter = function(a){
										 var sName = a[0];
				            			 var value = a[2] + '';
				                         value = value.replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
				                         return sName + '<br/>' + value + '个安全漏洞';
									};
									myChart.setOption(option,true);
									
								}
							});
			        }else{
			        	$.ajax({
								type: "POST",
								url: ctx+"/charts/Map.action",
								data:{},
								async: false,
								success: function(data){
									option = jQuery.parseJSON(data);
									option.tooltip.formatter = function(a){
										 var sName = a[0];
				            			 var value = a[2] + '';
				                         value = value.replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
				                         return sName + '<br/>' + value + '个安全漏洞';
									};
									myChart.setOption(option,true);
								}
							});
			        }
				});
	        }
    	);
    	
    </script>
  </body>
</html>
