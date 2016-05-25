package com.base.framework.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.base.framework.dao.Filter;


public abstract class AbstractFilter implements Filter {
	
	protected final Log log = LogFactory.getLog(getClass());
	
	protected StringBuffer strBuf = new StringBuffer();

	protected final SimpleDateFormat formatter = new SimpleDateFormat("''yyyyMMdd''");

	
    
	protected FilterSql filterSql;
	
	
	protected int n = 0;

	
	protected List<FilterBean> conditions = new ArrayList<FilterBean>();
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	public String toString(){
		return strBuf.toString();
	}
	
	/* (non-Javadoc)
	 * @see com.base.framework.dao.Filter#getConditions()
	 */
	public List<FilterBean> getConditions() {
		return conditions;
	}
	
    /* (non-Javadoc)
     */
    public Filter addFilter(Filter otherFilter){
    	return addFilter(otherFilter, Filter.RELATION_AND);
    }
    
    /* (non-Javadoc)
     */
    public Filter addFilter(Filter otherFilter, String relation){
    	if(otherFilter == null || otherFilter.getConditions() == null || 
    			otherFilter.getConditions().size() < 1)
    		return this;
    	
    	if(relation == null)
    		relation = Filter.RELATION_AND;

    	String otherStr = otherFilter.toString();
    	List conditions = otherFilter.getConditions();
    	
    	for (int i = 0; i <conditions.size(); i++) {
			FilterBean filterBean = (FilterBean) conditions.get(i);
			
			if(i == 0)
				filterBean.setRelations(relation);
			
			this.conditions.add(filterBean);
		}
    	
    	this.strBuf.append(" ").append(relation).append(" ").append(otherStr); 
    	return this;
    
    }
    
    public FilterSql getFilterSql(){
    	return filterSql;
    }
    
    public void setFilterSql(FilterSql filterSql){
    	
    	this.filterSql = filterSql;
    }
        
}
