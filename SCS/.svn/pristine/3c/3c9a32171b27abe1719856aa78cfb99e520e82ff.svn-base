package com.manage.emailexamine.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.emailexamine.action.info.EmailExaminePageInfo;
import com.manage.emailexamine.model.EmailExamine;
import com.manage.emailexamine.service.EmailExamineManager;
import com.manage.user.model.User;



/**
 * @see 外网邮箱开通、撤销申请审批表
 * @date May 9, 2016
 * @author dl
 */
public class EmailExamineAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(EmailExamineAction.class);	
	private EmailExamine emailExamine;
	private EmailExaminePageInfo pageInfo;
	private List<EmailExamine> emailExamineList;
	private String params;

	private String ids;
	
	private EmailExamineManager emailExamineManager=(EmailExamineManager) SpringContextHolder.getBean(EmailExamine.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String emailExamineList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new EmailExaminePageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			emailExamineList = emailExamineManager.getList(sarchPageInfo);
				
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
	public String emailExamineAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (emailExamine != null && emailExamine.getId() != null) {
				emailExamine = (EmailExamine) emailExamineManager.getObjectById(emailExamine.getId());
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
	public String emailExamineDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] emailExamineIds = ids.split(",");
				//判断非空
				if(emailExamineIds != null && emailExamineIds.length > 0){
					//遍历id
					for(String emailExamineId:emailExamineIds){
						if(emailExamineId != null && !"".equals(emailExamineId)){
							//根据id获得对象
							emailExamine = (EmailExamine)emailExamineManager.getObjectById(Integer.parseInt(emailExamineId));		
							//改变表中删除标识
							emailExamineManager.removeObject(emailExamine);
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
	public String emailExamineSave()throws Exception{
		try {
			if (emailExamine != null && emailExamine.getVersion() == null ) {
				emailExamine.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (emailExamine != null) {
				emailExamine.setFirstperson(user.getName());
			}
			if (emailExamine != null) {
				emailExamine.setFirstpid(user.getId());
			}
			if (emailExamine != null) {
				emailExamine.setFirstsubdate(new Date());
			}
			
			emailExamineManager.saveObject(emailExamine);
			
			this.getRequest().setAttribute("title", "外网邮箱开通、撤销申请审批");
			this.getRequest().setAttribute("url", "/emailexamine/emailExamineList.action");
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
	public String emailExamineInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(emailExamine != null && emailExamine.getId() != null){
				emailExamine =  (EmailExamine)emailExamineManager.getObjectById(emailExamine.getId());
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

	public EmailExamine getEmailExamine() {
		return emailExamine;
	}

	public void setEmailExamine(EmailExamine emailExamine) {
		this.emailExamine = emailExamine;
	}

	public EmailExaminePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(EmailExaminePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<EmailExamine> getEmailExamineList() {
		return emailExamineList;
	}

	public void setEmailExamineList(List<EmailExamine> emailExamineList) {
		this.emailExamineList = emailExamineList;
	}

	

}

