<%@ page language="java"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml">
  <head>
    <title>GooFlowDemo</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--[if lt IE 9]>
	<?import namespace="v" implementation="#default#VML" ?>
	<![endif]-->
	<!--<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/gooflow/GooFlow2.css"/>-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/gooflow/GooFlow.css"/>
	<script type="text/javascript" src="<%=request.getContextPath()%>/gooflow/jquery.min-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/ztree/js/json2.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath()%>/gooflow/GooFunc.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/gooflow/default.css"/>
	<script type="text/javascript" src="<%=request.getContextPath()%>/gooflow/GooFlow.js"></script>
	<script type="text/javascript">
		var property={
			width:900,
			height:300,
			toolBtns:["start round","end","task","node","chat","state","plug","join","fork","complex mix"],
			haveHead:false,
			headBtns:["new","open","save","undo","redo","reload"],//如果haveHead=true，则定义HEAD区的按钮
			haveTool:true,
			haveGroup:false,
			useOperStack:true
		};
		var remark={
			cursor:"选择指针",
			direct:"转换连线",
			start:"开始结点",
			"end":"结束结点",
			"task":"任务结点",
			node:"自动结点",
			chat:"决策结点",
			state:"状态结点",
			plug:"附加插件",
			fork:"分支结点",
			"join":"联合结点",
			"complex":"复合结点",
			group:"组织划分框编辑开关"
		};
		var demo;
		$(document).ready(function(){
			demo=$.createGooFlow($("#demo"),property);
			demo.setNodeRemarks(remark);
			//demo.onItemDel=function(id,type){
			//	return confirm("确定要删除该单元吗?");
			//}
			//jsondata={"nodes":{"demo_node_9":{"name":"桂中区","left":51,"top":29,"type":"start round","width":24,"height":24,"alt":true},"demo_node_10":{"name":"桂北区","left":50,"top":80,"type":"start round","width":24,"height":24,"alt":true},"demo_node_11":{"name":"桂西区","left":50,"top":129,"type":"start round","width":24,"height":24,"alt":true},"demo_node_12":{"name":"桂北区","left":51,"top":180,"type":"start round","width":24,"height":24,"alt":true},"demo_node_13":{"name":"n夺","left":205,"top":108,"type":"complex mix","width":86,"height":24,"alt":true},"demo_node_14":{"name":"桂东区","left":49,"top":230,"type":"start round","width":24,"height":24,"alt":true}},"lines":{},"areas":{}};
			//demo.loadData(jsondata);
			jsondata={
			    "title": "newFlow_1",
			    "nodes": {
			        "demo_node_1": {
			            "name": "开始",
			            "left": 104,
			            "top": 84,
			            "type": "start round",
			            "width": 24,
			            "height": 24,
			            "alt": true,
			            "marked":true
			        },
			        "demo_node_2": {
			            "name": "部门领导",
			            "left": 272,
			            "top": 84,
			            "type": "task",
			            "width": 86,
			            "height": 24,
			            "alt": true
			        },
			        "demo_node_6": {
			            "name": "结束",
			            "left": 552,
			            "top": 91,
			            "type": "end",
			            "width": 86,
			            "height": 24,
			            "alt": true
			        }
			    },
			    "lines": {
			        "demo_line_3": {
			            "type": "tb",
			            "from": "demo_node_1",
			            "to": "demo_node_2",
			            "name": "提交申请",
			            "alt": true,
			            "M": 96,
			            "marked":true
			        },
			        "demo_line_7": {
			            "type": "sl",
			            "from": "demo_node_2",
			            "to": "demo_node_6",
			            "name": "审批",
			            "alt": true
			        }
			    },
			    "areas": {},
			    "initNum": 9
			}
			
			demo.loadData(jsondata);
			
		});
		var out;
		function Export(){
			//alert(demo.getItemInfo("demo_line_7","line").name);
			demo.markItem("demo_line_3","line",true);
		    document.getElementById("result").value=JSON.stringify(demo.exportData());
		}
	</script>
  </head>
  
  <body>
    <div id="demo" style="margin:10px"></div>
	<input id="submit" type="button" value='导出结果' onclick="Export()"/>
	 <textarea id="result" row="6"></textarea>
  </body>
</html>
