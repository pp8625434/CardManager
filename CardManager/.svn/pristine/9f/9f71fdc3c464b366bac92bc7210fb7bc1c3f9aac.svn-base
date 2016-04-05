package com.manage.login.service;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;
import com.manage.login.model.LoginLog;

public interface LoginLogManager extends Manager{
	
	/**
	 * 登录日志列表
	 * @param sarchPageInfo
	 * @return
	 */
	public List<LoginLog> LoginLogList(PageInfo sarchPageInfo) throws Exception;
	
	
	public LoginLog getLoginLogById(String id) throws Exception;
	
	/**
	 * 记录登录日志
	 * @param log
	 * @throws Exception
	 */
	public void saveLoginLog(LoginLog log) throws Exception;
	
	/**
	 * 删除登录日志
	 * @param id
	 * @throws Exception
	 */
	public void removeLoginLogById(String id) throws Exception;

}
