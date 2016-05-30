package com.manage.classifieddestroy.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.classifieddestroy.action.info.ClassifieddestroyPageInfo;
import com.manage.classifieddestroy.model.SClassifieddestroyInfoTab;
import com.manage.classifieddestroy.model.SClassifieddestroyTab;
import com.manage.classifieddestroy.service.ClassifieddestroyInfoManager;
import com.manage.classifieddestroy.service.ClassifieddestroyManager;
import com.manage.user.model.User;

/**
 * 本部涉密载体销毁审批
 * @author GGM
 *
 */
public class ClassifieddestroyAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ClassifieddestroyAction.class);
	private ClassifieddestroyPageInfo pageInfo;
	private SClassifieddestroyTab classifieddestroy;
	private List<SClassifieddestroyTab> cdList;
	private List<SClassifieddestroyInfoTab> cdinfoList;
	private String params;
	private String ids;
	
	private ClassifieddestroyManager classifieddestroyManager = (ClassifieddestroyManager) SpringContextHolder.getBean(SClassifieddestroyTab.class);
	private ClassifieddestroyInfoManager classifieddestroyInfoManager = (ClassifieddestroyInfoManager)SpringContextHolder.getBean(SClassifieddestroyInfoTab.class);
	/**
	 * @see 本部涉密载体销毁审批列表
	 * @author GGM
	 * @date May 25, 2016 09:39:49 AM
	 */
	public String classifieddestroyList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ClassifieddestroyPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			cdList = classifieddestroyManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看本部涉密载体销毁审批
	 * @author GGM
	 * @date May 25, 2016 09:58:02 AM
	 */
	public String classifieddestroyInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifieddestroy != null && classifieddestroy.getId() != null){
				classifieddestroy = (SClassifieddestroyTab) classifieddestroyManager.getObjectById(classifieddestroy.getId());
				
				cdinfoList = classifieddestroyInfoManager.getCdinfoList(classifieddestroy.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑本部涉密载体销毁审批
	 * @author GGM
	 * @date May 25, 2016 10:24:30 AM
	 */
	public String classifieddestroyEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifieddestroy != null && classifieddestroy.getId() != null){
				classifieddestroy = (SClassifieddestroyTab) classifieddestroyManager.getObjectById(classifieddestroy.getId());
				
				cdinfoList = classifieddestroyInfoManager.getCdinfoList(classifieddestroy.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存本部涉密载体销毁审批信息
	 * @author GGM
	 * @date May 25, 2016 10:43:10 AM
	 */
	public String saveClassifieddestroy()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if (classifieddestroy.getId() != null) {
				
				cdinfoList = classifieddestroyInfoManager.getCdinfoList(classifieddestroy.getId());
				if(cdinfoList !=null && cdinfoList.size()>0){
					for(int i=0;i<cdinfoList.size();i++){
						SClassifieddestroyInfoTab cdinfo = cdinfoList.get(i);
						classifieddestroyInfoManager.removeObjectById(cdinfo.getId());
					}
				}
			}
			if(classifieddestroy.getVersion() == null){
				classifieddestroy.setVersion(0);
			}
			
			classifieddestroy.setUserid(user.getId());
			classifieddestroy.setUsername(user.getRealname());
			
			classifieddestroyManager.saveObject(classifieddestroy);
		
			String[] filename = getRequest().getParameterValues("filename");
			String[] productunit = getRequest().getParameterValues("productunit");
			String[] carriertype = getRequest().getParameterValues("carriertype");
			String[] code = getRequest().getParameterValues("code");
			String[] classification = getRequest().getParameterValues("classification");
			String[] pages = getRequest().getParameterValues("pages");
			String[] copies = getRequest().getParameterValues("copies");
			String[] depository = getRequest().getParameterValues("depository");
			if(filename != null && filename.length>0){
				SClassifieddestroyInfoTab destroyinfo = null;
				for(int i =0;i<filename.length;i++){
					if(filename[i] != null && !"".equals(filename[i])){
						destroyinfo = new SClassifieddestroyInfoTab();
						destroyinfo.setFilename(filename[i]);
						destroyinfo.setProductunit(productunit[i]);
						destroyinfo.setCarriertype(Integer.parseInt(carriertype[i]));
						destroyinfo.setCode(code[i]);
						destroyinfo.setClassification(classification[i]);
						destroyinfo.setPages(Integer.parseInt(pages[i]));
						destroyinfo.setCopies(Integer.parseInt(copies[i]));
						destroyinfo.setDepository(depository[i]);
						destroyinfo.setCdid(classifieddestroy.getId());
						classifieddestroyInfoManager.saveObject(destroyinfo);
					}
				}
			}
			this.getRequest().setAttribute("title", "本部涉密载体销毁审批");
			this.getRequest().setAttribute("url", "/classifieddestroy/classifieddestroyList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除本部涉密载体销毁审批
	 * @author GGM
	 * @date May 25, 2016 11:30:04 AM
	 */
	public String delClassifieddestroy()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							classifieddestroy = (SClassifieddestroyTab) classifieddestroyManager.getObjectById(Integer.parseInt(pid));
							cdinfoList = classifieddestroyInfoManager.getCdinfoList(classifieddestroy.getId());
							if(cdinfoList != null && cdinfoList.size()>0){
								for(int i=0;i<cdinfoList.size();i++){
									SClassifieddestroyInfoTab cdinfo = cdinfoList.get(i);
									classifieddestroyInfoManager.removeObjectById(cdinfo.getId());
								}
							}
							classifieddestroyManager.removeObjectById(classifieddestroy.getId());
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

	public ClassifieddestroyPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ClassifieddestroyPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SClassifieddestroyTab getClassifieddestroy() {
		return classifieddestroy;
	}

	public void setClassifieddestroy(SClassifieddestroyTab classifieddestroy) {
		this.classifieddestroy = classifieddestroy;
	}

	public List<SClassifieddestroyTab> getCdList() {
		return cdList;
	}

	public void setCdList(List<SClassifieddestroyTab> cdList) {
		this.cdList = cdList;
	}

	public List<SClassifieddestroyInfoTab> getCdinfoList() {
		return cdinfoList;
	}

	public void setCdinfoList(List<SClassifieddestroyInfoTab> cdinfoList) {
		this.cdinfoList = cdinfoList;
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
