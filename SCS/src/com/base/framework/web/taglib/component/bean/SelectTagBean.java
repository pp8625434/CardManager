package com.base.framework.web.taglib.component.bean;

import java.util.Map;

import com.base.framework.web.taglib.component.TagInfoBean;


public class SelectTagBean extends TagInfoBean {

	private Map mapping;
	private String lookup;
	
	private String mes;
	
	private String dorder;
	
	private String isnull;
	
	private String checkrepeat;
	
	private String tablename;
	
	private String columnname;
	
	private String rmes;

	public String getMes() {
		return mes;
	}

	public String getDorder() {
		return dorder;
	}

	public String getIsnull() {
		return isnull;
	}

	public String getCheckrepeat() {
		return checkrepeat;
	}

	public String getTablename() {
		return tablename;
	}

	public String getColumnname() {
		return columnname;
	}

	public String getRmes() {
		return rmes;
	}

	public void setMes(String mes) {
		this.mes = mes;
	}

	public void setDorder(String dorder) {
		this.dorder = dorder;
	}

	public void setIsnull(String isnull) {
		this.isnull = isnull;
	}

	public void setCheckrepeat(String checkrepeat) {
		this.checkrepeat = checkrepeat;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}

	public void setColumnname(String columnname) {
		this.columnname = columnname;
	}

	public void setRmes(String rmes) {
		this.rmes = rmes;
	}

	public Map getMapping() {
		return mapping;
	}

	public void setMapping(Map mapping) {
		this.mapping = mapping;
	}

	public String getLookup() {
		return lookup;
	}

	public void setLookup(String lookup) {
		this.lookup = lookup;
	}

}
