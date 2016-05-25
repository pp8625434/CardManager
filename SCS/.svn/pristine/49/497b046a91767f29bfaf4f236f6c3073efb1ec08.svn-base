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