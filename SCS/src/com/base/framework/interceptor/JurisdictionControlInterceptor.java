package com.base.framework.interceptor;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.base.util.Utils;
import com.manage.cache.SecurityUtils;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class JurisdictionControlInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6022105556592438076L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String Path = request.getServletPath();
		
		String rIDs = (String) request.getSession().getAttribute("rIDs");
		
		String[] r = rIDs.split(",");
		
		Map<String, Boolean> allUrlMap = new HashMap<String, Boolean>();
		
		for (String roid : r) {
			Map<String, Boolean> uMapTemp = SecurityUtils.getURLHashMapByRole(Integer.parseInt(roid));
			if(Utils.isNotNullOrEmpty(uMapTemp)){
				allUrlMap.putAll(uMapTemp);
			}
		}
		
		Iterator<String> urlIterator = allUrlMap.keySet().iterator();
		
		boolean f = false;
		
		while (urlIterator.hasNext()) {
			String url = urlIterator.next();
			if(url.indexOf(Path)>=0){
				f=true;
				break;
			}
		}
		
		if(f){
			return arg0.invoke();
		}else{
			return "noJurisdiction";
		}

	}
}
