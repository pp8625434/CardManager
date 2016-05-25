package com.manage.vregist.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.vregist.model.SVregistInfoTab;

public interface VregistInfoDao extends Dao{

	List<SVregistInfoTab> getInfoList(Integer id);

}
