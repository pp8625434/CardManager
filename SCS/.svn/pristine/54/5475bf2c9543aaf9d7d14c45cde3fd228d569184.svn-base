package com.manage.equalification.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.equalification.action.info.EmployQualificationPageInfo;
import com.manage.equalification.model.SEmployQualificationTab;
import com.manage.equalification.model.SSocialfamilyTab;
import com.manage.equalification.model.SStudyworkTab;
import com.manage.equalification.service.EmployQualificationManager;
import com.manage.equalification.service.SocialfamilyManager;
import com.manage.equalification.service.StudyworkManager;
import com.manage.user.model.User;

/**
 * 涉密岗位聘用人员保密资格审查
 * @author GGM
 *
 */
public class EmployQualificationAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(EmployQualificationAction.class);
	private EmployQualificationPageInfo pageInfo;
	private SEmployQualificationTab eclassification;
	private List<SEmployQualificationTab> employList;
	private List<SSocialfamilyTab> sfList;
	private List<SStudyworkTab> swList;
	private String params;
	private String ids;
	
	private EmployQualificationManager employQualificationManager = (EmployQualificationManager) SpringContextHolder.getBean(SEmployQualificationTab.class);
	private SocialfamilyManager socialfamilyManager = (SocialfamilyManager)SpringContextHolder.getBean(SSocialfamilyTab.class);
	private StudyworkManager studyworkManager = (StudyworkManager)SpringContextHolder.getBean(SStudyworkTab.class);
	
	/**
	 * @see 涉密岗位聘用人员保密资格审查列表
	 * @author GGM
	 * @date May 26, 2016 02:14:49 PM
	 */
	public String equalificationList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new EmployQualificationPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			employList = employQualificationManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看涉密岗位聘用人员保密资格审查
	 * @author GGM
	 * @date May 26, 2016 02:23:02 PM
	 */
	public String equalificationInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(eclassification != null && eclassification.getId() != null){
				eclassification = (SEmployQualificationTab) employQualificationManager.getObjectById(eclassification.getId());
				
				sfList = socialfamilyManager.getSfList(eclassification.getId());
				swList = studyworkManager.getSwList(eclassification.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑涉密岗位聘用人员保密资格审查
	 * @author GGM
	 * @date May 26, 2016 02:45:30 PM
	 */
	public String equalificationEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(eclassification != null && eclassification.getId() != null){
				eclassification = (SEmployQualificationTab) employQualificationManager.getObjectById(eclassification.getId());
				
				sfList = socialfamilyManager.getSfList(eclassification.getId());
				swList = studyworkManager.getSwList(eclassification.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存涉密岗位聘用人员保密资格审查信息
	 * @author GGM
	 * @date May 26, 2016 03:03:10 PM
	 */
	public String saveEqualification()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if (eclassification.getId() != null) {
				
				sfList = socialfamilyManager.getSfList(eclassification.getId());
				if(sfList !=null && sfList.size()>0){
					for(int i=0;i<sfList.size();i++){
						SSocialfamilyTab info = sfList.get(i);
						socialfamilyManager.removeObjectById(info.getId());
					}
				}
				
				swList = studyworkManager.getSwList(eclassification.getId());
				if(swList !=null && swList.size()>0){
					for(int i=0;i<swList.size();i++){
						SStudyworkTab sfinfo = swList.get(i);
						studyworkManager.removeObjectById(sfinfo.getId());
					}
				}
			}
			if(eclassification.getVersion() == null){
				eclassification.setVersion(0);
			}
			if(eclassification.getSigntime()==null){
				eclassification.setSigntime(date);
			}
			if(eclassification.getOunitsigndate()==null){
				eclassification.setOunitsigndate(date);
			}
			if(eclassification.getDepartsigndate()==null){
				eclassification.setDepartsigndate(date);
			}
			if(eclassification.getSofficesigndate()==null){
				eclassification.setSofficesigndate(date);
			}
			if(eclassification.getScomdate()==null){
				eclassification.setScomdate(date);
			}
			eclassification.setUserid(user.getId());
			eclassification.setUsername(user.getRealname());
			
			employQualificationManager.saveObject(eclassification);
			
			String[] wstartdate = getRequest().getParameterValues("wstartdate");
			String[] wenddate = getRequest().getParameterValues("wenddate");
			String[] workunit = getRequest().getParameterValues("workunit");
			String[] jobs = getRequest().getParameterValues("jobs");
			String[] position = getRequest().getParameterValues("position");
			String[] zmname = getRequest().getParameterValues("zmname");
			
			SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
			if(workunit != null && workunit.length>0){
				SStudyworkTab sw = null;
				for(int i =0;i<workunit.length;i++){
					if(workunit[i] != null && !"".equals(workunit[i])){
						sw = new SStudyworkTab();
						sw.setWstartdate(formatDate.parse(wstartdate[i]));
						sw.setWenddate(formatDate.parse(wenddate[i]));
						sw.setWorkunit(workunit[i]);
						sw.setJobs(jobs[i]);
						sw.setPosition(position[i]);
						sw.setZmname(zmname[i]);
						sw.setEqid(eclassification.getId());
						sw.setVersion(0);
						studyworkManager.saveObject(sw);
					}
				}
			}
			
			String[] name = getRequest().getParameterValues("name");
			String[] relation = getRequest().getParameterValues("relation");
			String[] national = getRequest().getParameterValues("national");
			String[] dwzw = getRequest().getParameterValues("dwzw");
			String[] age = getRequest().getParameterValues("age");
			
			if(name != null && name.length>0){
				SSocialfamilyTab sf = null;
				for(int i =0;i<workunit.length;i++){
					if(name[i] != null && !"".equals(name[i])){
						String sex = getRequest().getParameter("sex"+(i+1));
						sf = new SSocialfamilyTab();
						sf.setName(name[i]);
						sf.setRelation(relation[i]);
						sf.setNational(national[i]);
						sf.setDwzw(dwzw[i]);
						sf.setAge(Integer.parseInt(age[i]));
						sf.setSex(Integer.parseInt(sex));
						sf.setEqid(eclassification.getId());
						sf.setVersion(0);
						socialfamilyManager.saveObject(sf);
					}
				}
			}
			this.getRequest().setAttribute("title", "涉密岗位聘用人员保密资格审查");
			this.getRequest().setAttribute("url", "/equalification/equalificationList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除涉密岗位聘用人员保密资格审查
	 * @author GGM
	 * @date May 26, 2016 03:46:04 PM
	 */
	public String delEqualification()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							eclassification = (SEmployQualificationTab) employQualificationManager.getObjectById(Integer.parseInt(pid));
							
							sfList = socialfamilyManager.getSfList(eclassification.getId());
							if(sfList !=null && sfList.size()>0){
								for(int i=0;i<sfList.size();i++){
									SSocialfamilyTab info = sfList.get(i);
									socialfamilyManager.removeObjectById(info.getId());
								}
							}
							
							swList = studyworkManager.getSwList(eclassification.getId());
							if(swList !=null && swList.size()>0){
								for(int i=0;i<swList.size();i++){
									SStudyworkTab sfinfo = swList.get(i);
									studyworkManager.removeObjectById(sfinfo.getId());
								}
							}
							employQualificationManager.removeObjectById(eclassification.getId());
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

	public EmployQualificationPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(EmployQualificationPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public SEmployQualificationTab getEclassification() {
		return eclassification;
	}

	public void setEclassification(SEmployQualificationTab eclassification) {
		this.eclassification = eclassification;
	}

	public List<SEmployQualificationTab> getEmployList() {
		return employList;
	}

	public void setEmployList(List<SEmployQualificationTab> employList) {
		this.employList = employList;
	}

	public List<SSocialfamilyTab> getSfList() {
		return sfList;
	}

	public void setSfList(List<SSocialfamilyTab> sfList) {
		this.sfList = sfList;
	}

	public List<SStudyworkTab> getSwList() {
		return swList;
	}

	public void setSwList(List<SStudyworkTab> swList) {
		this.swList = swList;
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

	public StudyworkManager getStudyworkManager() {
		return studyworkManager;
	}

	public void setStudyworkManager(StudyworkManager studyworkManager) {
		this.studyworkManager = studyworkManager;
	}
	
	
}
