package com.manage.examclassification.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.examclassification.model.SClassifiedprojectTab;

public interface ClassifiedprojectManager extends Manager{

	public List<SClassifiedprojectTab> getCpList(Integer id);

}
