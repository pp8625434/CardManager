function edit_workdate(id){
	var para = pageInfo();
	var str = ctx+"/workdate/editWorkdate.action?workdate.id="+id+"&"+para;
	parent.addTab("编辑工作日信息",str,"icon icon-nav");
}

function add_wokedate(){
	var para = pageInfo();
	var str = ctx+"/workdate/editWorkdate.action";
	parent.addTab("新增工作日信息",str,"icon icon-nav");
}

function workdate_info(id){
	var para = pageInfo();
	parent.addTab("工作日信息详情",ctx+"/workdate/workdateInfo.action?workdate.id="+id+"&"+para,"icon icon-nav");		
}

function onSubEdit(){
	
	var thedate = $j("#thedate").val();
	var wid = $j("#cid").val();
	var d = new Date(Date.parse(thedate.replace(/-/g, "/")));
	var t = d.getDay();
	var question1 = $j('input:radio[name="workdate\\.dtype"]:checked').val(); 
	if("" == thedate){
		parent.$.messager.alert('友情提示', '请输入日期！', 'info');
		$j("#thedate").focus();
		return false;
	}else if(thedate !=""){
		$j.ajax({
			async:false,
			url: ctx+"/workdate/checkThedate.action",
			type: "post", 
			data: {"ids":wid,"tDate":thedate},
			dataType: 'json',
			success: function(data){
				if(data == 'succ'){
					parent.$.messager.alert('友情提示', '日期已存在，请重新选择日期！', 'info');
					$j("#thedate").focus();
					return false;
				}else{
					if(wid != ""){
						if(t == 6 || t == 0){
							if(question1 == 0 ){
								parent.$.messager.alert('友情提示', '只能选择工作日！', 'info');
								return false;
							}else{
								$j("#formSearch").submit();
							}
  						}else{
  							if(question1 == 1){
  								parent.$.messager.alert('友情提示', '只能选择休息日！', 'info');
								return false;
  							}else{
  								$j("#formSearch").submit();
  							}
  						}	
					}else{
						$j("#formSearch").submit();
					}
				}
			}
		});
	}
}

//删除选中
function delAll_workdate() {
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
		parent.$.messager.alert("友情提示", "请至少选中一个工作日!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除工作日吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/workdate/delWorkdate.action?ids=" + idString;
			document.getElementById("formSearch").submit();
		}
	});
}

function del_workdate(id){				
	parent.$.messager.confirm('友情提示', '您确定删除该工作日信息吗？', function (r) {
	if (r) {
		document.formSearch.action=ctx+"/workdate/delWorkdate.action?ids="+id;
		document.formSearch.submit();
		}
	})
}