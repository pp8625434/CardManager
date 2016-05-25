<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%
	String data = (String)request.getAttribute("data");
%>
<%@ include file="/includes/main.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/admin/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/admin/css/content.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/gooflow/GooFlow2.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/gooflow/default.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/gooflow/rightmenu.css" />

<script type="text/javascript" src="<%=request.getContextPath()%>/js/framework/hi_Include.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/gooflow/jquery.min-1.8.3.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/ztree/js/json2.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/gooflow/GooFunc.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/gooflow/GooFlow.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/gooflow/GooFlow_color.js"></script>
<script type="text/javascript"
	src="${applicationScope.ctx}/flowchart/js/flowchart.js"></script>
<script type="text/javascript">
	var property = {
		width : 900,
		height : 450,
		toolBtns : [ "start round", "end round", "task" ],
		//toolBtns : [ "start round", "end round", "task", "node", "chat",
		//		"state", "plug", "join", "fork", "complex mix" ],
		haveHead : true,
		//headBtns : [ "new", "open", "save", "undo", "redo", "reload" ],//如果haveHead=true，则定义HEAD区的按钮
		headBtns : [ "undo", "redo" ],
		haveTool : true,
		headLabel:true,
		haveGroup : false,
		useOperStack : true

	};
	var remark = {
		cursor : "选择指针",
		direct : "结点连线",
		start : "入口结点",
		"end" : "结束结点",
		"task" : "任务结点"
	//node : "自动结点",
	//chat : "决策结点",
	//state : "状态结点",
	//plug : "附加插件",
	//fork : "分支结点",
	//"join" : "联合结点",
	//"complex mix" : "复合结点",
	//group : "组织划分框编辑开关"
	};
	var demo;
	$(document).ready(
			function() {

				//禁掉右键
				$(document).bind("contextmenu", function(e) {
					return false;
				});
				
				demo = $.createGooFlow($("#demo"), property);
				demo.setNodeRemarks(remark);
				demo.setTitle('<s:property value="flowchart.fcname"/>');
				
				<%
					if(data!=null && !data.equals("")){
				%>
					demo.loadData(<%=data%>);
				<%
					}
				%>
				//var obje = {"title":"测试","areas":{},"initNum":5,"nodes":{"demo_node_1":{"name":"开始","left":null,"top":null,"type":"start round","width":null,"height":null,"alt":true,"marked":false},"demo_node_2":{"name":"node_2","left":222,"top":163,"type":"task","width":100,"height":24,"alt":true,"marked":false},"demo_node_3":{"name":"结束","left":508,"top":166,"type":"end round","width":24,"height":24,"alt":true,"marked":false}},"lines":{"demo_line_4":{"name":"提交","from":"demo_node_1","to":"demo_node_2","type":"tb","M":169,"alt":true,"marked":false},"demo_line_5":{"name":"提交","from":"demo_node_2","to":"demo_node_3","type":"tb","M":179,"alt":true,"marked":false}}}
				//if(obje!=null && obje!=""){					
			    //	demo.loadData(obje);
				//}
				//添加借点时触发的方法
				demo.onItemAdd = function(id, type, json) {
					if (type == "line") {
						json.name = "提交";
					}
					if (json.type == "start round") {
						json.name = "开始";
						if (JSON.stringify(demo.exportData()).indexOf(
								"start round") > 0) {
							this.switchToolBtn("cursor");
							alert("当前流程只能有一个开始节点");
							return false;
						}
					}
					if (json.type == "end round") {
						json.name = "结束";
						if (JSON.stringify(demo.exportData()).indexOf(
								"end round") > 0) {
							this.switchToolBtn("cursor");
							alert("当前流程只能有一个结束节点");
							return false;
						}
					}

					return true;
				}

			
			});

	

	
	function saveFlowchart() {
		var fId  =  $("#fId").val();
		//var jsonstr = JSON.stringify(demo.exportData());
		var nodes = demo.exportJsonData("node");
		var lines = demo.exportJsonData("line");
		$.ajax({
			async : false,
			url : ctx + "/flowchart/saveFlowNodesAndLines.action",
			type : "post",
			data : {
				"flowchartId" : fId,
				"nodes" : nodes,
				"lines" : lines
			},
			dataType : 'json',
			success : function(data) {
				if(data =="success"){
					//window.location.href = ctx+"/flowchart/findFlowchartList.action";
					parent.$.messager.alert('友情提示', "保存成功");
					parent.addTab("流程图",ctx+"/flowchart/findFlowchartList.action","icon icon-nav");
				}else{
					parent.$.messager.alert('友情提示', "出现错误");
				}
			}

		});
	}
</script>

</head>

<body class="adminMain">

	<div class="mainTitle">设计流程图</div>




	<div class="mainConText">
		<input type="hidden" id="fId" value="<s:property value="flowchart.id"/>"/>
		<div id="demo" style="float: left; margin-top: 10px;"></div>
		<div style="float: left; margin-right:150px; ">
			
		<div class="btnBox">
			<input type="button" class="btnInput1" value="保存"
				onclick="saveFlowchart();" /> &nbsp; <input type="button"
				class="btnInput2 chancleButton" value="取消" />
		</div>
		</div>
		
	</div>

	<DIV id="div_flowNodeRightMenu2" class=smart_menu_box
		style="LEFT: 1530px; DISPLAY: none; TOP: 233px">
		<DIV id=div_menuBody class=smart_menu_body>
			<UL id=ul_section_1 class=smart_menu_ul>
				<LI id=li_menuItem_1 class=smart_menu_li><A class=smart_menu_a
					href="javascript:">权限设置</A>
				</LI>
				<LI id=li_menuItem_1 class=smart_menu_li><A class=smart_menu_a
					href="javascript:">人员管理</A>
				</LI>
				<LI id=li_menuItem_1 class=smart_menu_li_separate>&nbsp;</LI>
				<LI id=li_menuItem_1 class=smart_menu_li><A class=smart_menu_a
					href="javascript:">关闭</A>
				</LI>
			</UL>
		</DIV>
	</DIV>
	
</body>
</html>