package com.manage.menu.dao;

import java.util.List;

import com.base.framework.dao.Dao;

public interface UrlDao extends Dao{

	/**
	 * 按照角色Id获得按角色拥有的按钮ID
	 * @param roleId
	 * @return
	 */
	public List<String> getUrlByRole(Integer roleId);
}
