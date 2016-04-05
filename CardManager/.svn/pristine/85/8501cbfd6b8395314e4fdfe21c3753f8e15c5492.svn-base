package com.base.framework.security.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;

import com.base.framework.security.dao.UserRoleDao;
import com.base.framework.security.model.UserRole;
import com.manage.user.model.User;

public class UserRoleDaoImpl extends DaoImpl implements UserRoleDao{

	
	public List<UserRole> getRoleListByUser(Integer userId){
		String queryString = " from com.base.framework.security.model.UserRole userrole where userrole.securityUser = ?";
		List<UserRole> list =  (List<UserRole>)getHibernateTemplate().find(queryString,userId);
		return (list == null || list.size()<1 ) ? null : list;
	}
	
}
