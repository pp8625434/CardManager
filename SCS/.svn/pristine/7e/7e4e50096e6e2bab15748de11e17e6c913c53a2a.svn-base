package com.manage.examclassification.action;

import java.util.Date;
import java.util.List;
import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.examclassification.action.info.ClassifiedPageInfo;
import com.manage.examclassification.model.SClassifiedprojectTab;
import com.manage.examclassification.model.SExamClassificationTab;
import com.manage.examclassification.service.ClassifiedprojectManager;
import com.manage.examclassification.service.SExamClassificationTabManager;
import com.manage.user.model.User;

/**
 * 涉密人员密级审定
 * @author GGM
 *
 */
public class ClassifiedAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ClassifiedAction.class);
	private ClassifiedPageInfo pageInfo;
	private SExamClassificationTab eclassification =new SExamClassificationTab();
	private List<SExamClassificationTab> examList;
	private List<SClassifiedprojectTab> cpList;
	private Integer classification;
	private String proname;
	private String params;
	private String ids;
	
	private SExamClassificationTabManager sClassificationTabManager = (SExamClassificationTabManager) SpringContextHolder.getBean(SExamClassificationTab.class);
	private ClassifiedprojectManager classifiedprojectManager = (ClassifiedprojectManager) SpringContextHolder.getBean(SClassifiedprojectTab.class);
	/**
	 * @see 涉密人员密级列表
	 * @author GGM
	 * @date May 10, 2016 11:39:49 AM
	 */
	public String classifiedList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ClassifiedPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			examList = sClassificationTabManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看涉密人员密级审定
	 * @author GGM
	 * @date May 11, 2016 9:46:02 AM
	 */
	public String classifiedInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(eclassification != null && eclassification.getId() != null){
				eclassification = (SExamClassificationTab) sClassificationTabManager.getObjectById(eclassification.getId());
				
				cpList = classifiedprojectManager.getCpList(eclassification.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑涉密人员密级审定
	 * @author GGM
	 * @date May 10, 2016 1:36:30 PM
	 */
	public String classifiedEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(eclassification != null && eclassification.getId() != null){
				eclassification = (SExamClassificationTab) sClassificationTabManager.getObjectById(eclassification.getId());
				
				cpList = classifiedprojectManager.getCpList(eclassification.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存涉密人员密级审定信息
	 * @author GGM
	 * @date May 10, 2016 2:14:10 PM
	 */
	public String saveClassified()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if (eclassification.getId() != null) {
				
				List<SClassifiedprojectTab> cptabList = classifiedprojectManager.getCpList(eclassification.getId());
				if(cptabList !=null && cptabList.size()>0){
					for(int i=0;i<cptabList.size();i++){
						SClassifiedprojectTab protab = cptabList.get(i);
						classifiedprojectManager.removeObjectById(protab.getId());
					}
				}
			}
			if(eclassification.getVersion() == null){
				eclassification.setVersion(0);
			}
			if(eclassification.getLeadersigndate()==null){
				eclassification.setLeadersigndate(date);
			}
			if(eclassification.getDepartmentdate()==null){
				eclassification.setDepartmentdate(date);
			}
			if(eclassification.getScomsigndate()==null){
				eclassification.setScomsigndate(date);
			}
			if(eclassification.getSofficesigndate()==null){
				eclassification.setSofficesigndate(date);
			}
			
			eclassification.setUserid(user.getId());
			eclassification.setUsername(user.getRealname());
			
			sClassificationTabManager.saveObject(eclassification);
		
			String[] pro = getRequest().getParameterValues("proname");
			//String[] cla = getRequest().getParameterValues("classification");
			if(pro != null && pro.length>0){
				SClassifiedprojectTab project = null;
				for(int i =0;i<pro.length;i++){
					if(pro[i] != null && !"".equals(pro[i])){
						String cla = getRequest().getParameter("classification"+(i+1));
						project = new SClassifiedprojectTab();
						project.setProname(pro[i]);
						project.setClassification(Integer.parseInt(cla));
						project.setEcid(eclassification.getId());
						classifiedprojectManager.saveObject(project);
					}
				}
			}
//			SClassifiedprojectTab project = null;
//				if(cpList != null && cpList.size()>0){
//					for(int i =0 ; i<cpList.size();i++){
//						project = new SClassifiedprojectTab();
//						project.setProname(cpList.get(i).getProname());
//						project.setEcid(eclassification.getId());
//						classifiedprojectManager.saveObject(project);
//					}
//				}
//			
			this.getRequest().setAttribute("title", "涉密人员密级审定");
			this.getRequest().setAttribute("url", "/examclassification/classifiedList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
//	public String saveProject()throws Exception{
//		
//		String proString = getRequest().getParameter("par");
//		System.out.println(proString);
//		return SUCCESS;
//	}
	
	/**
	 * @see 进入审定页面
	 * @author GGM
	 * @date May 11, 2016 9:58:22 AM
	 */
	public String toApproveClassified()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(eclassification != null && eclassification.getId() != null){
				eclassification = (SExamClassificationTab) sClassificationTabManager.getObjectById(eclassification.getId());
				
				cpList = classifiedprojectManager.getCpList(eclassification.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 审定涉密人员密级
	 * @author GGM
	 * @date May 11, 2016 10:34:04 AM
	 */
	public String approveClassified()throws Exception{
		
		try{
			sClassificationTabManager.saveObject(eclassification);
			this.getRequest().setAttribute("title", "涉密人员密级审定");
			this.getRequest().setAttribute("url", "/examclassification/classifiedList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	/**
	 * @see 删除涉密人员密级审定
	 * @author GGM
	 * @date May 11, 2016 11:42:04 AM
	 */
	public String delClassified()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							eclassification = (SExamClassificationTab) sClassificationTabManager.getObjectById(Integer.parseInt(pid));
							cpList = classifiedprojectManager.getCpList(eclassification.getId());
							if(cpList != null && cpList.size()>0){
								for(int i=0;i<cpList.size();i++){
									SClassifiedprojectTab project = cpList.get(i);
									classifiedprojectManager.removeObjectById(project.getId());
								}
							}
							sClassificationTabManager.removeObjectById(eclassification.getId());
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

	public ClassifiedPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ClassifiedPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SExamClassificationTab getEclassification() {
		return eclassification;
	}

	public void setEclassification(SExamClassificationTab eclassification) {
		this.eclassification = eclassification;
	}

	public List<SExamClassificationTab> getExamList() {
		return examList;
	}

	public void setExamList(List<SExamClassificationTab> examList) {
		this.examList = examList;
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


	public List<SClassifiedprojectTab> getCpList() {
		return cpList;
	}

	public void setCpList(List<SClassifiedprojectTab> cpList) {
		this.cpList = cpList;
	}


	public String getProname() {
		return proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public Integer getClassification() {
		return classification;
	}

	public void setClassification(Integer classification) {
		this.classification = classification;
	}


}
