package com.manage.doubledate.service.impl;


import com.base.framework.service.impl.ManagerImpl;
import com.manage.doubledate.dao.DoubledateDao;
import com.manage.doubledate.model.Doubledate;
import com.manage.doubledate.service.DoubledateManager;


public class DoubledateManagerImpl extends ManagerImpl implements DoubledateManager{

	@Override
	public Doubledate getDoubledateByAdate(String ids,String orgid ,String adate) throws Exception {
		return ((DoubledateDao)dao).getDoubledateByAdate(ids,orgid , adate);
	}
}
