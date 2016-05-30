package com.manage.equalification.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.equalification.dao.SocialfamilyDao;
import com.manage.equalification.model.SSocialfamilyTab;

public class SocialfamilyDaoImpl extends DaoImpl implements SocialfamilyDao{

	@Override
	public List<SSocialfamilyTab> getSfList(Integer id) {
		String hqlString = "from com.manage.equalification.model.SSocialfamilyTab info where info.eqid="+id;
		List<SSocialfamilyTab> list = getHibernateTemplate().find(hqlString);
		return (list == null || list.size()<1)?null:list;
	}

}
