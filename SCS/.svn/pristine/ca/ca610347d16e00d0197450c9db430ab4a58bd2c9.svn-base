package com.manage.sysauthoralter.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.sysauthoralter.action.info.SysAuthorAlterPageInfo;
import com.manage.sysauthoralter.model.SysAuthorAlter;
import com.manage.sysauthoralter.service.SysAuthorAlterManager;
import com.manage.user.model.User;



/**
 * @see 应用系统权限变更内容表
 * @date 
 * @author dl
 */
public class SysAuthorAlterAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SysAuthorAlterAction.class);	
	private SysAuthorAlter sysAuthorAlter;
	private SysAuthorAlterPageInfo pageInfo;
	private List<SysAuthorAlter> sysAuthorAlterList;
	private String params;

	private String ids;
	
	private SysAuthorAlterManager sysAuthorAlterManager=(SysAuthorAlterManager) SpringContextHolder.getBean(SysAuthorAlter.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String sysAuthorAlterList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SysAuthorAlterPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			sysAuthorAlterList = sysAuthorAlterManager.getList(sarchPageInfo);
				
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
	public String sysAuthorAlterAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (sysAuthorAlter != null && sysAuthorAlter.getId() != null) {
				sysAuthorAlter = (SysAuthorAlter) sysAuthorAlterManager.getObjectById(sysAuthorAlter.getId());
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
	public String sysAuthorAlterDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] sysAuthorAlterIds = ids.split(",");
				//判断非空
				if(sysAuthorAlterIds != null && sysAuthorAlterIds.length > 0){
					//遍历id
					for(String sysAuthorAlterId:sysAuthorAlterIds){
						if(sysAuthorAlterId != null && !"".equals(sysAuthorAlterId)){
							//根据id获得对象
							sysAuthorAlter = (SysAuthorAlter)sysAuthorAlterManager.getObjectById(Integer.parseInt(sysAuthorAlterId));		
							//改变表中删除标识
							sysAuthorAlterManager.removeObject(sysAuthorAlter);
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
	public String sysAuthorAlterSave()throws Exception{
		try {
			if (sysAuthorAlter != null && sysAuthorAlter.getVersion() == null ) {
				sysAuthorAlter.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (sysAuthorAlter != null) {
				sysAuthorAlter.setFirstperson(user.getName());
			}
			if (sysAuthorAlter != null) {
				sysAuthorAlter.setFirstpid(user.getId());
			}
			if (sysAuthorAlter != null) {
				sysAuthorAlter.setFirstsubdate(new Date());
			}
			
			sysAuthorAlterManager.saveObject(sysAuthorAlter);
			
			this.getRequest().setAttribute("title", "应用系统权限变更内容");
			this.getRequest().setAttribute("url", "/sysauthoralter/sysAuthorAlterList.action");
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
	public String sysAuthorAlterInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(sysAuthorAlter != null && sysAuthorAlter.getId() != null){
				sysAuthorAlter =  (SysAuthorAlter)sysAuthorAlterManager.getObjectById(sysAuthorAlter.getId());
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

	public SysAuthorAlter getSysAuthorAlter() {
		return sysAuthorAlter;
	}

	public void setSysAuthorAlter(SysAuthorAlter sysAuthorAlter) {
		this.sysAuthorAlter = sysAuthorAlter;
	}

	public SysAuthorAlterPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SysAuthorAlterPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<SysAuthorAlter> getSysAuthorAlterList() {
		return sysAuthorAlterList;
	}

	public void setSysAuthorAlterList(List<SysAuthorAlter> sysAuthorAlterList) {
		this.sysAuthorAlterList = sysAuthorAlterList;
	}


	
}

