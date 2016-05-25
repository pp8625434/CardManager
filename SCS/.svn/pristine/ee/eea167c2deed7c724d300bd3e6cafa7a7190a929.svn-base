package com.manage.login.service.impl;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.login.model.LoginLog;
import com.manage.login.service.LoginLogManager;

public class LoginLogManagerImpl extends ManagerImpl implements LoginLogManager{
	
	protected void preSaveObject(Object obj) {
	        super.preSaveObject(obj);
	    }

    protected void postSaveObject(Object obj) {
        super.postSaveObject(obj);
    }

    protected void preRemoveObject(Object obj) {
        super.preRemoveObject(obj);      
    }

    protected void postRemoveObject(Object obj) {
        super.postRemoveObject(obj);     
    }
	
	@Override
	public List<LoginLog> LoginLogList(PageInfo sarchPageInfo) throws Exception {
		return super.getList(sarchPageInfo);
	}

	@Override
	public LoginLog getLoginLogById(String id) throws Exception {	
		return (LoginLog) super.getObjectById(id);
	}

	@Override
	public void saveLoginLog(LoginLog log) throws Exception {
		saveObject(log);
		
	}

	@Override
	public void removeLoginLogById(String id) throws Exception {
		removeObjectById(id);
		
	}

}
