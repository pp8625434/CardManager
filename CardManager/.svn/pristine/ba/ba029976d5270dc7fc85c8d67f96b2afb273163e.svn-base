package com.base.framework.xml;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

import org.jdom.Document;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.xml.sax.InputSource;

public class XMLUtils {
	
	/**
	 * 将XML对象格式化成String类型
	 * @param code 编码格式
	 * @param doc XML的Document对象
	 * @return
	 */
	public static String formatXMLtoString(String code , Document doc){
		XMLOutputter XMLOut = new XMLOutputter();  
        Format fmt=Format.getPrettyFormat();   
        fmt.setIndent("    ");   
        fmt.setEncoding(code);
        XMLOut.setFormat(fmt);
        return XMLOut.outputString(doc);
	}
	
	/**
	 * 将xml格式的字符串转换成xml的Document类型
	 * @param xmlStr
	 * @return
	 * @throws JDOMException
	 * @throws IOException
	 */
	public static Document formatStringtoXML(String xmlStr) throws JDOMException, IOException{
		StringReader sr = new StringReader(xmlStr);
		InputSource is = new InputSource(sr);
		//创建一个SAXBuilder对象
        SAXBuilder saxBuilder = new SAXBuilder();                        
        //读取prop.xml资源              
        return saxBuilder.build(is);
	}
	
	public static Document formatObjectToXML(Object o){
		
		System.out.println(o.getClass().getName());
		
		
		return null;
	}
	
	public static void main(String[] args) {
		List<String> kList = new ArrayList<String>();
		formatObjectToXML(kList);
	}
}
