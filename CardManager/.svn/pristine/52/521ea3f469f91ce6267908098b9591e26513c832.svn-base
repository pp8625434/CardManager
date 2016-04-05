package com.base.framework.security.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.base.framework.security.dao.RoleDao;
import com.base.framework.security.model.Role;

public class RoleDaoImpl extends DaoImpl implements RoleDao{

	@Override
	public Role getRoleByName(String name) {
		// TODO Auto-generated method stub
		String hql = "from com.base.framework.security.model.Role info where info.name='"+name+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Role)list.get(0);
		}
		return null;
	}

}
