package com.manage.classifiedtz.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.classifiedtz.model.SClassifiedtzInfoTab;

public interface ClassifiedtzInfoManager extends Manager{

	List<SClassifiedtzInfoTab> getInfo(Integer id);

}
