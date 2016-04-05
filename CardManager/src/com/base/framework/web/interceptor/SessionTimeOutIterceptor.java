package com.base.framework.web.interceptor;

import com.manage.user.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;


public class SessionTimeOutIterceptor extends AbstractInterceptor {  

	private static final long serialVersionUID = 7579862236766378267L;
	
	private String LOGIN = "login"; 

	public String intercept(ActionInvocation invocation) throws Exception {
		
	ActionContext ctx=invocation.getInvocationContext();
	User user=(User)ctx.getSession().get("user");

	         
	if(user !=null){
	      return invocation.invoke();
	}

	//���ʱ��������ʾҳ��
	return LOGIN;

	}
	
}
