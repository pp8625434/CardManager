package com.manage.classifieddestroy.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.classifieddestroy.dao.ClassifieddestroyInfoDao;
import com.manage.classifieddestroy.model.SClassifieddestroyInfoTab;

public class ClassifieddestroyInfoDaoImpl extends DaoImpl implements ClassifieddestroyInfoDao{

	@Override
	public List<SClassifieddestroyInfoTab> getCdinfoList(Integer id) {
		String hqlString = " from com.manage.classifieddestroy.model.SClassifieddestroyInfoTab info where info.cdid="+id;
		List<SClassifieddestroyInfoTab> list = getHibernateTemplate().find(hqlString);
		return (list == null || list.size()<1)?null : list;
	}

}
