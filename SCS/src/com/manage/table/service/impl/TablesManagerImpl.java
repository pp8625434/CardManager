package com.manage.table.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.table.dao.TablesDao;
import com.manage.table.model.TablesInfo;
import com.manage.table.service.TablesManager;

public class TablesManagerImpl extends ManagerImpl implements TablesManager{

	@Override
	public List<TablesInfo> findFieldInfoListBytid(Integer tid) {
		
		return ((TablesDao)dao).findFieldInfoListBytid(tid);
	}
	
}
