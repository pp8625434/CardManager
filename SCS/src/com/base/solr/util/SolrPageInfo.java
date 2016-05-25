package com.base.solr.util;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import com.base.framework.web.PageInfoView;



public class SolrPageInfo extends PageInfoView{
	

	// 返回结果集
	private List items = new ArrayList();
	
	public SolrPageInfo() {
	}
	
	public SolrPageInfo(List<Object> items, int totalCount, int offset,
			int maxPageItems) {
		this.setMaxRecords(maxPageItems);
		this.setTotalRecords(totalCount);
		setItems(items);
		this.setCurrentPage(offset);
	}

	public List getItems() {
		return items;
	}

	public void setItems(List items) {
		this.items = items;
	}
	
	

	

	

}
