package com.base.framework.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.base.framework.paging.Page;
import com.base.framework.paging.PageInfo;

public interface Dao {

	
	public void saveObject(Object obj);

	
	public void removeObjectById(Class clazz, Serializable id);
	
	
	public void removeObject(Object obj);
	

	
	public Object getObjectById(Class clazz, Serializable id);
	
	
	public Object getUniqueObject(Class clazz, Filter filter);
	
	 
	public List getObjects(Class clazz);
	
	
	public List getObjects(Class clazz, Filter filter);
	
	
	public List getObjects(Class clazz, Filter filter, Sorter soter);
	
	
	public List getObjects(Class clazz, Filter filter, Sorter sorter, Page page);
	
	
	public List getObjects(Class clazz, PageInfo pageInfo);
	
	
	public int executeHqlToSql(String hql,Map<String,Object> map);
	
	/**
	 * 执行SQL语句，同步更新 数据
	 * @param sql
	 * @return
	 */
	public List executeSQLForUpdate(String sql);
	
	/**
	 * @author LLJ
	 * @date Nov 14, 2014 12:11:05 PM
	 * @see 情况缓存
	 */
	public void clear();

	/**
	 * 根据名称获得对象
	 * @param name (条件的值)
	 * @param condition 查询条件（如  name=）
	 * @return
	 */
	public Object getObjectByName(Class clazz,String condition,String name);
	
}
