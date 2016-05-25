package com.manage.conagreementyb.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.conagreementyb.action.info.ConAgreementybPageInfo;
import com.manage.conagreementyb.model.ConAgreementyb;
import com.manage.conagreementyb.service.ConAgreementybManager;
import com.manage.user.model.User;



/**
 * @see 保密协议书（样本）
 * @date May 9, 2016
 * @author dl
 */
public class ConAgreementybAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ConAgreementybAction.class);	
	private ConAgreementyb conAgreementyb;
	private ConAgreementybPageInfo pageInfo;
	private List<ConAgreementyb> conAgreementybList;
	private String params;

	private String ids;
	
	private ConAgreementybManager conAgreementybManager=(ConAgreementybManager) SpringContextHolder.getBean(ConAgreementyb.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String conAgreementybList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ConAgreementybPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			conAgreementybList = conAgreementybManager.getList(sarchPageInfo);
				
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
	public String conAgreementybAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (conAgreementyb != null && conAgreementyb.getId() != null) {
				conAgreementyb = (ConAgreementyb) conAgreementybManager.getObjectById(conAgreementyb.getId());
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
	public String conAgreementybDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] conAgreementybIds = ids.split(",");
				//判断非空
				if(conAgreementybIds != null && conAgreementybIds.length > 0){
					//遍历id
					for(String conAgreementybId:conAgreementybIds){
						if(conAgreementybId != null && !"".equals(conAgreementybId)){
							//根据id获得对象
							conAgreementyb = (ConAgreementyb)conAgreementybManager.getObjectById(Integer.parseInt(conAgreementybId));		
							//改变表中删除标识
							conAgreementybManager.removeObject(conAgreementyb);
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
	public String conAgreementybSave()throws Exception{
		try {
			if (conAgreementyb != null && conAgreementyb.getVersion() == null ) {
				conAgreementyb.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (conAgreementyb != null) {
				conAgreementyb.setUsername(user.getName());
			}
			if (conAgreementyb != null) {
				conAgreementyb.setUserid(user.getId());
			}
			conAgreementybManager.saveObject(conAgreementyb);
			
			this.getRequest().setAttribute("title", "保密协议书（样本）");
			this.getRequest().setAttribute("url", "/conagreementyb/conAgreementybList.action");
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
	public String conAgreementybInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(conAgreementyb != null && conAgreementyb.getId() != null){
				conAgreementyb =  (ConAgreementyb)conAgreementybManager.getObjectById(conAgreementyb.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public ConAgreementyb getConAgreementyb() {
		return conAgreementyb;
	}


	public void setConAgreementyb(ConAgreementyb conAgreementyb) {
		this.conAgreementyb = conAgreementyb;
	}


	public List<ConAgreementyb> getConAgreementybList() {
		return conAgreementybList;
	}


	public void setConAgreementybList(List<ConAgreementyb> conAgreementybList) {
		this.conAgreementybList = conAgreementybList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public ConAgreementybPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(ConAgreementybPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

