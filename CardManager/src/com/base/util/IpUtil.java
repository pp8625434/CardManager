package com.base.util;

import javax.servlet.http.HttpServletRequest;

public class IpUtil {

	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		if (ip.indexOf(",") >= 0) {
			String[] tmp = ip.split(",");
			for(int i=0;i<tmp.length;i++){
				if(tmp[i]!=null && !tmp.equals("") && !tmp.equals("unknown")){
					ip = tmp[i];
					break;
				}
			}
		}
		return ip;
	}

}
