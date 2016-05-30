package com.manage.equalification.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.equalification.dao.StudyworkDao;
import com.manage.equalification.model.SStudyworkTab;

public class StudyworkDaoImpl extends DaoImpl implements StudyworkDao{

	@Override
	public List<SStudyworkTab> getSwList(Integer id) {
		String hqlString ="from com.manage.equalification.model.SStudyworkTab info where info.eqid="+id;
		List<SStudyworkTab> list = getHibernateTemplate().find(hqlString);
 		return (list == null ||list.size()<1)?null:list;
	}

}
