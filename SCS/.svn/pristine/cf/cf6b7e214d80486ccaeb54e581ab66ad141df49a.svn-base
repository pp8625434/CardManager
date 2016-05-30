package com.manage.changeinternet.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.changeinternet.dao.ChangeinternetInfoDao;
import com.manage.changeinternet.model.SChangeinternetInfoTab;

public class ChangeinternetInfoDaoImpl extends DaoImpl implements ChangeinternetInfoDao{
	
	@Override
	public List<SChangeinternetInfoTab> getCinfoList(Integer id) {
		String hql = "from com.manage.changeinternet.model.SChangeinternetInfoTab info where info.cid ="+id;
		List<SChangeinternetInfoTab> list = getHibernateTemplate().find(hql);
		return (list == null || list.size()<1 ) ? null : list;
	}
}
