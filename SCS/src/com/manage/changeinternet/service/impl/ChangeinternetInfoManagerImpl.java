package com.manage.changeinternet.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.changeinternet.dao.ChangeinternetInfoDao;
import com.manage.changeinternet.model.SChangeinternetInfoTab;
import com.manage.changeinternet.service.ChangeinternetInfoManager;

public class ChangeinternetInfoManagerImpl extends ManagerImpl implements ChangeinternetInfoManager{

	@Override
	public List<SChangeinternetInfoTab> getCinfoList(Integer id) {
		
		return ((ChangeinternetInfoDao)dao).getCinfoList(id);
	}
}
