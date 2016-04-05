package com.base.framework.webservice.util;


import java.io.IOException;

import javax.xml.namespace.QName;

import org.apache.axis2.AxisFault;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.rpc.client.RPCServiceClient;
import org.apache.cxf.endpoint.Client;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;

import sun.misc.BASE64Decoder;


public class WebServiceUtil {
	/**
	 * 调用http协议的Webservice服务
	 * @param wsUrl
	 * @param method
	 * @param arg
	 * @return
	 */
	public Object callService(String wsUrl, String method, Object...arg)  {

		JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
		Client client = dcf.createClient(wsUrl);
		Object[] res = null;
		try {
			res = client.invoke(method, arg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res[0];
		
	}
	
	/**
	 * 调用HTTPS协议的webservice服务
	 * @param wsUrl
	 * @param method
	 * @param keyPath
	 * @param arg
	 * @return
	 */
	public Object callTSLService(String wsUrl, String method, String keyPath , Object...arg){
		
		System.setProperty("javax.net.ssl.trustStore",keyPath);
		JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
		Client client = dcf.createClient(wsUrl);
		Object[] res = null;
		try {
			res = client.invoke(method, arg);
			System.out.println(res.length);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res[0];
		
	}
	
	/**
	 * 解密字符串
	 * @param encodeStr
	 * @return
	 */
	public String decodeoJson(String encodeStr){
		try {
			BASE64Decoder decoder = new BASE64Decoder();
			String d1 = new String(decoder.decodeBuffer(encodeStr));
			BASE64Decoder decoder2 = new BASE64Decoder();
			return new String(decoder2.decodeBuffer(d1));
		} catch (IOException e) {
			return null;
		}
	}
	
	/**
	 * 链接自己平台的webservice时使用
	 * @param url webservice的路径，不要写?wsdl
	 * @param method 请求的方法
	 * @param keyPath 对方服务器的key文件在本地的路径
	 * @param returnClass 返回值的类型
	 * @param arg 参数
	 * @return
	 */
	public Object callSelfService(String url , String method, String keyPath, Class returnClass , Object...arg){
		try{
		//下面这个很重要，访问https编写的webservice时需要填写
	      System.setProperty("javax.net.ssl.trustStore",keyPath);
	      
	      //下面用于双向加密的https协议 本项目单向加密上面一行即可
	      //System.setProperty("javax.net.ssl.keyStorePassword", "password"); 
	      //System.setProperty("javax.net.ssl.trustStore", "E:\\client.truststore"); 
	      //System.setProperty("javax.net.ssl.trustStorePassword", "password"); 
	      
	      // 使用RPC方式调用WebService   
	      RPCServiceClient serviceClient = new RPCServiceClient();   
	      // 指定调用WebService的URL   
	      EndpointReference targetEPR = new EndpointReference(url);   
	      Options options = serviceClient.getOptions();
	      //确定目标服务地址   
	      options.setTo(targetEPR);   
	      //确定调用方法   
	      options.setAction("urn:"+method);   
	  
	      /**  
	       * 指定要调用的getPrice方法及WSDL文件的命名空间  
	       * 如果 webservice 服务端由axis2编写  
	       * 命名空间 不一致导致的问题  
	       * org.apache.axis2.AxisFault: java.lang.RuntimeException: Unexpected subelement arg0  
	       */  
	      QName qname = new QName("http://service.webservice.manage.com", method);   
	      // 指定getPrice方法的参数值   
	      Object[] parameters = arg;   
	         
	      // 指定getPrice方法返回值的数据类型的Class对象   
	      Class[] returnTypes = new Class[] { returnClass};   
	  
	      // 调用方法二 getPrice方法并输出该方法的返回值   
	      Object[] response = serviceClient.invokeBlocking(qname, parameters, returnTypes);   
	      // String r = (String) response[0];   
	      return  response[0];   
	  
	    } catch (AxisFault e) {   
	      e.printStackTrace();  
	      return null;
	    }   
	}
}
