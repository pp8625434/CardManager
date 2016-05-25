package com.manage.depseccheck.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.depseccheck.action.info.DepsecCheckPageInfo;
import com.manage.depseccheck.model.DepsecCheck;
import com.manage.depseccheck.service.DepsecCheckManager;
import com.manage.user.model.User;



/**
 * @see 部门保密工作自查表
 * @date May 9, 2016
 * @author dl
 */
public class DepsecCheckAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(DepsecCheckAction.class);	
	private DepsecCheck depsecCheck;
	private DepsecCheckPageInfo pageInfo;
	private List<DepsecCheck> depsecCheckList;
	private String params;

	private String ids;
	
	private DepsecCheckManager depsecCheckManager=(DepsecCheckManager) SpringContextHolder.getBean(DepsecCheck.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String depsecCheckList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new DepsecCheckPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			depsecCheckList = depsecCheckManager.getList(sarchPageInfo);
				
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
	public String depsecCheckAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (depsecCheck != null && depsecCheck.getId() != null) {
				depsecCheck = (DepsecCheck) depsecCheckManager.getObjectById(depsecCheck.getId());
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
	public String depsecCheckDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] depsecCheckIds = ids.split(",");
				//判断非空
				if(depsecCheckIds != null && depsecCheckIds.length > 0){
					//遍历id
					for(String depsecCheckId:depsecCheckIds){
						if(depsecCheckId != null && !"".equals(depsecCheckId)){
							//根据id获得对象
							depsecCheck = (DepsecCheck)depsecCheckManager.getObjectById(Integer.parseInt(depsecCheckId));		
							//改变表中删除标识
							depsecCheckManager.removeObject(depsecCheck);
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
	public String depsecCheckSave()throws Exception{
		try {
			if (depsecCheck != null && depsecCheck.getVersion() == null ) {
				depsecCheck.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (depsecCheck != null) {
				depsecCheck.setUsername(user.getName());
			}
			if (depsecCheck != null) {
				depsecCheck.setUserid(user.getId());
			}
			if (depsecCheck != null && depsecCheck.getDepdate() == null) {
				depsecCheck.setDepdate(new Date());
			}
			depsecCheckManager.saveObject(depsecCheck);
			
			this.getRequest().setAttribute("title", "部门保密工作自查");
			this.getRequest().setAttribute("url", "/depseccheck/depsecCheckList.action");
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
	public String depsecCheckInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(depsecCheck != null && depsecCheck.getId() != null){
				depsecCheck =  (DepsecCheck)depsecCheckManager.getObjectById(depsecCheck.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public DepsecCheck getDepsecCheck() {
		return depsecCheck;
	}


	public void setDepsecCheck(DepsecCheck depsecCheck) {
		this.depsecCheck = depsecCheck;
	}


	public List<DepsecCheck> getDepsecCheckList() {
		return depsecCheckList;
	}


	public void setDepsecCheckList(List<DepsecCheck> depsecCheckList) {
		this.depsecCheckList = depsecCheckList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public DepsecCheckPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(DepsecCheckPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

