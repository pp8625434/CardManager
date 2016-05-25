<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ page import="java.util.*" %>
<%
	String data = (String)request.getAttribute("data");
%>
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
	<script type="text/javascript"
	src="${applicationScope.ctx}/flowchart/js/fnconfig.js"></script>
<script type="text/javascript">
var property = {
		width : 650,
		height : 450,
		toolBtns : [ "start round", "end round", "task" ],
		haveHead : false,
		headBtns : [ "undo", "redo" ],
		haveTool : false,
		haveGroup : false,
		useOperStack : true
	};
	var remark = {
		cursor : "选择指针",
		direct : "结点连线",
		start : "入口结点",
		"end" : "结束结点",
		"task" : "任务结点"
	};
	var demo;
	$(document).ready(function() {

		//禁掉右键
		$(document).bind("contextmenu", function(e) {
			return false;
		});

		demo = $.createGooFlow($("#demo"), property);
		demo.setNodeRemarks(remark);
		
		demo.setTitle($("#title").val());
		<%
		if(data!=null && !data.equals("")){
		%>
		demo.loadData(<%=data%>);
		<%
			}
		%>		
		
		demo.onItemFocus = function(id, model) {
			var obj;
			var temp;
			$("#ele_model").val(model);
			$("#ele_id").val(id);
			//选择节点或者线的时候应该获得相应的信息
			
			
			
			if (model == "line") {
				obj = this.$lineData[id];
				$("#ele_type").val("line");
			} else if (model == "node") {
				obj = this.$nodeData[id];
				$("#ele_type").val("node");
				if(obj.type !="start round" && obj.type !="end round"){
					//$.ajax({
					//	async : true,
					//	url : ctx + "/flowchart/findNodesConfig.action",
					//	type : "post",
					//	data : {"fid":$("#fid").val(),"nid":id},
					//	dataType : "json",
					//	success : function(data) {
							
					//	}

					//	});
					temp="<tr id=\"domtype\"><td>类型：</td>";
					temp+="<td><select id=\"ntype\" name=\"fnConfig.ntype\" onchange=\"selectOne(this.value)\">";
					temp+="<option value=\"0\">普通用户</option>";
					temp+="<option value=\"1\">机构</option>";
					temp+="<option value=\"2\">角色</option>";		
					temp+="</select>";
					temp+="<input type=\"button\" class=\"btnInput4\" value=\"请选择\"onclick=\"selectType();\" />";
					temp+="</td></tr>";
				}
				
			}
			$("#ele_name").val(obj.name);
			$("#domName").append(temp);
			return true;
		};
		demo.onItemBlur = function(id, model) {
			document.getElementById("propertyForm").reset();
			$("#domtype").remove();
			$("#orgdomtype").remove();
			$("#userid").val();
			$("#roleid").val();
			$("#orgroleid").val();
			return true;
		};
	});

	function configNodes(){
		var id = $("#ele_id").val();
		var name = $("#ele_name").val();
		var type = $("#ele_type").val();
		
		$.ajax({
			async : true,
			url : ctx + "/flowchart/saveNodesConfig.action",
			type : "post",
			data : $("#propertyForm").serialize(),
			dataType : 'json',
			success : function(data) {
				if(data =="success"){
					demo.setName(id,name,type);
					parent.$.messager.alert('友情提示', "保存成功");
				}else{
					parent.$.messager.alert('友情提示', "保存失败");
				}
			}

		});
	}
</script>

</head>

<body class="adminMain">

	<div class="mainTitle">配置流程图</div>




	<div class="mainConText">
		
		<div id="demo" style="float: left; margin-top: 10px;"></div>
		<div style="float: right; margin-right:150px; ">
			<form  id="propertyForm">
				<table class="tableEdit" id="domName">
					<tr>
						<td colspan="2">属性设置</td>
					</tr>
					<tr>
						<td>Id：</td>
						<td><input type="text" id="ele_id" name="nid" readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td>名称：</td>
						<td><input type="text" id="ele_name" name="name" readonly="readonly"/>
						</td>
					</tr>
					
					
				</table>
				<input type="hidden" id="ele_type">
				<input type="hidden" id="userid" name="fnConfig.userid"/>
				<input type="hidden" id="orgid" name="fnConfig.orgid"/>
				<input type="hidden" id="roleid" name="fnConfig.roleid"/>
				<input type="hidden" id="orgroleid" name="fnConfig.orgroleid"/>
				<input type="hidden" id="fid" name="fid" value="<s:property value="flowchart.id"/>"/>
				<input type="hidden" id="title" value="<s:property value="flowchart.fcname"/>"/>
			</form>
			
			<div class="btnBox">
				<input type="button" class="btnInput1" value="保存"
					onclick="configNodes();" /> &nbsp; <input type="button"
					class="btnInput2 chancleButton" value="取消" />
			</div>
		</div>
	</div>
</body>
</html>