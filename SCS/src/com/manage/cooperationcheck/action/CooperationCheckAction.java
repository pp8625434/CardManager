package com.manage.cooperationcheck.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.cooperationcheck.action.info.CooperationCheckPageInfo;
import com.manage.cooperationcheck.model.CooperationCheck;
import com.manage.cooperationcheck.service.CooperationCheckManager;
import com.manage.user.model.User;



/**
 * @see 涉密协作配套单位保密监督检查表（样本）
 * @date May 9, 2016
 * @author dl
 */
public class CooperationCheckAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(CooperationCheckAction.class);	
	private CooperationCheck cooperationCheck;
	private CooperationCheckPageInfo pageInfo;
	private List<CooperationCheck> cooperationCheckList;
	private String params;

	private String ids;
	
	private CooperationCheckManager cooperationCheckManager=(CooperationCheckManager) SpringContextHolder.getBean(CooperationCheck.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String cooperationCheckList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new CooperationCheckPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			cooperationCheckList = cooperationCheckManager.getList(sarchPageInfo);
				
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
	public String cooperationCheckAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (cooperationCheck != null && cooperationCheck.getId() != null) {
				cooperationCheck = (CooperationCheck) cooperationCheckManager.getObjectById(cooperationCheck.getId());
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
	public String cooperationCheckDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] cooperationCheckIds = ids.split(",");
				//判断非空
				if(cooperationCheckIds != null && cooperationCheckIds.length > 0){
					//遍历id
					for(String cooperationCheckId:cooperationCheckIds){
						if(cooperationCheckId != null && !"".equals(cooperationCheckId)){
							//根据id获得对象
							cooperationCheck = (CooperationCheck)cooperationCheckManager.getObjectById(Integer.parseInt(cooperationCheckId));		
							//改变表中删除标识
							cooperationCheckManager.removeObject(cooperationCheck);
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
	public String cooperationCheckSave()throws Exception{
		try {
			if (cooperationCheck != null && cooperationCheck.getVersion() == null ) {
				cooperationCheck.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (cooperationCheck != null) {
				cooperationCheck.setUsername(user.getName());
			}
			if (cooperationCheck != null) {
				cooperationCheck.setUserid(user.getId());
			}
			cooperationCheckManager.saveObject(cooperationCheck);
			
			this.getRequest().setAttribute("title", "涉密协作配套单位保密监督检查表（样本）");
			this.getRequest().setAttribute("url", "/cooperationcheck/cooperationCheckList.action");
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
	public String cooperationCheckInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(cooperationCheck != null && cooperationCheck.getId() != null){
				cooperationCheck =  (CooperationCheck)cooperationCheckManager.getObjectById(cooperationCheck.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public CooperationCheck getCooperationCheck() {
		return cooperationCheck;
	}


	public void setCooperationCheck(CooperationCheck cooperationCheck) {
		this.cooperationCheck = cooperationCheck;
	}


	public List<CooperationCheck> getCooperationCheckList() {
		return cooperationCheckList;
	}


	public void setCooperationCheckList(List<CooperationCheck> cooperationCheckList) {
		this.cooperationCheckList = cooperationCheckList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public CooperationCheckPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(CooperationCheckPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

