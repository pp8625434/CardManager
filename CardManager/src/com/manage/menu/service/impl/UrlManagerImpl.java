package com.manage.menu.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.menu.service.UrlManager;
import com.manage.menu.dao.UrlDao;

public class UrlManagerImpl extends ManagerImpl implements UrlManager{
	
	/**
	 * 按照角色Id获得按角色拥有的按钮ID
	 * @param roleId
	 * @return
	 */
	public List<String> getUrlByRole(Integer roleId){
		return ((UrlDao) dao).getUrlByRole(roleId );
	}
    
}
