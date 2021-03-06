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

import com.manage.classifieddestroy.model.SClassifieddestroyInfoTab;
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
				
				infoList = classifiedtzInfoManager.getInfo(classifiedtz.getId());
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
				infoList = classifiedtzInfoManager.getInfo(classifiedtz.getId());
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
			
			if(classifiedtz != null && classifiedtz.getId() != null){
				infoList = classifiedtzInfoManager.getInfo(classifiedtz.getId());
				if(infoList != null && infoList.size()>0){
					for(int i = 0;i<infoList.size();i++){
						SClassifiedtzInfoTab infoTab = infoList.get(i);
						classifiedtzInfoManager.removeObjectById(infoTab.getId());
					}
				}
			}
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
			
			String[] filename = getRequest().getParameterValues("filename");
			String[] productunit = getRequest().getParameterValues("productunit");
			String[] carriertype = getRequest().getParameterValues("carriertype");
			String[] code = getRequest().getParameterValues("code");
			String[] classification = getRequest().getParameterValues("classification");
			String[] pages = getRequest().getParameterValues("pages");
			String[] copies = getRequest().getParameterValues("copies");
			String[] usrange = getRequest().getParameterValues("usrange");
			String[] note = getRequest().getParameterValues("note");
			if(filename != null && filename.length>0){
				SClassifiedtzInfoTab info = null;
				for(int i =0;i<filename.length;i++){
					if(filename[i] != null && !"".equals(filename[i])){
						info = new SClassifiedtzInfoTab();
						info.setFilename(filename[i]);
						info.setProductunit(productunit[i]);
						info.setCarriertype(Integer.parseInt(carriertype[i]));
						info.setCode(code[i]);
						info.setClassification(classification[i]);
						info.setPages(Integer.parseInt(pages[i]));
						info.setCopies(Integer.parseInt(copies[i]));
						info.setUsrange(usrange[i]);
						info.setNote(note[i]);
						info.setCtzid(classifiedtz.getId());
						classifiedtzInfoManager.saveObject(info);
					}
				}
			}
			
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
							infoList = classifiedtzInfoManager.getInfo(classifiedtz.getId());
							if(infoList != null && infoList.size()>0){
								for(int i = 0;i<infoList.size();i++){
									SClassifiedtzInfoTab infoTab = infoList.get(i);
									classifiedtzInfoManager.removeObjectById(infoTab.getId());
								}
							}
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
