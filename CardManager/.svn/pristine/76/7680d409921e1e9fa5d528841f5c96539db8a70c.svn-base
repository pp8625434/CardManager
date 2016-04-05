package com.base.framework.service.impl;

import java.io.Serializable;
import java.util.List;

import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;
import com.base.framework.paging.Page;
import com.base.framework.paging.PageInfo;

public class ManagerImpl extends AbstractBaseManager {
	
	protected Class modelClass = null;

	public void setModelClass(Class modelClass) {
		this.modelClass = modelClass;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#removeObjectById(java.io.Serializable)
	 */
	public void removeObjectById(Serializable id) {
		this.removeObjectById(modelClass, id);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getObjectById(java.io.Serializable)
	 */
	public Object getObjectById(Serializable id) {
		return this.getObjectById(this.modelClass, id);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getUniqueObject(com.base.framework.dao.Filter)
	 */
	public Object getUniqueObject(Filter filter) {
		return this.getUniqueObject(this.modelClass, filter);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getObjects()
	 */
	public List getObjects() {
		return this.getObjects(this.modelClass);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getObjects(com.base.framework.dao.Filter)
	 */
	public List getObjects(Filter filter) {
		return this.getObjects(this.modelClass, filter);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getObjects(com.base.framework.dao.Filter, com.base.framework.dao.Sorter)
	 */
	public List getObjects(Filter filter, Sorter sorter) {
		return this.getObjects(this.modelClass, filter, sorter);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getObjects(com.base.framework.dao.Filter, com.base.framework.dao.Sorter, com.base.framework.paging.Page)
	 */
	public List getObjects(Filter filter, Sorter sorter, Page page) {
		return this.getObjects(this.modelClass, filter, sorter, page);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getObjects(com.base.framework.paging.PageInfo)
	 */
	public List getObjects(PageInfo pageInfo) {
		return this.getObjects(this.modelClass, pageInfo);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.service.Manager#getList(com.base.framework.paging.PageInfo)
	 */
	public List getList(PageInfo pageInfo) {
		return this.getObjects(this.modelClass, pageInfo);
	}

	@Override
	public List executeSQLForUpdate(String sql) {
		
		return this.updateBySQL(sql);
	}

	@Override
	public Object getObjectByName(String condition, String name) {
		
		return this.getObjectByName(this.modelClass, condition, name);
	}
	
}
