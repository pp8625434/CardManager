package com.base.framework.security.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.base.framework.security.model.UserRole;

public interface UserRoleDao extends Dao{

	
	public List<UserRole> getRoleListByUser(Integer userId);
	
}
