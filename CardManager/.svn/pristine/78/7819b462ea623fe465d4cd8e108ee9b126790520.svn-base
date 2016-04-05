package com.manage.menu.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.enumeration.model.Enumeration;
import com.manage.menu.dao.MenuDao;
import com.manage.menu.model.Menu;
public class MenuDaoImpl extends DaoImpl implements MenuDao{

	@Override
	public Menu getMenuByName(String name) {
		String hql =  "from com.manage.menu.model.Menu  where name='"+name+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Menu)list.get(0);
		}
		return null;
	}

}
