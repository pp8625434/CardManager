package com.manage.classifiedtz.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.classifiedtz.model.SClassifiedtzInfoTab;

public interface ClassifiedtzInfoDao extends Dao{

	List<SClassifiedtzInfoTab> getInfo(Integer id);

}
