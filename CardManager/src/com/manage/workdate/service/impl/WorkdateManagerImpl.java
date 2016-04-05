package com.manage.workdate.service.impl;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.workdate.dao.WorkdateDao;
import com.manage.workdate.model.Workdate;
import com.manage.workdate.service.WorkdateManager;

public class WorkdateManagerImpl extends ManagerImpl implements WorkdateManager{

	@Override
	public Workdate checkThedate(String ids,String thedates) {
		
		return ((WorkdateDao)dao).checkThedate(ids,thedates);
	}

}
