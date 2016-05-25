package com.manage.vregist.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.vregist.dao.VregistInfoDao;
import com.manage.vregist.model.SVregistInfoTab;

public class VregistInfoDaoImpl extends DaoImpl implements VregistInfoDao{

	@Override
	public List<SVregistInfoTab> getInfoList(Integer id) {
		String hql = " from com.manage.vregist.model.SVregistInfoTab info where info.vid="+id;
		List<SVregistInfoTab> list = getHibernateTemplate().find(hql);
		return (list == null || list.size()<1)?null:list;
	}

}
