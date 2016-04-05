package com.manage.cache;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jdom.Document;
import org.jdom.Element;

import com.base.framework.BaseConfigHolder;
import com.base.framework.xml.XMLUtils;
import com.base.util.FormatDate;
import com.manage.organization.model.Organization;

public class OrganizationUtils {
	
	public static List<Organization> list;
	
	public static Map<String, List<Organization>> orgMap;
	
	public static Map<String, String> flagMap = new HashMap<String, String>();
	
	public static List<Organization> getOrganizationList(String urlpath) throws Exception{
		Date nowDate = new Date();
		if(flagMap.get("flag")==null || !flagMap.get("flag").equals(FormatDate.dateToStringByStr(nowDate, "yyyyMMddHH"))){
			list = null;
			flagMap.put("flag", FormatDate.dateToStringByStr(nowDate, "yyyyMMddHH"));
		}
		
		if(list == null || list.size()==0){
			list = new ArrayList<Organization>();
			orgMap = new HashMap<String, List<Organization>>();
			
			URL url = new URL(urlpath);
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			connection.connect();
			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTF-8"));
			String line;
			StringBuilder sb = new StringBuilder();
			while((line = br.readLine())!=null){
				sb.append(line);
			}
			br.close();
			connection.disconnect();
			
			Document doc =  XMLUtils.formatStringtoXML("<NewDataSet"+sb.toString().split("<NewDataSet")[1]);
			List<Element> elist = doc.getRootElement().getChildren();
			Organization o = null;
			List<Organization> temp=null;
			for(Element e :elist){
				o = new Organization();
				o.setOid(e.getChild("OID").getTextTrim());
				o.setOname(e.getChild("OName").getTextTrim());
				o.setOtagid(e.getChild("OTagID").getTextTrim());
				o.setOtitle(e.getChild("OName").getTextTrim());
				list.add(o);
				temp = new ArrayList<Organization>();
				temp.add(o);
				orgMap.put(e.getChild("OTagID").getTextTrim(), temp);
			}
		}else if(urlpath.indexOf("otagid")>=0){
			return orgMap.get(urlpath.split("&otagid=")[1]);
		}
		
		return list;
	}
	
	public static void main(String[] args) throws Exception {
		URL url = new URL("http://gov.easyxiao.com/shanhaiguan.ashx?datatype=getorganization&otagid=99");
		HttpURLConnection connection = (HttpURLConnection)url.openConnection();
		connection.connect();
		BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTF-8"));
		String line;
		StringBuilder sb = new StringBuilder();
		while((line = br.readLine())!=null){
			sb.append(line);
		}
		br.close();
		connection.disconnect();
		
		System.out.println(sb.toString());
		
		Document doc =  XMLUtils.formatStringtoXML("<NewDataSet"+sb.toString().split("<NewDataSet")[1]);
		List<Element> elist = doc.getRootElement().getChildren();
		for(Element e :elist){
			System.out.println(e.getChild("OName").getTextTrim());;
		}
	}
	/**
	 * @see 根据社区id获取社区名称
	 * @author GGM
	 * @date Jan 26, 2016 1:27:44 PM
	 */
	public static String getOname(String orgid)throws Exception{
		List<Organization> list = getOrganizationList(BaseConfigHolder.getOrganizationatPath()+"&otagid="+orgid);
		return list.get(0).getOname();
	
	}
}
