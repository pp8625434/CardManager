package com.manage.log.action;

import java.util.Date;
import java.util.List;

import com.base.util.FormatDate;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.log.action.info.LogPageInfo;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.user.model.User;

/** 系统操作日志管理
 * @author Administrator
 *
 */
public class LogAction extends BaseAction{

	
	private LogPageInfo pageInfo;
	private List<Log> logList;
	
	private Date startDate;
	private Date endDate;
	
	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	
	
	/** 进入系统操作日志页面
	 * @return
	 * @throws Exception
	 */
	public String logList() throws Exception {
		
		User user=(User) getSession().getAttribute("user");
		pageInfo = pageInfo == null ? new LogPageInfo() : pageInfo;
		
		if(pageInfo.getSorterName().equals("id")){
			pageInfo.setSorterName("createDate");
		}
		
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		if(startDate != null || endDate != null){			
			String sql = " 1=1 ";
			// 时间查询条件
			if(startDate != null && endDate != null){
				sql += " and createDate >= '" + FormatDate.dateToString(startDate) + "' ";
				sql += " and createDate <= '" + FormatDate.dateToString(endDate) + "' ";
				getRequest().setAttribute("startDate", FormatDate.dateToStringByStr(startDate, "yyyy-MM-dd"));
				getRequest().setAttribute("endDate", FormatDate.dateToStringByStr(endDate, "yyyy-MM-dd"));
			}else if(startDate != null && endDate == null){
				sql += " and createDate >= '" + FormatDate.dateToString(startDate) + "' ";
				getRequest().setAttribute("startDate", FormatDate.dateToStringByStr(startDate, "yyyy-MM-dd"));
			}else if(startDate == null && endDate != null){
				sql += " and createDate <= '" + FormatDate.dateToString(endDate) + "' ";
				getRequest().setAttribute("endDate", FormatDate.dateToStringByStr(endDate, "yyyy-MM-dd"));
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sql);
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			
		}
		
		logList = logMgr.getList(sarchPageInfo);
		
		return SUCCESS;	
	
	}



	public LogPageInfo getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(LogPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<Log> getLogList() {
		return logList;
	}
	public void setLogList(List<Log> logList) {
		this.logList = logList;
	}



	public Date getStartDate() {
		return startDate;
	}



	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}



	public Date getEndDate() {
		return endDate;
	}



	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	
}
