package com.base.framework.dao.impl;

import java.util.Collection;

import com.base.framework.dao.Filter;



public class FilterFactory {
	

	public static Filter getSimpleFilter(String name, Object val){
		SimpleFilter filter = new SimpleFilter();
		filter.addCondition(name, val);
		return filter;
	}
	

	public static Filter getSimpleFilter(String name, Object val, String op){
		SimpleFilter filter = new SimpleFilter();
		filter.addCondition(name, val, op);
		return filter;
	}
	

	public static Filter getSimpleFilter(String name, Object val, String op ,String relation){
		SimpleFilter filter = new SimpleFilter();
		filter.addCondition(name, val, op, relation);
		return filter;
	}
	
	
	public static InFilter getInFilter(String name, Collection val){
		InFilter filter = new InFilter();
		filter.addCondition(name, val, Filter.OPERATOR_IN);
		//filter.addCondition(name, val);
		return filter;
	}


	public static InFilter getInFilter(String name, Collection val, String relation){
		InFilter filter = new InFilter();
		filter.addCondition(name, val, Filter.OPERATOR_IN, relation);
		return filter;
	}

	

	/*
	public static InFilter getInfilter(String name, Object val, String op ,String relation){
		InFilter filter = new InFilter();
		filter.addCondition(name, val, op, relation);
		return filter;
	}
	*/
	
}
