package com.manage.applykeypart.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.applykeypart.dao.MigrantsioDao;
import com.manage.applykeypart.model.SMigrantsioTab;

public class MigrantsioDaoImpl extends DaoImpl implements MigrantsioDao{

	@Override
	public List<SMigrantsioTab> getMList(Integer id) {
		String hql ="from com.manage.applykeypart.model.SMigrantsioTab info where info.aid="+id;
		List<SMigrantsioTab> list = getHibernateTemplate().find(hql);
		return (list == null || list.size()<1)?null:list;
	}

}
