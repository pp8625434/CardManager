package com.manage.appsysalter.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.appsysalter.action.info.AppSysAlterPageInfo;
import com.manage.appsysalter.model.AppSysAlter;
import com.manage.appsysalter.service.AppSysAlterManager;
import com.manage.user.model.User;



/**
 * @see 应用系统业务模块增加、删除、配置变更审批表
 * @date May 9, 2016
 * @author dl
 */
public class AppSysAlterAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(AppSysAlterAction.class);	
	private AppSysAlter appSysAlter;
	private AppSysAlterPageInfo pageInfo;
	private List<AppSysAlter> appSysAlterList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	
	private AppSysAlterManager appSysAlterManager=(AppSysAlterManager) SpringContextHolder.getBean(AppSysAlter.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String appSysAlterList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new AppSysAlterPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and appliydate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and appliydate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and appliydate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and appliydate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			appSysAlterList = appSysAlterManager.getList(sarchPageInfo);
				
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 编辑新增
	 */
	public String appSysAlterAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (appSysAlter != null && appSysAlter.getId() != null) {
				appSysAlter = (AppSysAlter) appSysAlterManager.getObjectById(appSysAlter.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date 
	 * @param 
	 * @return
	 * @see 删除
	 */
	public String appSysAlterDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] appSysAlterIds = ids.split(",");
				//判断非空
				if(appSysAlterIds != null && appSysAlterIds.length > 0){
					//遍历id
					for(String appSysAlterId:appSysAlterIds){
						if(appSysAlterId != null && !"".equals(appSysAlterId)){
							//根据id获得对象
							appSysAlter = (AppSysAlter)appSysAlterManager.getObjectById(Integer.parseInt(appSysAlterId));		
							//改变表中删除标识
							appSysAlterManager.removeObject(appSysAlter);
						}	
						
					}
				}
			}		
		} catch (Exception e) {
			logger.error("发生错误：", e);
		}
		
		return SUCCESS;
	}

	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 保存
	 */
	public String appSysAlterSave()throws Exception{
		try {
			if (appSysAlter != null && appSysAlter.getVersion() == null ) {
				appSysAlter.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (appSysAlter != null) {
				appSysAlter.setFirstperson(user.getName());
			}
			if (appSysAlter != null) {
				appSysAlter.setFirstpid(user.getId());
			}
			if (appSysAlter != null) {
				appSysAlter.setFirstsubdate(new Date());
			}
			
			
			appSysAlterManager.saveObject(appSysAlter);
			
			this.getRequest().setAttribute("title", "应用系统业务模块增加、删除、配置变更审批");
			this.getRequest().setAttribute("url", "/appsysalter/appSysAlterList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 详情
	 */
	public String appSysAlterInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(appSysAlter != null && appSysAlter.getId() != null){
				appSysAlter =  (AppSysAlter)appSysAlterManager.getObjectById(appSysAlter.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public AppSysAlter getAppSysAlter() {
		return appSysAlter;
	}

	public void setAppSysAlter(AppSysAlter appSysAlter) {
		this.appSysAlter = appSysAlter;
	}

	public AppSysAlterPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(AppSysAlterPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<AppSysAlter> getAppSysAlterList() {
		return appSysAlterList;
	}

	public void setAppSysAlterList(List<AppSysAlter> appSysAlterList) {
		this.appSysAlterList = appSysAlterList;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}


	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	
}

