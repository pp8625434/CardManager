package com.manage.table.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.table.dao.TablesDao;
import com.manage.table.model.TablesInfo;

public class TablesDaoImpl extends DaoImpl implements TablesDao{

	@Override
	public List<TablesInfo> findFieldInfoListBytid(Integer tid) {
		String hql = " from com.manage.table.model.TablesInfo info  where info.tid="+tid;
		List<TablesInfo>  list = getHibernateTemplate().find(hql);
		return list!=null?list:null;
	}

}
