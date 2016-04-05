package com.base.framework.dao;

import java.io.Serializable;
import java.util.List;

import com.base.framework.dao.impl.FilterBean;
import com.base.framework.dao.impl.FilterSql;


public interface Filter extends Serializable {


    public static final String OPERATOR_LIKE = "LIKE";
    

    public static final String OPERATOR_EQ = "=";
    

    public static final String OPERATOR_NOT_EQ = "<>";
    

    public static final String OPERATOR_GREATER_THAN = ">";
    

    public static final String OPERATOR_LESS_THEN = "<";
    

    public static final String OPERATOR_GREATER_EQ = ">=";
    
    
    public static final String OPERATOR_LESS_EQ = "<=";
    

    public static final String OPERATOR_IN = "IN";
    
    
    public static final String RELATION_AND = "AND";
    

    public static final String RELATION_OR = "OR";
    

    public static final String RELATION_NOT = "NOT";
    
    
    public Filter addCondition(String name, Object val);
    

    public Filter addCondition(String name, Object val, String op);
   
    
    public Filter addCondition(String name, Object val, String op ,String relation);
    
    
    public String toString();
    
    
    public List<FilterBean> getConditions();
    
    
    public Filter addFilter(Filter otherfilter);
    
    
    public Filter addFilter(Filter otherFilter, String relation);
    
    public void setFilterSql(FilterSql filterSql);
    
    public FilterSql getFilterSql();
   
}
