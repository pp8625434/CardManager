package com.manage.examclassification.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.examclassification.dao.ClassifiedprojectDao;
import com.manage.examclassification.model.SClassifiedprojectTab;
import com.manage.examclassification.service.ClassifiedprojectManager;

public class ClassifiedprojectManagerImpl extends ManagerImpl implements ClassifiedprojectManager{

	@Override
	public List<SClassifiedprojectTab> getCpList(Integer id) {
		
		return ((ClassifiedprojectDao)dao).getCpList(id);
	}

}
