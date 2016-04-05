function edit_doubledate(id){
	var para = pageInfo();
	var str = ctx+"/doubledate/toEditDoubledate.action?doubledate.id="+id+"&"+para;
	parent.addTab("编辑活动日信息",str,"icon icon-nav");
}

function add_doubledate(){
	var para = pageInfo();
	var str = ctx+"/doubledate/toEditDoubledate.action";
	parent.addTab("新增活动日信息",str,"icon icon-nav");
}

function doubledate_info(id){
	var para = pageInfo();
	parent.addTab("活动日信息详情",ctx+"/doubledate/doubledateInfo.action?doubledate.id="+id+"&"+para,"icon icon-nav");		
}


function onSubEdit(){
	var doublename =  $j("#doublename").val();
	var adate =  $j("#adate").val();
	var orgid =  $j("#orgid").val().trim();
	
	if("" == orgid){
		parent.$.messager.alert('友情提示', '社区不能为空', 'info');
		$j("#orgid").focus();
		return false;
	}
	
	if(doublename==""){
		parent.$.messager.alert('友情提示', '活动标题不能为空！', 'info');
		$j("#doublename").focus();
		return false;
	}

	if(adate == ""){
		parent.$.messager.alert('友情提示', '请输入双倍时间！', 'info');
		$j("#adate").focus();
		return false;
	}else if(adate != ""){
		var aDate = new Date(trimStr($j("#adate").val()).replace(/-/g,"/"));
		var now = new Date(); 
	    var currDate = new Date(now.getFullYear(),now.getMonth(),now.getDate());
	    if(aDate < currDate){
	    	parent.$.messager.alert('友情提示', '双倍时间必须大于今天！', 'info');
			$j("#adate").focus();
			return false;
	    }
	    
	    $j.ajax({
			async:true,
			url: ctx+"/doubledate/toCheckdate.action",
			type: "post", 
			data: {"ids":$j("#cid").val(),"adate":$j("#adate").val(),"orgid":$j("#orgid").val()},
			dataType: 'json',
			success: function(data){
				if(data == 'succ'){
					parent.$.messager.alert('友情提示', '双倍时间已存在，请重新选择时间！', 'info');
					$j("#adate").focus();
					return false;
				}else{
					document.forms[0].submit();
				}
			}
		});
	}
	
}



//删除选中
function delAll_doubledate() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个活动日!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除活动日吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/doubledate/delDoubledate.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_doubledate(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该活动日信息吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/doubledate/delDoubledate.action?ids="+id;
		document.formSearch.submit();
		}
	})
}

