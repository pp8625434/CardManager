package com.manage.enumeration.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.enumeration.dao.EnumerationDao;
import com.manage.enumeration.model.Enumeration;

public class EnumerationDaoImpl extends DaoImpl implements EnumerationDao{

	@Override
	public Enumeration getEnumerationByName(String enName) {
		String hql =  "from com.manage.enumeration.model.Enumeration info where info.enName='"+enName+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Enumeration)list.get(0);
		}
		return null;
	}
	
}
