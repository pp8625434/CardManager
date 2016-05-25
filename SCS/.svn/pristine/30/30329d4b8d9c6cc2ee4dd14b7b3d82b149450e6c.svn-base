package com.base.framework.paging.impl;

import com.base.framework.BaseConfigHolder;
import com.base.framework.paging.Page;


public class PageImpl implements Page {

	private static final long serialVersionUID = 6058623216294866584L;

	/**
	 *  总记录数
	 */
	private int totalRecords = 0;

	/**
	 * 总页数
	 */
	private int totalPage = 0;

	/**
	 * 当前页号
	 */
	private int currentPage = 1;

	/**
	 * 是第一页吗
	 */
	private boolean isFristPage = true;

	/**
	 * 是最后一页吗
	 */
	private boolean isLastPage = false;
	
	
	/**
	 * 每页的记录个数
	 */
	private int pageSize = BaseConfigHolder.getPageSize();;

	/**
	 * 当前页的起始记录数
	 */
	private int startRowPosition = 0;

	/**
	 * 当前页的最后记录数
	 */
	private int endRowPosition = 0;

	/**
	 * 最大限记录数
	 */
	private int maxRecords = BaseConfigHolder.getMaxRecords();
	
	/**
	 * 查询的数据项
	 */
	private String properties;
	
	
	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getCurrentPage()
	 */
	public int getCurrentPage() {
		return currentPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setCurrentPage(int)
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getEndRowPosition()
	 */
	public int getEndRowPosition() {
		return endRowPosition;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setEndRowPosition(int)
	 */
	public void setEndRowPosition(int endRowPosition) {
		this.endRowPosition = endRowPosition;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getIsFristPage()
	 */
	public boolean getIsFristPage() {
		return isFristPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setIsFristPage(boolean)
	 */
	public void setIsFristPage(boolean isFristPage) {
		this.isFristPage = isFristPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getIsLastPage()
	 */
	public boolean getIsLastPage() {
		return isLastPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setIsLastPage(boolean)
	 */
	public void setIsLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getPageSize()
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getStartRowPosition()
	 */
	public int getStartRowPosition() {
		return startRowPosition;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setStartRowPosition(int)
	 */
	public void setStartRowPosition(int startRowPosition) {
		this.startRowPosition = startRowPosition;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getTotalPage()
	 */
	public int getTotalPage() {
		return totalPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setTotalPage(int)
	 */
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getTotalRecords()
	 */
	public int getTotalRecords() {
		return totalRecords;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setTotalRecords(int)
	 */
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getMaxRecords()
	 */
	public int getMaxRecords() {
		return maxRecords;
	}

	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setMaxRecords(int)
	 */
	public void setMaxRecords(int maxRecords) {
		this.maxRecords = maxRecords;
	}
	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#getProperties(int)
	 */
	public String getProperties() {
		return properties;
	}
	
	/* (non-Javadoc)
	 * @see com.base.framework.paging.Page#setProperties(String)
	 */
	public void setProperties(String properties) {
		this.properties = properties;
	}

}
