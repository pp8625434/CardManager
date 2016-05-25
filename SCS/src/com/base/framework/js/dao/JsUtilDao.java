package com.base.framework.js.dao;

import com.base.framework.dao.Dao;

public interface JsUtilDao extends Dao {
	
	/**
	 * 根据表名，列名，数据值判断查询的数据值是否存在于指定的表中的列里面
	 * @param tablename
	 * @param column
	 * @param cvale
	 * @return
	 */
	public Integer getNumberByTablenameAndcolumn(String tablename , String column , String cvale);
	
}
