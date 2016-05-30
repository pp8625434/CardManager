package com.manage.classifiedtz.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.classifiedtz.dao.ClassifiedtzInfoDao;
import com.manage.classifiedtz.model.SClassifiedtzInfoTab;
import com.manage.classifiedtz.service.ClassifiedtzInfoManager;

public class ClassifiedtzInfoManagerImpl extends ManagerImpl implements ClassifiedtzInfoManager{

	@Override
	public List<SClassifiedtzInfoTab> getInfo(Integer id) {
		
		return ((ClassifiedtzInfoDao)dao).getInfo(id);
	}

}
