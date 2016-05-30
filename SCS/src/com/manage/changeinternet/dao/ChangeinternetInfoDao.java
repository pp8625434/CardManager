package com.manage.changeinternet.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.changeinternet.model.SChangeinternetInfoTab;

public interface ChangeinternetInfoDao extends Dao{
	
	List<SChangeinternetInfoTab> getCinfoList(Integer id);
}
