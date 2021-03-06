package com.manage.classifiedtz.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.classifiedtz.dao.ClassifiedtzInfoDao;
import com.manage.classifiedtz.model.SClassifiedtzInfoTab;

public class ClassifiedtzInfoDaoImpl extends DaoImpl implements ClassifiedtzInfoDao{

	@Override
	public List<SClassifiedtzInfoTab> getInfo(Integer id) {

		String hqlString =" from com.manage.classifiedtz.model.SClassifiedtzInfoTab info where info.ctzid="+id;
		List<SClassifiedtzInfoTab> list = getHibernateTemplate().find(hqlString);
		return (list == null || list.size()<1)?null : list;
	}

}
