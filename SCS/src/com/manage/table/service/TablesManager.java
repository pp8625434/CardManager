package com.manage.table.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.table.model.TablesInfo;

public interface TablesManager extends Manager{
	
	/**
	 * 根据tid获得表字段信息
	 * @param tid
	 * @return
	 */
	public List<TablesInfo> findFieldInfoListBytid(Integer tid);

}
