package com.base.framework.web;

import java.beans.PropertyDescriptor;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.beanutils.PropertyUtils;
import com.base.util.BeanUtil;
import com.base.util.StringUtils;
import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.framework.dao.impl.SorterFactory;
import com.base.framework.model.BaseObject;
import com.base.framework.paging.PageInfo;
import com.base.framework.paging.impl.PageInfoImpl;


public class PageInfoUtil {
	
	/**
	 * @see ���ֲ��͹�����<code>PageInfoView</code>���·�װΪPageInfo����,������
	 * @param pageInfoView ���ֲ��͹����Ķ���,����Ҫ������������Ϣ
	 * @return �������·�װ���PageInfo����
	 */
	public static PageInfo populate(PageInfoView pageInfoView){
		
		if(pageInfoView == null)
			pageInfoView = new PageInfoView();
		
		PageInfo pageInfo = new PageInfoImpl();
		
		/******Page����*****/
		if(pageInfoView.getCurrentPage()  != 1)
			pageInfoView.setIsFristPage(false);
		
		if(pageInfoView.getIsFristPage())
			pageInfoView.setCurrentPage(1);
		
		if(pageInfoView.getIsLastPage())
			pageInfoView.setCurrentPage(pageInfoView.getTotalPage());
		
		pageInfoView.setStartRowPosition((pageInfoView.getCurrentPage()-1) * pageInfoView.getPageSize());
		
		int realRecords = pageInfoView.getStartRowPosition() + pageInfoView.getPageSize();
		
		//�������޼�¼��С����ʵ��¼��,��ȡ����޼�¼��
		realRecords = pageInfoView.getMaxRecords() != 0 && pageInfoView.getMaxRecords() < realRecords ? pageInfoView.getMaxRecords() : realRecords; 
		
		pageInfoView.setEndRowPosition(realRecords);
		pageInfo.setPage(pageInfoView);
		
		/******Filter���� begin *****/
		Filter filter = null;
		filter = populateFilter(pageInfoView, "");
		
		if(filter == null)
			filter =  FilterFactory.getSimpleFilter(null, null, null);
		
		pageInfo.setFilter(filter);
		/******Filter���� end *****/
		/******Sorter���� begin  *****/
		Sorter sorter = null;
		if(BeanUtil.getPropertyValueToStr(pageInfoView,"sorterName") != null){
			String sorterName = BeanUtil.getPropertyValueToStr(pageInfoView,"sorterName");
			String direction = BeanUtil.getPropertyValueToStr(pageInfoView,"sorterDirection");
			sorter = SorterFactory.getSimpleSort(sorterName, direction);
		}
		
		pageInfo.setSorter(sorter);
		/******Sorter���� end  *****/
		
		return pageInfo;
	}
	
	
	/**
	 * @see ���ֲ��͹�����<code>PageInfoView</code>��װΪFilter����,������
	 * @param pageInfoView  ���ֲ��͹����Ķ���,����Ҫ������������Ϣ
	 * @return ����һ��������
	 */
	public static Filter populateFilter(PageInfoView pageInfoView){
		return populateFilter(pageInfoView, "");
	}
	
	
	/**
	 * @see ���ֲ��͹�����<code>PageInfoView</code>��װΪFilter����,������
	 * @param pageInfoView  ���ֲ��͹����Ķ���,����Ҫ������������Ϣ
	 * @param prefix ��ѯ���ǰ׺
	 * @return ����һ��������
	 */
	protected static Filter populateFilter(PageInfoView pageInfoView, String prefix){
		Filter filter = null;
		PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(pageInfoView);
		
		//������f_��ͷ�Ĺ�����
		Map<String, PropertyDescriptor> nameAndpd = new LinkedHashMap<String, PropertyDescriptor>();
		for (PropertyDescriptor descriptor : properties) {
			String propertyName = descriptor.getName();
			if(propertyName.startsWith("f_")){
				nameAndpd.put(propertyName, descriptor);
			}
		}
		
		Set<String>propertyNames = nameAndpd.keySet();
		
		for (String propertyName : propertyNames) {
			
			//����������ǲ�����
			if(propertyName.endsWith("_op"))
				continue;
			
			//���ֵΪ�ջ��ǿմ�
			Object filterValue = BeanUtil.getPropertyValue(pageInfoView, propertyName);
			if(filterValue == null)
				continue;
			if (filterValue instanceof String) {
				String valStr = (String) filterValue;
				if(valStr.trim().equals(""))
					continue;
			}
				
			String operator = propertyName + "_op";
			String operatorValue = BeanUtil.getPropertyValueToStr(pageInfoView, operator);
			if(operatorValue != null && operatorValue.trim().equals(""))
				operatorValue = null;
			
			//����������ѯ����������䣬����01 2/3/4Ϊ���Զ���
			String filterName;
			int manyIndex = propertyName.lastIndexOf("0");
			if(manyIndex < 0)
				filterName = propertyName.substring("f_".length());
			else
				filterName = propertyName.substring("f_".length(),manyIndex);
			
			//�����lookup�͵Ľ�$�滻Ϊ.��ʵ��domain����Ĳ�ѯ
			filterName = filterName.replaceAll("[$]", ".");
			
			if(filter == null)
				filter = FilterFactory.getSimpleFilter(prefix+filterName, filterValue, operatorValue);
			else
				filter.addCondition(prefix+filterName, filterValue, operatorValue);
		}
		
		//����domainObject�Ĺ��˲���
		for (PropertyDescriptor descriptor : properties) {
			String propertyName = descriptor.getName();
			Object obj = BeanUtil.getPropertyValue(pageInfoView, propertyName);
			if(obj != null && obj instanceof PageInfoView){
				PageInfoView pageInfo = (PageInfoView)obj;
				String pageInfoPrefix = propertyName + ".";
				if(!prefix.trim().equals(""))
					pageInfoPrefix = "." + pageInfoPrefix;
				
				if(filter == null)
					filter =  FilterFactory.getSimpleFilter(null, null, null);
				filter.addFilter(populateFilter(pageInfo, pageInfoPrefix));
			}
		}
		
		return filter;

	}
	
	/**
	 * @see ����������������Lookup���͵�,���Ҹö��������Ϊnull,�����
	 * ������Ϊnull
	 * @param obj �������
	 */
	
	/**
	 * @see ����������������Lookup���͵�,���Ҹö��������Ϊnull,�����������Ϊnull
	 * @param obj �������
	 * @param propertyNames ���Ը������б��и����Ե�����,�ַ��Զ��ŷָ�
	 */
	/*
	public static void POJOLookupNull(Object obj){
		POJOLookupNull(obj, null);
	}
	

	public static void POJOLookupNull(Object obj, String propertyNames){
		POJOLookupNull(obj, propertyNames, null);
	}
	
	
	private static void POJOLookupNull(Object obj, String propertyNames,Object parentObj){
		Set<String> proNames = null;
		if(propertyNames != null){
			List<String> pros = StringUtils.strToArrayList(propertyNames);
			proNames = new HashSet<String>();
			for (String propery : pros) {
				proNames.add(propery);
			}
		}
		PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(obj);
		for (PropertyDescriptor descriptor : properties) {
			String propertyName = descriptor.getName();
			Object domainObject = BeanUtil.getPropertyValue(obj, propertyName);
			
			if(domainObject == null)
				continue;
			
			if(domainObject instanceof BaseObject){
				if(proNames != null && proNames.contains(propertyName))	//���Ը������������ֵ��Ϊ��
					continue;
				
				if(parentObj != null)
					continue;			//���Ը���lookup����
				
				BeanUtil.setPropertyValue(obj, propertyName, null);
			}
			
			if(domainObject instanceof Collection){
				Collection coll = (Collection)domainObject;
				if(coll == null)
					continue;
			
				for (Object object : coll) {
					POJOLookupNull(object,propertyNames,obj);
				}
			}
		}
	}
	*/
}
