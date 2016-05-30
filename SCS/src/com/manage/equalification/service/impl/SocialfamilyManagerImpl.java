package com.manage.equalification.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.equalification.dao.SocialfamilyDao;
import com.manage.equalification.model.SSocialfamilyTab;
import com.manage.equalification.service.SocialfamilyManager;

public class SocialfamilyManagerImpl extends ManagerImpl implements SocialfamilyManager{

	@Override
	public List<SSocialfamilyTab> getSfList(Integer id) {
		
		return ((SocialfamilyDao)dao).getSfList(id);
	}

}
