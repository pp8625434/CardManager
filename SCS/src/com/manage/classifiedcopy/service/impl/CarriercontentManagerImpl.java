package com.manage.classifiedcopy.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.classifiedcopy.dao.CarriercontentDao;
import com.manage.classifiedcopy.model.SCarriercontentTab;
import com.manage.classifiedcopy.service.CarriercontentManager;

public class CarriercontentManagerImpl extends ManagerImpl implements CarriercontentManager{

	@Override
	public List<SCarriercontentTab> getcontentList(Integer id) {
		
		return ((CarriercontentDao)dao).getcontentList(id);
	}

}
