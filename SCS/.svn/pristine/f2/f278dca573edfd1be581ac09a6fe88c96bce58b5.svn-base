package com.manage.vregist.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.vregist.dao.VregistInfoDao;
import com.manage.vregist.model.SVregistInfoTab;
import com.manage.vregist.service.VregistInfoManager;

public class VregistInfoManagerImpl extends ManagerImpl implements VregistInfoManager{

	@Override
	public List<SVregistInfoTab> getInfoList(Integer id) {
		
		return ((VregistInfoDao)dao).getInfoList(id);
	}

}
