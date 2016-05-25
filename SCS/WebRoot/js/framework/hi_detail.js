/**
  Copyright (c) 2007, 
  All rights reserved.
  @author hqt
  @version 20120914
 */

var framework_detail_mappings;

var framework_detail = Class.create();
framework_detail.prototype = {
	initialize:function(mappings){
		framework_detail_mappings = mappings;
	},
	addLine:function(name,index){
		var detailName = this.getAttributeValue(name,"name");
		var tableid = this.getAttributeValue(name,"containerID");
		var tr  = document.getElementById(tableid).insertRow();
		this.lookupMethodName = this.getAttributeValue(name,"POPmethod");
		var mappings = this.getAttributeValue(name,"fields");
		for(i=0;i<mappings.length;i++){
			var tabTd = tr.insertCell();
			var elementName = detailName+"["+index+"]."+ mappings[i].name;
			this.parseHTML(elementName,index,mappings[i],tabTd,detailName);
		}
		var delTd = tr.insertCell();
		var removeMethod = this.getAttributeValue(name,"removeMethod");;
		delTd.innerHTML = "<span style=\"cursor: hand\" onclick=\""+removeMethod+"('','"+name+"')\"><img src=\"/images/delete.gif\" width=\"18\" height=\"17\" border=\"0\" /></span>";
	},
	deleteLine:function(id,detailName,event){
	//if(!window.confirm("确定要删除这个记录吗?")){
	parent.$.messager.confirm('友情提示', '确定要删除这个记录吗?', function (r) {
	if (r) {
		return ;
	}
	})
		//原来的方式，因为生成的每行的方式可能存在问题 ，改成如下的方式;
		//var ele = Event.element(event).parentElement.parentElement;//.parentElement;
		//Element.remove(ele);
		
		if(id!=null&&id!=""){
			var ele = Event.element(event).parentElement.parentElement;//.parentElement;
			Element.remove(ele);
		
			var ajax = new CUBBYAjax(this.getAttributeValue(detailName,"removeAction")+id,null,function(response){});
			ajax.request();	
		}else{
			var ele = Event.element(event).parentElement.parentElement.parentElement;
			Element.remove(ele);
		}
	},
	getAttributeValue:function(name,attribute){
		return eval("framework_detail_mappings."+name+"."+attribute);
	},
	parseHTML:function(elementName,index,mappingIter,td,detailName){
		var type = mappingIter.type;
		if(type=="text"){
		    var size = "";
		    if(mappingIter.size!=null){
		    	size = "size='"+mappingIter.size+"'";
		    }
		    var eventStr = "";
		    if(mappingIter.event!=null){
		    	eventStr = mappingIter.event
		    }
			td.innerHTML = "<input type='text' name='"+elementName+"' id='"+elementName+"' "+size + " "+eventStr+"/>";
			return;
		}
		if(type=="lookup"){
			var lookupName = mappingIter.lookupName;
			var lookupPoPmethod = this.lookupMethodName;
			td.innerHTML = "<input type='hidden' name='"+elementName+".id' id='"+elementName+".id'><input type='text' name='"+detailName+"["+index+"]."+mappingIter.field+"' id='"+detailName+"["+index+"]."+mappingIter.field+"'/><span  style=\"cursor: hand\" onclick=\""+lookupPoPmethod+"('"+lookupName+"',"+index+")\"><img src=\"/images/lookup.gif\" width=\"18\" height=\"17\" border=\"0\" /></span>";
			return ;
		}
		if(type=="Date"){
		
		}
		if(type=="Eum"){
			var eumName = mappingIter.selectName;
			var returnHTML;
			var ajax = new CUBBYAjax("/common/select.jsp?emuName="+eumName+"&inputName="+elementName,null,function(response){
				var content = response.responseXML;
				
				var selectXML = content.getElementsByTagName("option");
				var selectName = content.getElementsByTagName("name");
				
				var select1 = document.createElement("select");
				select1.name = selectName[0].text;
				for(i=0;i<selectXML.length;i++){
				var options = selectXML[i];
					select1.options[i] = new Option(options.text,options.attributes[0].text);	
				}
				
				td.appendChild(select1);
			});
			ajax.request();
			
		}
	}
	
}

