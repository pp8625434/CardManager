package com.manage.examclassification.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.examclassification.dao.ClassifiedprojectDao;
import com.manage.examclassification.model.SClassifiedprojectTab;

public class ClassifiedprojectDaoImpl extends DaoImpl implements ClassifiedprojectDao{

	@Override
	public List<SClassifiedprojectTab> getCpList(Integer id) {
		String hql = "from com.manage.examclassification.model.SClassifiedprojectTab sc where sc.ecid ="+id;
		List<SClassifiedprojectTab> cpList = getHibernateTemplate().find(hql);
		return cpList;
	}

}
