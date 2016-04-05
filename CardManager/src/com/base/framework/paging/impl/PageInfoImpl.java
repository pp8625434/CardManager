package com.base.framework.paging.impl;

import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;
import com.base.framework.paging.Page;
import com.base.framework.paging.PageInfo;

public class PageInfoImpl implements PageInfo{

	private static final long serialVersionUID = -4929157234599076084L;
	private Page page;
	private Filter filter;
	private Sorter sorter;
	
	
	/* (non-Javadoc)
	 * @see com.base.framework.paging.PageInfo#getFilter()
	 */
	public Filter getFilter() {
		return filter;
	}
	/* (non-Javadoc)
	 * @see com.base.framework.paging.PageInfo#setFilter(com.base.framework.dao.Filter)
	 */
	public void setFilter(Filter filter) {
		if(this.filter == null)
			this.filter = filter;
		else
			this.filter.addFilter(filter);
	}
	
	/**
	 * 2013-1-7
	 */
	public void setFilter(Filter filter, String relation) {
		if(this.filter == null)
			this.filter = filter;
		else
			this.filter.addFilter(filter,relation);
	}
	
	
	/* (non-Javadoc)
	 * @see com.base.framework.paging.PageInfo#getPage()
	 */
	public Page getPage() {
		return page;
	}
	/* (non-Javadoc)
	 * @see com.base.framework.paging.PageInfo#setPage(com.base.framework.paging.Page)
	 */
	public void setPage(Page page) {
		this.page = page;
	}
	/* (non-Javadoc)
	 * @see com.base.framework.paging.PageInfo#getSorter()
	 */
	public Sorter getSorter() {
		return sorter;
	}
	/* (non-Javadoc)
	 * @see com.base.framework.paging.PageInfo#setSorter(com.base.framework.dao.Sorter)
	 */
	public void setSorter(Sorter sorter) {
		this.sorter = sorter;
	}
}
