package com.manage.classifiedcopy.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.classifiedcopy.action.info.ClassifiedcopyPageInfo;
import com.manage.classifiedcopy.model.SCarriercontentTab;
import com.manage.classifiedcopy.model.SClassifiedcopyTab;
import com.manage.classifiedcopy.service.CarriercontentManager;
import com.manage.classifiedcopy.service.ClassifiedcopyManager;
import com.manage.user.model.User;

/**
 * 本部涉密载体外出复制审批单
 * @author GGM
 *
 */
public class ClassifiedcopyAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ClassifiedcopyAction.class);	
	private ClassifiedcopyPageInfo pageInfo;
	private SClassifiedcopyTab classifiedcopy;
	private List<SClassifiedcopyTab> copyList;
	private List<SCarriercontentTab> contentList;
	private String params;
	private String ids;
	
	private ClassifiedcopyManager classifiedcopyManager= (ClassifiedcopyManager) SpringContextHolder.getBean(SClassifiedcopyTab.class);
	private CarriercontentManager carriercontentManager = (CarriercontentManager) SpringContextHolder.getBean(SCarriercontentTab.class);
	
	/**
	 * @see 获得本部涉密载体外出复制审批单列表
	 * @author GGM
	 * @date May 13, 2016 2:06:38 PM
	 */
	public String classifiedcopyList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ClassifiedcopyPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			copyList = classifiedcopyManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	
	/**
	 * @see 查看本部涉密载体外出复制审批单
	 * @author GGM
	 * @date May 13, 2016 2:22:26 PM
	 */
	public String classifiedcopyInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedcopy !=null && classifiedcopy.getId() != null){
				classifiedcopy = (SClassifiedcopyTab) classifiedcopyManager.getObjectById(classifiedcopy.getId());
				contentList = carriercontentManager.getcontentList(classifiedcopy.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	
	/**
	 * @see 新增/编辑本部涉密载体外出复制审批单
	 * @author GGM
	 * @date May 13, 2016 2:39:27 PM
	 */
	public String classifiedcopyEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedcopy !=null && classifiedcopy.getId() != null){
				classifiedcopy = (SClassifiedcopyTab) classifiedcopyManager.getObjectById(classifiedcopy.getId());
				contentList = carriercontentManager.getcontentList(classifiedcopy.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	
	/**
	 * @see 保存本部涉密载体外出复制审批单
	 * @author GGM
	 * @date May 13, 2016 3:09:01 PM
	 */
	public String saveClassifiedcopy()throws Exception{
		
		try{
			User user = (User) getSession().getAttribute("user");
			Date date = new Date();
			
			if(classifiedcopy.getVersion() == null){
				classifiedcopy.setVersion(0);
			}
			if(classifiedcopy.getOfficedate() == null){
				classifiedcopy.setOfficedate(date);
			}
			if(classifiedcopy.getDepartmentdate()==null){
				classifiedcopy.setDepartmentdate(date);
			}
			if(classifiedcopy.getAgentdate()==null){
				classifiedcopy.setAgentdate(date);
			}
			
			classifiedcopy.setUsername(user.getRealname());
			classifiedcopy.setUserid(user.getId());
			
			classifiedcopyManager.saveObject(classifiedcopy);
			this.getRequest().setAttribute("title", "本部涉密载体外出复制审批单");
			this.getRequest().setAttribute("url", "/classifiedcopy/classifiedcopyList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 进入审批页面
	 * @author GGM
	 * @date May 13, 2016 4:28:41 PM
	 */
	public String toExamClassifiedcopy()throws Exception{
			
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedcopy !=null && classifiedcopy.getId() != null){
				classifiedcopy = (SClassifiedcopyTab) classifiedcopyManager.getObjectById(classifiedcopy.getId());
				contentList = carriercontentManager.getcontentList(classifiedcopy.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 审批本部涉密载体外出复制审批单
	 * @author GGM
	 * @date May 13, 2016 4:31:21 PM
	 */
	public String examClassifiedcopy()throws Exception{
		
		try{
			if(classifiedcopy !=null && classifiedcopy.getId() != null){
				SClassifiedcopyTab sClassifiedcopyTab = (SClassifiedcopyTab) classifiedcopyManager.getObjectById(classifiedcopy.getId());
				if(classifiedcopy.getOfficesign() != null ){
					sClassifiedcopyTab.setOfficesign(classifiedcopy.getOfficesign());
				}
				if(classifiedcopy.getDepartmentsign() != null){
					sClassifiedcopyTab.setDepartmentsign(classifiedcopy.getDepartmentsign());
				}
				if(classifiedcopy.getAgentsign() != null ){
					sClassifiedcopyTab.setAgentsign(classifiedcopy.getAgentsign());
				}
				classifiedcopyManager.saveObject(sClassifiedcopyTab);
			}
			this.getRequest().setAttribute("title", "本部涉密载体外出复制审批单");
			this.getRequest().setAttribute("url", "/classifiedcopy/classifiedcopyList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	/**
	 * @see 删除本部涉密载体外出复制审批单
	 * @author GGM
	 * @date May 13, 2016 3:24:10 PM
	 */
	public String delClassifiedcopy()throws Exception{
		
		try{
			if(Utils.isNotNullOrEmpty(ids)){
				String[] lpids = ids.split(",");
				if(lpids !=null && lpids.length>0){
					for(String lpid : lpids){
						if(lpid != null && !"".equals(lpid)){
							classifiedcopy = (SClassifiedcopyTab) classifiedcopyManager.getObjectById(Integer.parseInt(lpid));
							contentList = carriercontentManager.getcontentList(classifiedcopy.getId());
							if(contentList != null && contentList.size()>0){
								for(int i =0;i<contentList.size();i++){
									SCarriercontentTab carriercontentTab = contentList.get(i);
									carriercontentManager.removeObjectById(carriercontentTab.getId());
								}
							}
							classifiedcopyManager.removeObjectById(classifiedcopy.getId());
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


	public ClassifiedcopyPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(ClassifiedcopyPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public SClassifiedcopyTab getClassifiedcopy() {
		return classifiedcopy;
	}


	public void setClassifiedcopy(SClassifiedcopyTab classifiedcopy) {
		this.classifiedcopy = classifiedcopy;
	}


	public List<SClassifiedcopyTab> getCopyList() {
		return copyList;
	}


	public void setCopyList(List<SClassifiedcopyTab> copyList) {
		this.copyList = copyList;
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


	public List<SCarriercontentTab> getContentList() {
		return contentList;
	}


	public void setContentList(List<SCarriercontentTab> contentList) {
		this.contentList = contentList;
	}
	
}
