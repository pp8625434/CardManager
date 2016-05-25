package com.base.util;

import java.util.List;
import java.util.Map;

import com.base.framework.model.BaseObject;



public class Page {

	private int totalRows;// 记录总数


	private int totalPages = 0;// 总页数

	private int startRow = 0;// 当前页码开始记录数

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
	
	private String url;
	/**
	 * 每页的记录个数
	 */
	private int pageSize = 10;//BaseConfigHolder.getPageSize();;

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
	private int maxRecords = 100;
	
	/**
	 * 查询的数据项
	 */
	private Map map;
	
	private BaseObject obj;
	
	
	@SuppressWarnings("unchecked")
	private List elements;// 记录列表

	public Page(){
		
	}
	// 构造pager对象
	public Page(int _totalRows) {
		totalRows = _totalRows;
		totalPages = totalRows / pageSize;
		int mod = totalRows % pageSize;
		if (mod > 0) {
			totalPages++;
		}
		currentPage = 1;
		startRow = 0;
	}

	// 首页
	public void first() {
		currentPage = 1;
		startRow = 0;
	}

	// 上一页
	public void previous() {
		if (currentPage == 1) {
			return;
		}
		currentPage--;
		startRow = (currentPage - 1) * pageSize;
	}

	// 下一页
	public void next() {
		if (currentPage < totalPages) {
			currentPage++;
		}
		startRow = (currentPage - 1) * pageSize;
	}

	// 尾页
	public void last() {
		currentPage = totalPages;
		startRow = (currentPage - 1) * pageSize;
	}

	// 刷新pager对象
	public void refresh(int _currentPage) {
		currentPage = _currentPage;
		startRow = (currentPage - 1) * pageSize;
		if (totalPages > 0 && currentPage > totalPages) {
			last();
		}
	}

	public int getStartRow() {
		return startRow;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
		totalPages = totalRows / pageSize;
		int mod = totalRows % pageSize;
		if (mod > 0) {
			totalPages++;
		}
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public List getList() {
		return elements;
	}

	public void setList(List elements) {
		this.elements = elements;
	}

    /**
     * @return the elements
     */
    public List getElements() {
        return elements;
    }

    /**
     * @param elements the elements to set
     */
    public void setElements(List elements) {
        this.elements = elements;
    }

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public boolean isFristPage() {
		return isFristPage;
	}

	public void setFristPage(boolean isFristPage) {
		this.isFristPage = isFristPage;
	}

	public boolean isLastPage() {
		return isLastPage;
	}

	public void setLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}

	public int getStartRowPosition() {
		return startRowPosition;
	}

	public void setStartRowPosition(int startRowPosition) {
		this.startRowPosition = startRowPosition;
	}

	public int getEndRowPosition() {
		return endRowPosition;
	}

	public void setEndRowPosition(int endRowPosition) {
		this.endRowPosition = endRowPosition;
	}

	public int getMaxRecords() {
		return maxRecords;
	}

	public void setMaxRecords(int maxRecords) {
		this.maxRecords = maxRecords;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	public Map getMap() {
		return map;
	}
	public void setMap(Map map) {
		this.map = map;
	}
	public BaseObject getObj() {
		return obj;
	}
	public void setObj(BaseObject obj) {
		this.obj = obj;
	}
}
