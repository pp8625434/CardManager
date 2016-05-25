package com.base.framework.js.action;

import com.base.framework.SpringContextHolder;
import com.base.framework.js.model.JsUtilModel;
import com.base.framework.js.service.JsUtilManager;
import com.base.framework.web.struts.BaseAction;

public class JsUtilsAction extends BaseAction {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4841342608638752706L;

	/**
	 * 表名
	 */
	private String tablename;
	
	/**
	 * 列名
	 */
	private String column;
	
	/**
	 * 校验值ֵ
	 */
	private String checkvalue;
	
	public String getCheckvalue() {
		return checkvalue;
	}

	public void setCheckvalue(String checkvalue) {
		this.checkvalue = checkvalue;
	}

	public String getTablename() {
		return tablename;
	}

	public String getColumn() {
		return column;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}

	public void setColumn(String column) {
		this.column = column;
	}
	
	@Override
	public String execute() throws Exception {
		
		JsUtilManager jsManager = (JsUtilManager) SpringContextHolder.getBean(JsUtilModel.class);
		JsUtilModel jsModel = new JsUtilModel();
		try {
			int num = jsManager.getNumberByTablenameAndcolumn(tablename, column, checkvalue);
			
			jsModel.setResult(1);
			jsModel.setNumber(num);
			writeJson(jsModel);
			return null;
		} catch (Exception e) {
			jsModel.setResult(0);
		}
		writeJson(jsModel);
		return null;
	}
	
}
