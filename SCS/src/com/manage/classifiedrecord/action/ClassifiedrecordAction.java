package com.manage.classifiedrecord.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.classifiedrecord.action.info.ClassifiedrecordPageInfo;
import com.manage.classifiedrecord.model.SClassifiedcopySupervisionTab;
import com.manage.classifiedrecord.service.ClassifiedrecordManager;
import com.manage.user.model.User;

/**
 * 本部送外复制涉密载体监督检查记录表
 * @author GGM
 *
 */
public class ClassifiedrecordAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ClassifiedrecordAction.class);	
	private ClassifiedrecordPageInfo pageInfo;
	private SClassifiedcopySupervisionTab classifiedrecord;
	private List<SClassifiedcopySupervisionTab> recordList;
	private String params;
	private String ids;
	
	private ClassifiedrecordManager classifiedrecordManager= (ClassifiedrecordManager) SpringContextHolder.getBean(SClassifiedcopySupervisionTab.class);
	
	
	/**
	 * @see 本部送外复制涉密载体监督检查记录列表
	 * @author GGM
	 * @date May 16, 2016 10:06:33 AM
	 */
	public String classifiedrecordList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ClassifiedrecordPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			recordList = classifiedrecordManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	
	/**
	 * @see 查看本部送外复制涉密载体监督检查记录
	 * @author GGM
	 * @date May 16, 2016 10:07:39 AM
	 */
	public String classifiedrecordInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedrecord !=null && classifiedrecord.getId() != null){
				classifiedrecord = (SClassifiedcopySupervisionTab) classifiedrecordManager.getObjectById(classifiedrecord.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑本部送外复制涉密载体监督检查记录
	 * @author GGM
	 * @date May 16, 2016 10:15:40 AM
	 */
	public String classifiedrecordEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedrecord !=null && classifiedrecord.getId() != null){
				classifiedrecord = (SClassifiedcopySupervisionTab) classifiedrecordManager.getObjectById(classifiedrecord.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存本部送外复制涉密载体监督检查记录
	 * @author GGM
	 * @date May 16, 2016 10:20:38 AM
	 */
	public String saveClassifiedrecord()throws Exception{
		
		try{
			User user = (User) getSession().getAttribute("user");
			Date date = new Date();
			
			if(classifiedrecord.getVersion() == null){
				classifiedrecord.setVersion(0);
			}
			if(classifiedrecord.getDepartmentdate() == null){
				classifiedrecord.setDepartmentdate(date);
			}
			if(classifiedrecord.getOfficedate() == null){
				classifiedrecord.setOfficedate(date);
			}
			
			classifiedrecord.setUsername(user.getRealname());
			classifiedrecord.setUserid(user.getId());
			
			classifiedrecordManager.saveObject(classifiedrecord);
			this.getRequest().setAttribute("title", "本部送外复制涉密载体监督检查记录");
			this.getRequest().setAttribute("url", "/classifiedrecord/classifiedrecordList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除本部送外复制涉密载体监督检查记录
	 * @author GGM
	 * @date May 16, 2016 10:27:21 AM
	 */
	public String delClassifiedrecord()throws Exception{
		
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] lpids = ids.split(",");
				if(lpids !=null && lpids.length>0){
					for(String lpid : lpids){
						if(lpid != null && lpid.length()>0){
							classifiedrecord = (SClassifiedcopySupervisionTab) classifiedrecordManager.getObjectById(Integer.parseInt(lpid));
							classifiedrecordManager.removeObjectById(classifiedrecord.getId());
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


	public ClassifiedrecordPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(ClassifiedrecordPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public SClassifiedcopySupervisionTab getClassifiedrecord() {
		return classifiedrecord;
	}


	public void setClassifiedrecord(SClassifiedcopySupervisionTab classifiedrecord) {
		this.classifiedrecord = classifiedrecord;
	}


	public List<SClassifiedcopySupervisionTab> getRecordList() {
		return recordList;
	}


	public void setRecordList(List<SClassifiedcopySupervisionTab> recordList) {
		this.recordList = recordList;
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


	public ClassifiedrecordManager getClassifiedrecordManager() {
		return classifiedrecordManager;
	}


	public void setClassifiedrecordManager(
			ClassifiedrecordManager classifiedrecordManager) {
		this.classifiedrecordManager = classifiedrecordManager;
	}
	
	
}
