package com.manage.sysconfigalter.action;


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
import com.manage.sysconfigalter.action.info.SysConfigAlterPageInfo;
import com.manage.sysconfigalter.model.SysConfigAlter;
import com.manage.sysconfigalter.service.SysConfigAlterManager;
import com.manage.user.model.User;



/**
 * @see 系统配置变更审批表
 * @date May 9, 2016
 * @author dl
 */
public class SysConfigAlterAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SysConfigAlterAction.class);	
	private SysConfigAlter sysConfigAlter;
	private SysConfigAlterPageInfo pageInfo;
	private List<SysConfigAlter> sysConfigAlterList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private SysConfigAlterManager sysConfigAlterManager=(SysConfigAlterManager) SpringContextHolder.getBean(SysConfigAlter.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String sysConfigAlterList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SysConfigAlterPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and applydate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and applydate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and applydate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and applydate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			sysConfigAlterList = sysConfigAlterManager.getList(sarchPageInfo);
				
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
	public String sysConfigAlterAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (sysConfigAlter != null && sysConfigAlter.getId() != null) {
				sysConfigAlter = (SysConfigAlter) sysConfigAlterManager.getObjectById(sysConfigAlter.getId());
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
	public String sysConfigAlterDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] sysConfigAlterIds = ids.split(",");
				//判断非空
				if(sysConfigAlterIds != null && sysConfigAlterIds.length > 0){
					//遍历id
					for(String sysConfigAlterId:sysConfigAlterIds){
						if(sysConfigAlterId != null && !"".equals(sysConfigAlterId)){
							//根据id获得对象
							sysConfigAlter = (SysConfigAlter)sysConfigAlterManager.getObjectById(Integer.parseInt(sysConfigAlterId));		
							//改变表中删除标识
							sysConfigAlterManager.removeObject(sysConfigAlter);
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
	public String sysConfigAlterSave()throws Exception{
		try {
			if (sysConfigAlter != null && sysConfigAlter.getVersion() == null ) {
				sysConfigAlter.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (sysConfigAlter != null) {
				sysConfigAlter.setFirstperson(user.getName());
			}
			if (sysConfigAlter != null) {
				sysConfigAlter.setFirstpid(user.getId());
			}
			if (sysConfigAlter != null) {
				sysConfigAlter.setFirstsubdate(new Date());
			}
			
			sysConfigAlterManager.saveObject(sysConfigAlter);
			
			this.getRequest().setAttribute("title", "系统配置变更审批");
			this.getRequest().setAttribute("url", "/sysconfigalter/sysConfigAlterList.action");
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
	public String sysConfigAlterInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(sysConfigAlter != null && sysConfigAlter.getId() != null){
				sysConfigAlter =  (SysConfigAlter)sysConfigAlterManager.getObjectById(sysConfigAlter.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
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

	public SysConfigAlter getSysConfigAlter() {
		return sysConfigAlter;
	}

	public void setSysConfigAlter(SysConfigAlter sysConfigAlter) {
		this.sysConfigAlter = sysConfigAlter;
	}

	public SysConfigAlterPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SysConfigAlterPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<SysConfigAlter> getSysConfigAlterList() {
		return sysConfigAlterList;
	}

	public void setSysConfigAlterList(List<SysConfigAlter> sysConfigAlterList) {
		this.sysConfigAlterList = sysConfigAlterList;
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

