$j(document).ready(function(){
	$j.ajax({
		url: ctx+"/creditrank/creditrankList.action",
		type: "post", 
		data: {},
		dataType: 'json',
		success: function(data){
			var str = "<tr class=\"TRtit\"><th>手机号码</th><th>姓名</th><th>积分</th>";
			if(data != null && data != "[]"){
				$j("#datatable").empty();
				var list = $j.parseJSON(data);
				for(var i=0;i<list.length;i++){
					if(list[i].cellphone && "" !=list[i].cellphone){
						str += "<tr ><td align=\"center\">"+list[i].cellphone+"</td>";
					}else{
						str += "<td align=\"center\">"+""+"</td>";
					}
					if(list[i].realname && "" !=list[i].realname){
						str += "<td align=\"center\">"+list[i].realname+"</td>";
					}else{
						str += "<td align=\"center\">"+""+"</td>";
					}
					if(list[i].sumcredit && "" !=list[i].sumcredit){
						str += "<td align=\"center\">"+list[i].sumcredit+"</td>";
					}else{
						str += "<td align=\"center\">"+""+"</td>";
					}
				}
				$j("#datatable").append(str);
			}else{
				alert("无数据显示！");
			}
		}
	});
});