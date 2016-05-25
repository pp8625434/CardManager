package com.base.framework.service;

import java.io.Serializable;
import java.util.List;
import com.base.framework.dao.Dao;
import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;
import com.base.framework.paging.Page;
import com.base.framework.paging.PageInfo;


public interface Manager {

	/**
	 * 设置DAO对象
	 * @param dao DAO对象
	 */
	public void setDao(Dao dao);

	/**
	 * 将POJO对象,update或insert到数据库中,
	 * <code>preSaveObject(obj)</code>方法与<code>postSaveObject(obj)</code>
	 * 在执行该方法之前或之后会被调用 
	 * @param obj 表现层的POJO对象
	 * 
	 */
	public void saveObject(Object obj);

	/**
	 * 从数据库删除给定的对象
	 * @param obj 待删除的对象
	 */
	public void removeObject(Object obj);

	/**
	 * 通过给定的ID值,从数据库删除与ID值对象的记录
	 * @param id 待删除的对象主键ID值
	 */
	public void removeObjectById(Serializable id);

	/**
	 * 通过给定的ID值,从数据库获得该对象
	 * @param id 待返回对象的ID值
	 * @return 返回与ID值对应的POJO对象
	 */
	public Object getObjectById(Serializable id);

	/**
	 * 根据给定的过滤器且该过滤器的属性名对应数据库是唯一索引,
	 * 从数据中取得满足过滤条件的唯一一条记录,返回POJO对象
	 * @param filter 属性名为唯一索引的过滤器
	 * @return 返回满足唯一索此过滤器的一个POJO对象
	 */
	public Object getUniqueObject(Filter filter);

	/**
	 * @return
	 */
	public List getObjects();

	/**
	 * @param filter
	 * @return
	 */
	public List getObjects(Filter filter);

	/**
	 * @param filter
	 * @param sorter
	 * @return
	 */
	public List getObjects(Filter filter, Sorter sorter);

	/**
	 * @param filter
	 * @param sorter
	 * @param page
	 * @return
	 */
	public List getObjects(Filter filter, Sorter sorter, Page page);

	/**
	 * @param pageInfo
	 * @return
	 */
	public List getObjects(PageInfo pageInfo);

	/**
	 * 本方法的作用是为列表页面提供最终的显示数据,目的是用于用户部门级权限的数据过滤
	 * 如果您需要自己调整权限规则，可以过载该方法<code>getList(PageInfo, Filter)</code>,
	 * 其中Filter为权限过滤的规则
	 * <p>
	 * 注意：为了开发规范,系统仅提供这一个用于终端显示数据的方法,所有<code>getObject(...)</code>
	 * 方法只用于逻辑层的调用
	 * <p>
	 * 原因：因为该方法会被<code>ResourceBindleMethodSecurityInterceptor</code>拦截器所调用
	 * 而该拦截器的调用<code>MethodConfigAttributeDefHolder</code>类中的<code>buildRunAs()</code>方法
	 * 该方法会自动封装<code>SecurityFilter</code>对象，并将该对象与<code>PageInfo</code>中的<code>Filter</code>
	 * 对象进行合并，形成一个大的<code>Filter</code>对象
	 * @param pageInfo
	 * @return
	 * @see com.base.framework.dao.impl
	 */
	public List getList(PageInfo pageInfo);
	
	
	public List  executeSQLForUpdate(String sql);
	
	
	public Object  getObjectByName(String condition, String name);
}