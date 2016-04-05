package com.manage.login.action;

import java.util.Date;
import java.util.List;

import com.base.util.FormatDate;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.login.action.info.LoginLogPageInfo;
import com.manage.login.model.LoginLog;
import com.manage.login.service.LoginLogManager;
/**
 * @author GuoFeng
 * @see 登录日志
 * 	
 */
@SuppressWarnings("serial")
public class LoginLogAction extends BaseAction{

	private LoginLogPageInfo pageInfo;
	private List<LoginLog> LoginLogList;
	private Date startDate; //查询开始时间
	private Date endDate;  //查询结束时间
	
	/**
	 * 登录日志列表
	 * @return
	 * @throws Exception
	 */
	public String loginLogList() throws Exception{		
		LoginLogManager logmgr  = (LoginLogManager) SpringContextHolder.getBean(LoginLog.class);
		if(pageInfo == null){
			pageInfo = new LoginLogPageInfo();
			pageInfo.setSorterName("logindate"); //按照时间排序
		}	
		//PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		//LoginLogList = logmgr.LoginLogList(sarchPageInfo);
		String sql ="";
		// 时间查询条件
		if(startDate != null && endDate != null){
			sql += "  logindate >= '" + FormatDate.dateToString(startDate) + "' ";
			sql += " and logindate <= '" + FormatDate.dateToString(endDate) + "' ";
			getRequest().setAttribute("startDate", FormatDate.dateToString(startDate));
			getRequest().setAttribute("endDate", FormatDate.dateToString(endDate));
		}else if(startDate != null && endDate == null){
			sql += "  logindate >= '" + FormatDate.dateToString(startDate) + "' ";
			getRequest().setAttribute("startDate", FormatDate.dateToString(startDate));
		}else if(startDate == null && endDate != null){
			sql += "  logindate <= '" + FormatDate.dateToString(endDate) + "' ";
			getRequest().setAttribute("endDate", FormatDate.dateToString(endDate));
		}
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		FilterSql filterSql = new FilterSql();
		filterSql.setRelations(" " + Filter.RELATION_AND + " ");
		filterSql.setSql(sql);
		sarchPageInfo.getFilter().setFilterSql(filterSql);
		LoginLogList = logmgr.LoginLogList(sarchPageInfo);
		return SUCCESS;
	}
	
	/**
	 * 删除登录日志
	 * @return
	 * @throws Exception
	 */
	public String removeLoginLogById() throws Exception{
		LoginLogManager logmgr  = (LoginLogManager) SpringContextHolder.getBean(LoginLog.class);
		String str = getRequest().getParameter("ids");
		String [] strs = str.split(",");
		for(int i = 0; i <strs.length; i++){
			logmgr.removeLoginLogById(strs[i]);
		}
		return SUCCESS;
	}

	
	public LoginLogPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(LoginLogPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<LoginLog> getLoginLogList() {
		return LoginLogList;
	}

	public void setLoginLogList(List<LoginLog> loginLogList) {
		LoginLogList = loginLogList;
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
