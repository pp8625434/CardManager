package com.manage.classifiedtz.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;

import com.manage.classifiedtz.action.info.ClassifiedtzPageInfo;
import com.manage.classifiedtz.model.SClassifiedtzInfoTab;
import com.manage.classifiedtz.model.SClassifiedtzTab;
import com.manage.classifiedtz.service.ClassifiedtzInfoManager;
import com.manage.classifiedtz.service.ClassifiedtzManager;
import com.manage.user.model.User;

/**
 * 部门或个人涉密载体台账
 * @author GGM
 *
 */
public class ClassifiedtzAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ClassifiedtzAction.class);
	private ClassifiedtzPageInfo pageInfo;
	private SClassifiedtzTab classifiedtz;
	private List<SClassifiedtzTab> tzList;
	private List<SClassifiedtzInfoTab> infoList;
	private String params;
	private String ids;
	
	private ClassifiedtzManager classifiedtzManager = (ClassifiedtzManager) SpringContextHolder.getBean(SClassifiedtzTab.class);
	private ClassifiedtzInfoManager classifiedtzInfoManager = (ClassifiedtzInfoManager) SpringContextHolder.getBean(SClassifiedtzInfoTab.class);
	
	/**
	 * @see 部门或个人涉密载体台账
	 * @author GGM
	 * @date May 16, 2016 1:04:10 PM
	 */
	public String classifiedtzList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ClassifiedtzPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			tzList = classifiedtzManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看部门或个人涉密载体台账
	 * @author GGM
	 * @date May 16, 2016 1:24:12 PM
	 */
	public String classifiedtzInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedtz != null && classifiedtz.getId() != null){
				classifiedtz = (SClassifiedtzTab) classifiedtzManager.getObjectById(classifiedtz.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑部门或个人涉密载体台账
	 * @author GGM
	 * @date May 16, 2016 1:36:30 PM
	 */
	public String classifiedtzEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedtz != null && classifiedtz.getId() != null){
				classifiedtz = (SClassifiedtzTab) classifiedtzManager.getObjectById(classifiedtz.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存部门或个人涉密载体台账
	 * @author GGM
	 * @date May 16, 2016 2:10:15 PM
	 */
	public String saveClassifiedtz()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
		
			if(classifiedtz.getVersion() == null){
				classifiedtz.setVersion(0);
			}
			if(classifiedtz.getDepositorydate()==null){
				classifiedtz.setDepositorydate(date);
			}
			if(classifiedtz.getApprovedate()==null){
				classifiedtz.setApprovedate(date);
			}
			
			classifiedtz.setUserid(user.getId());
			classifiedtz.setUsername(user.getRealname());
			
			classifiedtzManager.saveObject(classifiedtz);
			
			this.getRequest().setAttribute("title", "部门或个人涉密载体台账");
			this.getRequest().setAttribute("url", "/classifiedtz/classifiedtzList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除部门或个人涉密载体台账
	 * @author GGM
	 * @date May 16, 2016 2:28:34 PM
	 */
	public String delClassifiedtz()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							classifiedtz = (SClassifiedtzTab) classifiedtzManager.getObjectById(Integer.parseInt(pid));
//							cpList = classifiedprojectManager.getCpList(eclassification.getId());
//							if(cpList != null && cpList.size()>0){
//								for(int i=0;i<cpList.size();i++){
//									SClassifiedprojectTab project = cpList.get(i);
//									classifiedprojectManager.removeObjectById(project.getId());
//								}
//							}
							classifiedtzManager.removeObjectById(classifiedtz.getId());
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

	public ClassifiedtzPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ClassifiedtzPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SClassifiedtzTab getClassifiedtz() {
		return classifiedtz;
	}

	public void setClassifiedtz(SClassifiedtzTab classifiedtz) {
		this.classifiedtz = classifiedtz;
	}

	public List<SClassifiedtzTab> getTzList() {
		return tzList;
	}

	public void setTzList(List<SClassifiedtzTab> tzList) {
		this.tzList = tzList;
	}

	public List<SClassifiedtzInfoTab> getInfoList() {
		return infoList;
	}

	public void setInfoList(List<SClassifiedtzInfoTab> infoList) {
		this.infoList = infoList;
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
