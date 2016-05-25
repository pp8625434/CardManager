function edit_vregist(id){
	var para = pageInfo();
	var str = ctx+"/vregist/vregistEdit.action?vregist.id="+id+"&"+para;
	parent.addTab("编辑来访人员登记簿（样本）",str,"icon icon-nav");
}
function add_vregist(){

	parent.addTab("新增来访人员登记簿（样本）",ctx+"/vregist/vregistEdit.action","icon icon-nav");
}
function vregist_info(id){

	var para = pageInfo();
	var str = ctx + "/vregist/vregistInfo.action?vregist.id="+id+"&"+para;
	parent.addTab("查看来访人员登记簿（样本）",str,"icon icon-nav");
}
function addPerpson(){
	var html = "";
	html +="<tr><td>"
	html +="<input type='text' name='vdate'  id='vdate'  dtype='date(yyyy-MM-dd)' />";
	html +="<td><input type='text' name='visitorunit' onkeyup=\"if(isNaN(value))this.value='';\" onafterpaste=\"if(isNaN(value))this.value='';\"/></td> ";
	html +="<td><input type='text' name='vname'/></td>";
	html +="<td><input type='text' name='vpurpose'/></td>";
	html +="<td><input type='text' name='acofficials'/></td> ";
	html +="<td><input type='text' name='vstartdate' id='vstartdate' dtype='date(yyyy-MM-dd HH:mm:ss)'/></td>";
	html +="<td><input type='text' name='venddate' id='venddate' dtype='date(yyyy-MM-dd HH:mm:ss)'/></td>";
	html +="<td><textarea rows='3' name='note' id='note'></textarea>";
	html +="</td></tr>";
	$j("#mytable").append(html);
	jsImport("/js/util/formUtil.js");
	//$j("#mytable").append("<tr ><td><s:textfield name=\"vdate\" id=\"vdate\" onclick=\"WdatePicker({isShowWeek:true,dateFmt:'yyyy-MM-dd'})\""+ 
	//"cssClass=\"Wdate\" cssStyle=\"width:96px;\" readonly=\"true\" disabled='mark in {\"view\"}?true:false' title='起始时间' >"+
	//"<s:param name=\"value\"><s:property value=\"vdate\" /></s:param></s:textfield></td>"+
	//"<td><input type='text' name='visitorunit' onkeyup=\"if(isNaN(value))this.value='';\" onafterpaste=\"if(isNaN(value))this.value='';\"/></td> "+
	//"<td><input type='text' name='vname'/></td> "+
	//"<td><input type='text' name='vpurpose'/></td> "+
	//"<td><input type='text' name='acofficials'/></td> "+
	//"<td><input type='text' name='vstartdate' id='vstartdate' dtype='date(yyyy-MM-dd HH:mm:ss)'/></td> "+
	//"<td><input type='text' name='venddate' id='venddate' dtype='date(yyyy-MM-dd HH:mm:ss)'/></td> "+
	//"<td><textarea rows='3' name='note' id='note'></textarea></td></tr>");
}

function jsImport(path) {
 var i;
 var ss = document.getElementsByTagName("script");
// for (i = 0; i < ss.length; i++) {
//  if (ss[i].src && ss[i].src.indexOf(path) != -1) {
 //  return;
 // }
// }
 var s = document.createElement("script");
 s.type = "text/javascript";
 s.src = ctx+path;
 alert(s.src);
 var head = document.getElementsByTagName("head")[0];
 head.appendChild(s);
}

function saveVregist(){
	
	$j("#formSearch").submit();
}

function delVregist(id){
	parent.$.messager.confirm('友情提示','您确定要删除该来访人员登记簿（样本）吗？',function(r){
		if(r){
			document.formSearch.action=ctx+"/vregist/delVregist.action?ids="+id;
			document.formSearch.submit();
		}
	})
}
function delAll_vregist(){
	var obj = document.getElementsByName("orderId");
	var sid = "";
	if(formSearch.orderId.length == undefined){
		if (formSearch.orderId.checked == true){
			sid=formSearch.orderId.value;
		}
	}else{
		for(var i=0;i<obj.length;i++){
			if(obj[i].checked==true){
				sid = sid +","+obj[i].value;
			}
		}
	}
	if(sid.length==0){
		parent.$.messager.alert("友情提示", "请选择至少一个来访人员登记簿（样本）信息!", "info");
		return;
	}
	parent.$.messager.confirm("友情提示", "确定要删除选中的来访人员登记簿（样本）信息吗？", function (r) {
		if (r) {
			document.getElementById("formSearch").action = ctx + "/vregist/delVregist.action?ids="+sid;
			document.getElementById("formSearch").submit();
		}
	});
}