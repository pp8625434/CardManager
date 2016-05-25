//包含‘其他’选项时的提交验证
function onForm_Submits(){
	//id为包含其他选框的id,content为其他文本id
	var id,content;
	var chk_value =[];
	var tempstr = "input[id="+id+"]:checked";
	$(tempstr).each(function(){
		chk_value.push($(this).val());
	});
	if(chk_value.indexOf('12') != -1){	//12为枚举其他的id
		if($("#"+content).text() == ''){
			showErrCss($("#"+content),'请填写其他内容');
			return false;
		}
	}
}
function add_videoMeeting(){
	var para = pageInfo();
	var str = ctx+"/videomeeting/videoMeetingAdd.action";
	parent.addTab("新增视频会议系统使用申请",str,"icon icon-nav");
}

function info_videoMeeting(id){
	var para = pageInfo();
	parent.addTab("视频会议系统使用申请详情",ctx+"/videomeeting/videoMeetingInfo.action?videoMeeting.id="+id+"&"+para,"icon icon-nav");		
}


//删除选中
function delAll_videoMeeting() {
	var obj = document.getElementsByName("orderId");
	var idString = "";
	if (formSearch.orderId.length == undefined) {
		if (formSearch.orderId.checked == true) {
			idString = formSearch.orderId.value;
		}
	} else {
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked == true) {
				idString = idString + "," + obj[i].value;
			}
		}
	}
	if (idString.length == 0) {
		parent.$.messager.alert("友情提示", "请至少选中一个申请!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中申请吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/videomeeting/videoMeetingDel.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_videoMeeting(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该申请吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/videomeeting/videoMeetingDel.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

function cancelBtn(){
	var currtab_title = parent._operatorName_;
	parent.chancleButton(currtab_title);
}