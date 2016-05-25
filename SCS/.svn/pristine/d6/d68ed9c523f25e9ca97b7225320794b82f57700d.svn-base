package com.manage.confidentiality.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.confidentiality.action.info.ConfidentialityPageInfo;
import com.manage.confidentiality.model.Confidentiality;
import com.manage.confidentiality.service.ConfidentialityManager;
import com.manage.user.model.User;



/**
 * @see 保密责任书
 * @date May 9, 2016
 * @author dl
 */
public class ConfidentialityAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ConfidentialityAction.class);	
	private Confidentiality confidentiality;
	private ConfidentialityPageInfo pageInfo;
	private List<Confidentiality> confidentialityList;
	private String params;

	private String ids;
	
	private ConfidentialityManager confidentialityManager=(ConfidentialityManager) SpringContextHolder.getBean(Confidentiality.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String confidentialityList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ConfidentialityPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			confidentialityList = confidentialityManager.getList(sarchPageInfo);
				
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
	public String confidentialityAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (confidentiality != null && confidentiality.getId() != null) {
				confidentiality = (Confidentiality) confidentialityManager.getObjectById(confidentiality.getId());
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
	public String confidentialityDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] confidentialityIds = ids.split(",");
				//判断非空
				if(confidentialityIds != null && confidentialityIds.length > 0){
					//遍历id
					for(String confidentialityId:confidentialityIds){
						if(confidentialityId != null && !"".equals(confidentialityId)){
							//根据id获得对象
							confidentiality = (Confidentiality)confidentialityManager.getObjectById(Integer.parseInt(confidentialityId));		
							//改变表中删除标识
							confidentialityManager.removeObject(confidentiality);
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
	public String confidentialitySave()throws Exception{
		try {
			if (confidentiality != null && confidentiality.getVersion() == null ) {
				confidentiality.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (confidentiality != null) {
				confidentiality.setUsername(user.getName());
			}
			if (confidentiality != null) {
				confidentiality.setUserid(user.getId());
			}
			confidentialityManager.saveObject(confidentiality);
			
			this.getRequest().setAttribute("title", "保密责任书");
			this.getRequest().setAttribute("url", "/confidentiality/confidentialityList.action");
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
	public String confidentialityInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(confidentiality != null && confidentiality.getId() != null){
				confidentiality =  (Confidentiality)confidentialityManager.getObjectById(confidentiality.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public Confidentiality getConfidentiality() {
		return confidentiality;
	}


	public void setConfidentiality(Confidentiality confidentiality) {
		this.confidentiality = confidentiality;
	}


	public List<Confidentiality> getConfidentialityList() {
		return confidentialityList;
	}


	public void setConfidentialityList(List<Confidentiality> confidentialityList) {
		this.confidentialityList = confidentialityList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public ConfidentialityPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(ConfidentialityPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

