package com.base.framework.js.service.impl;

import com.base.framework.js.dao.JsUtilDao;
import com.base.framework.js.service.JsUtilManager;
import com.base.framework.service.impl.ManagerImpl;

public class JsUtilManagerImpl extends ManagerImpl implements JsUtilManager {

	/**
	 * 根据表名，列名，数据值判断查询的数据值是否存在于指定的表中的列里面
	 * @param tablename
	 * @param column
	 * @param cvale
	 * @return
	 */
	public Integer getNumberByTablenameAndcolumn(String tablename , String column , String cvale){
		return ((JsUtilDao)dao).getNumberByTablenameAndcolumn(tablename, column, cvale);
	}
	
}
