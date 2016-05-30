package com.manage.quartersubsidies.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.quartersubsidies.dao.QuartersubsidiesInfoDao;
import com.manage.quartersubsidies.model.SQuartersubsidiesInfoTab;
import com.manage.quartersubsidies.service.QuartersubsidiesInfoManager;

public class QuartersubsidiesInfoManagerImpl extends ManagerImpl implements QuartersubsidiesInfoManager{

	@Override
	public List<SQuartersubsidiesInfoTab> getInfoList(Integer id) {
		
		return ((QuartersubsidiesInfoDao) dao).getInfoList(id);
	}

}
