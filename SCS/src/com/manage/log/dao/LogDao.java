package com.manage.log.dao;

import java.util.List;

import com.base.framework.dao.Dao;

/** 系统操作日志
 * @author yzh
 *
 */
public interface LogDao extends Dao{
    
	/**
	 * 根据时间删除旧的操作日志，保留近一个月的
	 * @param str
	 */
	public void deleteOldLogByDate(String str);
	
}
