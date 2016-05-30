package com.manage.classifieddestroy.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.classifieddestroy.model.SClassifieddestroyInfoTab;

public interface ClassifieddestroyInfoManager extends Manager{

	List<SClassifieddestroyInfoTab> getCdinfoList(Integer id);

}
