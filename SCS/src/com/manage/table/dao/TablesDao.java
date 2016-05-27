package com.manage.table.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.table.model.TablesInfo;

public interface TablesDao extends Dao{

	public List<TablesInfo> findFieldInfoListBytid(Integer tid);

}
