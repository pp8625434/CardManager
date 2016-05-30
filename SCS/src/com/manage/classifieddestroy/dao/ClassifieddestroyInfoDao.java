package com.manage.classifieddestroy.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.classifieddestroy.model.SClassifieddestroyInfoTab;

public interface ClassifieddestroyInfoDao extends Dao{

	List<SClassifieddestroyInfoTab> getCdinfoList(Integer id);

}
