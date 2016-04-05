/**
  Copyright (c) 2007
  All rights reserved.
  @author hqt
  @version 20120904
 */

var framework_lookup = Class.create();
framework_lookup.prototype = {
	initialize:function(lookupMapping){
		this.lookupMappings = lookupMapping;
	},
	lookupPOP:function(name){
		this.currentlookupName = name;
		var windowName = this.getAttributeValue(name,"url");
		window.open(windowName, 'anyname' , 'width=1300,height=735');
	},
	getAttributeValue:function(name,attribute){
		return eval("this.lookupMappings."+name+"."+attribute);
	},
	bringBackToDetail:function(obj,index){
		var detailName = this.getAttributeValue(this.currentlookupName,"arrayName");
		var mapping = this.getAttributeValue(this.currentlookupName,"mapping");
		for(i=0;i<mapping.length;i++){
			var b= mapping[i].b;
			var t = mapping[i].t;
			document.getElementById(detailName+"["+index+"]."+t).value = eval("obj."+b);
		}
	},
	bringBack:function(obj){
		var mapping = this.getAttributeValue(this.currentlookupName,"mapping");
		var domain = this.getAttributeValue(this.currentlookupName,"domain");
		for(i=0;i<mapping.length;i++){
			var b= mapping[i].b;
			var t = mapping[i].t;
			var tempKey = document.getElementById(domain+"."+t);
			if(tempKey){
				tempKey.value = eval("obj."+b);
			}
		}
	}
}
var framework_lookup_tempobj;
var framework_lookup_tempIndex;
function bringBack(obj){
	if(framework_lookup_tempIndex!=null){
		framework_lookup_tempobj.bringBackToDetail(obj,framework_lookup_tempIndex);
	}else{
		framework_lookup_tempobj.bringBack(obj);
	}
	framework_lookup_tempIndex = null;
}	