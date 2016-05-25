package com.base.framework.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.base.framework.paging.Page;
import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;
import java.io.Serializable;
import java.util.List;
import com.base.framework.dao.Dao;
import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;


public abstract class AbstractBaseManager implements Manager {

	public Dao dao = null;

	protected final Log log = LogFactory.getLog(getClass());

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	/**
	 * 保存对象
	 * @see com.base.framework.service.Manager#saveObject(java.lang.Object)
	 */
	public void saveObject(Object obj) {
		preSaveObject(obj);
		dao.saveObject(obj);
		postSaveObject(obj);
	}

	/**
	 * 保存给定对象之前的操作
	 * @param obj 待保存的POJO对象
	 */
	protected void preSaveObject(Object obj) {

	}

	/**
	 * 保存给定对象之后的操作
	 * @param obj 待保存的POJO对象
	 */
	protected void postSaveObject(Object obj) {

	}

	public void removeObjectById(Class clazz, Serializable id) {
		Object obj = this.getObjectById(clazz, id);
		this.removeObject(obj);
	}

	/**
	 * 删除对象
	 * @see com.base.framework.service.Manager#removeObject(java.lang.Object)
	 */
	public void removeObject(Object obj) {
		preRemoveObject(obj);
		dao.removeObject(obj);
		postRemoveObject(obj);
	}

	/**
	 * 删除给定对象之前的操作
	 * @param obj 待删除的POJO对象
	 */
	protected void preRemoveObject(Object obj) {

	}

	/**
	 * 删除给定对象之后的操作
	 * @param obj 待删除的POJO对象
	 */
	protected void postRemoveObject(Object obj) {

	}

	
	public Object getObjectById(Class clazz, Serializable id) {
		Object obj = dao.getObjectById(clazz, id);
		if (obj == null)
			try {
				obj = clazz.newInstance();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
		return obj;
	}

	public Object getUniqueObject(Class clazz, Filter filter) {
		return dao.getUniqueObject(clazz, filter);
	}

	public List getObjects(Class clazz) {
		return dao.getObjects(clazz);
	}

	public List getObjects(Class clazz, Filter filter) {
		return dao.getObjects(clazz, filter);
	}

	public List getObjects(Class clazz, Filter filter, Sorter soter) {
		return dao.getObjects(clazz, filter, soter);
	}

	public List getObjects(Class clazz, Filter filter, Sorter sorter, Page page) {
		return dao.getObjects(clazz, filter, sorter, page);
	}

	public List getObjects(Class clazz, PageInfo pageInfo) {

		return dao.getObjects(clazz, pageInfo);
	}

	/**
	 * 
	 * @param pageInfo
	 * @param securityFilter
	 * @return
	 * @see com.base.framework.service.impl.ManagerImpl#getList(PageInfo)
	 */
	public List getList(PageInfo pageInfo, Filter securityFilter){
		return null;
	}
	
	/* (non-Javadoc)执行SQL语句更新数据
	 * @see com.base.framework.service.Manager#executeSQLForUpdate(java.lang.String)
	 */
	public List updateBySQL(String sql){
		return dao.executeSQLForUpdate(sql);
	}
	/**
	 * 根据条件获得对象
	 * @param clazz  对应实体类
	 * @param condition 对应的某个字段，查询条件
	 * @param name 对应字段值，查询条件的值
	 * @return
	 */
	public Object  getObjectByName(Class clazz,String condition,String name){
		return dao.getObjectByName(clazz,condition,name);
	}
}