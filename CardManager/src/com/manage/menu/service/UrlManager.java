package com.manage.menu.service;

import java.util.List;


import com.base.framework.service.Manager;

public interface UrlManager extends Manager{
    
	/**
	 * 按照角色Id获得按角色拥有的按钮ID
	 * @param roleId
	 * @return
	 */
	public List<String> getUrlByRole(Integer roleId);
}
