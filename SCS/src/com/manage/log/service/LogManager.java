package com.manage.log.service;

import javax.servlet.http.HttpServletRequest;

import com.base.framework.service.Manager;
import com.manage.log.model.Log;

/** 系统操作日志
 * @author yzh
 *
 */
public interface LogManager extends Manager{
    
	
	
	/** 保存操作日志
	 * @param type 操作类型 （增-630、删-631、改-632）
	 * @param function  模块ID
	 * @param functionId  操作数据的ID
	 * @param functionName  操作数据的名称
	 * @param creator      操作人ID
	 * @param creatorName  操作人真实姓名
	 */
	public void saveLog(Integer type, Integer function, Integer functionId, 
			String functionName, Integer creator, String creatorName,HttpServletRequest request);
	
	/**
	 * 删除陈旧的操作日志，（一个月之前的日志）
	 * @author GuoFeng
	 */
	public void deleteOldLog();
		
	
	
}
