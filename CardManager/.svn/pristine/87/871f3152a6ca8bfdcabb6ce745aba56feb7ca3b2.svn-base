package com.manage.menu.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.menu.model.BMenuLink;
import com.manage.menu.service.BMenuLinkManager;
import com.manage.menu.dao.BMenuLinkDao;

public class BMenuLinkManagerImpl extends ManagerImpl implements BMenuLinkManager{
	
	/**
	 * 按照角色Id获得按角色拥有的按钮ID
	 * @param roleId
	 * @return
	 */
	public List<BMenuLink> getButtonLinkByRole(Integer roleId , String Type){
		return ((BMenuLinkDao) dao).getButtonLinkByRole(roleId , Type);
	}
    
}
