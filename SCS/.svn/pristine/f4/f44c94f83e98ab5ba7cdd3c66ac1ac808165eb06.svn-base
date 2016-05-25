package com.base.framework.document.demo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.base.framework.document.DocumentUtil;

public class TestDemo {
	
	public static void main(String[] args) {
		  Map<String,Object> dataMap=new HashMap<String,Object>();
		  String outPath = "D:";
		  DocumentUtil documentUtil = new DocumentUtil("docdemo.ftl",null,outPath+"//out.doc");
		  dataMap.put("picdata", documentUtil.getImageStr("D://company.png"));
		  dataMap.put("title", "我是标题");
		  List<String> t = new ArrayList<String>();
		  t.add("aaaa");
		  t.add("bbbb");
		  dataMap.put("slist", t);
		  
		  documentUtil.setDataMap(dataMap);
		  documentUtil.createDoc();
	}
	
}
