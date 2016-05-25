package com.manage.menu.service;

import java.util.List;

import com.manage.menu.model.BMenuLink;

import com.base.framework.service.Manager;

public interface BMenuLinkManager extends Manager{
    
	/**
	 * 按照角色Id获得按角色拥有的按钮ID
	 * @param roleId
	 * @return
	 */
	public List<BMenuLink> getButtonLinkByRole(Integer roleId , String Type);
}
