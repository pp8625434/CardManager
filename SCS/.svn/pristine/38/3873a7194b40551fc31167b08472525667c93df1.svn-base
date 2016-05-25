package com.manage.table.action;

import java.util.List;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.table.action.info.TablesPageInfo;
import com.manage.table.model.Tables;
import com.manage.table.service.TablesManager;

@SuppressWarnings("serial")
public class TablesAction extends BaseAction{
	
	private List<Tables> tablesList;
	
	private Tables tables;
	
	private TablesPageInfo  pageInfo;
	
	private TablesManager tMgr = (TablesManager) SpringContextHolder.getBean(Tables.class);
	
	
	/**
	 * 获得数据库表 列表信息
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String findTablesList() throws Exception{
		pageInfo = pageInfo ==null?new TablesPageInfo():pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		tablesList = tMgr.getObjects(sarchPageInfo);
		return SUCCESS;
	}


	public List<Tables> getTablesList() {
		return tablesList;
	}


	public void setTablesList(List<Tables> tablesList) {
		this.tablesList = tablesList;
	}


	public Tables getTables() {
		return tables;
	}


	public void setTables(Tables tables) {
		this.tables = tables;
	}


	public TablesPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(TablesPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}
	
	 

}
