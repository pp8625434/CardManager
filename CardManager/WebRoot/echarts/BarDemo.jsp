<%@ page language="java"  pageEncoding="utf-8"%>
<!-- 必选JSP -->
<%@ include file="../includes/main.jsp"%>
<!-- 必选JSP -->


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
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
	<script type="text/javascript">
		function getImg(){
			var imgUrl = myChart.getDataURL('png');
			alert(imgUrl);
		}
	</script>
  </head>
  
  <body>
    <div id="main"style="height:500px;border:1px solid #ccc;padding:10px;"></div>
    <button onclick="getImg()" value="kk" ></button>
     <script type="text/javascript">
       //为模块加载器配置echarts的路径，这里主要是配置map图表的路径，其他的图表跟map的配置还不太一样，下边也会做另一种类型的图表事例。
	   //这里引用的主要是echarts文件夹下的echarts-map文件，而其他类型的图表引用的都是echarts文件夹下的echarts文件。
      //动态加载echarts，在回掉函数中使用，要注意保持按需加载结构定义图表路径
       var myChart;
        require(
	        [
	            'echarts',
	            'echarts/chart/map'
	        ],
	        function (ec) {
	            myChart=ec.init(document.getElementById('main'));
				$.ajax({
					type: "POST",
					url: ctx+"/charts/Bar.action",
					data:{},
					async: false,
					success: function(data){
						//alert(data);
						option = jQuery.parseJSON(data);
						myChart.setOption(option);
					}
				});
			}
    	);
    	
    </script>
  </body>
</html>
