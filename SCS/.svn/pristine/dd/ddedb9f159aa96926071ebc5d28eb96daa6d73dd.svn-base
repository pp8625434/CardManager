package com.manage.statesecrets.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.statesecrets.action.info.StatesecretsPageInfo;
import com.manage.statesecrets.model.SStatesecretsTab;
import com.manage.statesecrets.service.SStatesecretsTabManager;
import com.manage.user.model.User;

/**
 * 国家秘密事项的变更或解密审批
 * @author GGM
 *
 */
public class StatesecretsAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(StatesecretsAction.class);	
	private StatesecretsPageInfo pageInfo;
	private SStatesecretsTab sStatesecretsTab = new SStatesecretsTab();
	private List<SStatesecretsTab> sList;
	private String params;
	private String ids;
	
	private SStatesecretsTabManager statesecretsTabManager = (SStatesecretsTabManager) SpringContextHolder.getBean(SStatesecretsTab.class);
	
	/**
	 * @see 国家秘密事项的变更或解密审批列表
	 * @author GGM
	 * @date May 9, 2016 10:52:35 AM
	 */
	public String statesecretsList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new StatesecretsPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			sList = statesecretsTabManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看国家秘密事项的变更或解密审批
	 * @author GGM
	 * @date May 9, 2016 3:31:48 PM
	 */
	public String statesecretsInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(sStatesecretsTab !=null && sStatesecretsTab.getId() != null){
				sStatesecretsTab = (SStatesecretsTab) statesecretsTabManager.getObjectById(sStatesecretsTab.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	/**
	 * @see 新增/编辑国家秘密事项的变更或解密审批
	 * @author GGM
	 * @date May 9, 2016 1:41:19 PM
	 */
	public String statesecretsEdit()throws Exception{
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(sStatesecretsTab !=null && sStatesecretsTab.getId() != null){
				sStatesecretsTab = (SStatesecretsTab) statesecretsTabManager.getObjectById(sStatesecretsTab.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存国家秘密事项的变更或解密审批
	 * @author GGM
	 * @date May 9, 2016 3:22:29 PM
	 */
	public String saveStatesecrets()throws Exception{
		
		try{
			User user = (User) getSession().getAttribute("user");
			Date date = new Date();
			
			if(sStatesecretsTab.getVersion() == null){
				sStatesecretsTab.setVersion(0);
			}
			if(sStatesecretsTab.getAuditdate() == null){
				sStatesecretsTab.setAuditdate(date);
			}
			if(sStatesecretsTab.getExamdate() == null){
				sStatesecretsTab.setExamdate(date);
			}
			sStatesecretsTab.setUsername(user.getRealname());
			sStatesecretsTab.setUserid(user.getId());
			
			statesecretsTabManager.saveObject(sStatesecretsTab);
			this.getRequest().setAttribute("title", "国家秘密事项的变更或解密审批");
			this.getRequest().setAttribute("url", "/statesecrets/statesecretsList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	/**
	 * @see 进入审批页面
	 * @author GGM
	 * @date May 9, 2016 5:14:26 PM
	 */
	public String toExamStatesecrets()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(sStatesecretsTab !=null && sStatesecretsTab.getId() != null){
				sStatesecretsTab = (SStatesecretsTab) statesecretsTabManager.getObjectById(sStatesecretsTab.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 审批国家秘密事项的变更或解密
	 * @author GGM
	 * @date May 18, 2016 9:33:20 AM
	 */
	public String examStatesecrets()throws Exception{
		
		this.getRequest().setAttribute("title", "国家秘密事项的变更或解密审批");
		this.getRequest().setAttribute("url", "/statesecrets/statesecretsList.action");
		this.getRequest().setAttribute("params", this.params);
		return SUCCESS;
	}
	
	/**
	 * @see 删除国家秘密事项的变更或解密审批
	 * @author GGM
	 * @date May 9, 2016 3:44:50 PM
	 */
	public String delStatesecrets()throws Exception{
		try{
			if(Utils.isNotNullOrEmpty(ids)){
				String[] scids = ids.split(",");
				if(scids != null && scids.length>0){
					for(String scid:scids){
						if(scid != null && !"".equals(scid)){
							sStatesecretsTab = (SStatesecretsTab) statesecretsTabManager.getObjectById(Integer.parseInt(scid));
							statesecretsTabManager.removeObjectById(sStatesecretsTab.getId());
						}
					}
					
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public StatesecretsPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(StatesecretsPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SStatesecretsTab getSStatesecretsTab() {
		return sStatesecretsTab;
	}

	public void setSStatesecretsTab(SStatesecretsTab statesecretsTab) {
		sStatesecretsTab = statesecretsTab;
	}

	public List<SStatesecretsTab> getSList() {
		return sList;
	}

	public void setSList(List<SStatesecretsTab> list) {
		sList = list;
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
}
