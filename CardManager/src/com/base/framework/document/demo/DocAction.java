package com.base.framework.document.demo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.alibaba.fastjson.JSON;
import com.base.framework.document.DocumentUtil;
import com.base.framework.web.struts.BaseAction;

public class DocAction extends BaseAction {
	
	@Override
	public String execute() throws Exception {

//		Map<String,Object> dataMap=new HashMap<String,Object>();
//		  String outPath = getApplication().getRealPath("/temp/");
//		  DocumentUtil documentUtil = new DocumentUtil("ldmb.ftl",null,outPath+"//out.doc");
//		  dataMap.put("jqname", "北京军区");
//		  dataMap.put("systemname", "网络漏洞扫描监管系统");
//		  dataMap.put("desc", "报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介报告简介");
//		  dataMap.put("picdata", documentUtil.getImageStr("//usr//tomcat//ddd.gif"));
//		  List<Info> _table1=new ArrayList<Info>();
//		  
//		  Info t1=new Info();
//		  t1.setDanwei("706所");
//		  t1.setShuliang("3000");
//		  t1.setJinji("1000");
//		  t1.setGao("800");
//		  t1.setZhong("200");
//		  t1.setDi("1000");
//		  t1.setWei("2000");
//		  t1.setYi("1000");
//		  _table1.add(t1);
//		  
//		  Info t2=new Info();
//		  t2.setDanwei("仿真中心");
//		  t2.setShuliang("4000");
//		  t2.setJinji("1200");
//		  t2.setGao("1000");
//		  t2.setZhong("800");
//		  t2.setDi("2000");
//		  t2.setWei("2500");
//		  t2.setYi("1500");
//		  _table1.add(t2);
//		  
//		  dataMap.put("infolist", _table1);
//		  
//		  dataMap.put("author", "赵磊");
//		  dataMap.put("cdate", "2014-10-10");
//		  dataMap.put("beizhu", "备注信息在这里");
//		  documentUtil.setDataMap(dataMap);
//		  documentUtil.createDoc();
		

		return null;
	}
	

	

	
	
	public static void main(String[] args) throws IOException {
		String xmlPath = "<cast>123</cast>";
		BASE64Encoder encoder = new BASE64Encoder();
		xmlPath = encoder.encode(xmlPath.getBytes());
		System.out.println(xmlPath);
		BASE64Decoder decoder = new BASE64Decoder();
		
		System.out.println(new String(decoder.decodeBuffer(xmlPath)));
		
		Info info = new Info();
		info.setDanwei("北京军区");
		info.setDi("2");
		info.setZhong("3");
		info.setGao("4");
		info.setJinji("1");
		info.setShuliang("10");
		info.setWei("4");
		info.setYi("6");
		
		Info info1 = new Info();
		info1.setDanwei("沈阳军区");
		info1.setDi("4");
		info1.setZhong("6");
		info1.setGao("8");
		info1.setJinji("2");
		info1.setShuliang("20");
		info1.setWei("8");
		info1.setYi("12");
		
		List<Info> test = new ArrayList<Info>();
		test.add(info);
		test.add(info1);
		
		String JsonStr = JSON.toJSONString(test);
		System.out.println(JsonStr);
		
		
		List<Info> kList = JSON.parseArray(JsonStr, Info.class);
		for (Info k : kList) {
			System.out.println(k.getDanwei()+"-"+k.getDi()+"-"+k.getZhong()+"-"+k.getGao()+"-"+k.getJinji()+"-"+k.getShuliang()+"-"+k.getYi()+"-"+k.getWei());
		}
		
	}
	
}
