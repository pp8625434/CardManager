package com.base.framework.web;

import com.base.framework.paging.impl.PageImpl;

import com.base.framework.dao.Sorter;


public class PageInfoView extends PageImpl{
	private static final long serialVersionUID = 7389809057021954833L;
	
	private String sorterName;
	private String sorterDirection;

	public  PageInfoView(){
		this.sorterDirection=Sorter.ORDER_DESC; 
		this.sorterName=Sorter.ORDER_ID;
	}
	
	public String getSorterDirection() {
		return sorterDirection;
	}
	public void setSorterDirection(String sorterDirection) {
		this.sorterDirection = sorterDirection;
	}
	public String getSorterName() {
		return sorterName;
	}
	public void setSorterName(String sorterName) {
		this.sorterName = sorterName;
	}
}

