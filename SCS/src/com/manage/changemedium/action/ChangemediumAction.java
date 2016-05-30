package com.manage.changemedium.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.changemedium.action.info.ChangemediumPageInfo;
import com.manage.changemedium.model.SChangemediumInfoTab;
import com.manage.changemedium.model.SChangemediumTab;
import com.manage.changemedium.service.ChangemediumInfoManager;
import com.manage.changemedium.service.ChangemediumManager;
import com.manage.user.model.User;

/**
 * 存储介质变更审批
 * @author GGM
 *
 */
public class ChangemediumAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ChangemediumAction.class);
	private ChangemediumPageInfo pageInfo;
	private SChangemediumTab changemedium;
	private List<SChangemediumTab> cmList;
	private List<SChangemediumInfoTab> cminfoList;
	private String params;
	private String ids;
	
	private ChangemediumManager changemediumManager = (ChangemediumManager) SpringContextHolder.getBean(SChangemediumTab.class);
	private ChangemediumInfoManager changemediumInfoManager = (ChangemediumInfoManager) SpringContextHolder.getBean(SChangemediumInfoTab.class);
	/**
	 * @see 存储介质变更审批列表
	 * @author GGM
	 * @date May 24, 2016 09:10:49 AM
	 */
	public String changemediumList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ChangemediumPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			cmList = changemediumManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看存储介质变更审批
	 * @author GGM
	 * @date May 24, 2016 09:26:02 AM
	 */
	public String changemediumInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(changemedium != null && changemedium.getId() != null){
				changemedium = (SChangemediumTab) changemediumManager.getObjectById(changemedium.getId());
				
				cminfoList = changemediumInfoManager.getCminfoList(changemedium.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑存储介质变更审批
	 * @author GGM
	 * @date May 24, 2016 09:39:30 AM
	 */
	public String changemediumEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(changemedium != null && changemedium.getId() != null){
				changemedium = (SChangemediumTab) changemediumManager.getObjectById(changemedium.getId());
				
				cminfoList = changemediumInfoManager.getCminfoList(changemedium.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存存储介质变更审批信息
	 * @author GGM
	 * @date May 24, 2016 10:02:10 AM
	 */
	public String saveChangemedium()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if (changemedium.getId() != null) {
				
				cminfoList = changemediumInfoManager.getCminfoList(changemedium.getId());
				if(cminfoList !=null && cminfoList.size()>0){
					for(int i=0;i<cminfoList.size();i++){
						SChangemediumInfoTab cminfo = cminfoList.get(i);
						changemediumInfoManager.removeObjectById(cminfo.getId());
					}
				}
			}
			if(changemedium.getVersion() == null){
				changemedium.setVersion(0);
			}
			if(changemedium.getDepartdate()==null){
				changemedium.setDepartdate(date);
			}
			if(changemedium.getOfficedate()==null){
				changemedium.setOfficedate(date);
			}
			
			changemedium.setUserid(user.getId());
			changemedium.setUsername(user.getRealname());
			
			changemediumManager.saveObject(changemedium);
		
			String[] mtype = getRequest().getParameterValues("mtype");
			String[] specifications = getRequest().getParameterValues("specifications");
			String[] bcorgname = getRequest().getParameterValues("bcorgname");
			String[] bcdepository = getRequest().getParameterValues("bcdepository");
			String[] bcscode = getRequest().getParameterValues("bcscode");
			String[] acorgname = getRequest().getParameterValues("acorgname");
			String[] acdepository = getRequest().getParameterValues("acdepository");
			String[] acscode = getRequest().getParameterValues("acscode");
			String[] changereason = getRequest().getParameterValues("changereason");
			if(specifications != null && specifications.length>0){
				SChangemediumInfoTab changeinfo = null;
				for(int i =0;i<specifications.length;i++){
					if(specifications[i] != null && !"".equals(specifications[i])){
						String bcclassification = getRequest().getParameter("bcclassification"+(i+1));
						String acclassification = getRequest().getParameter("acclassification"+(i+1));
						changeinfo = new SChangemediumInfoTab();
						changeinfo.setMtype(mtype[i]);
						changeinfo.setSpecifications(specifications[i]);
						changeinfo.setBcorgname(bcorgname[i]);
						changeinfo.setBcdepository(bcdepository[i]);
						changeinfo.setBcscode(bcscode[i]);
						changeinfo.setAcorgname(acorgname[i]);
						changeinfo.setAcdepository(acdepository[i]);
						changeinfo.setAcscode(acscode[i]);
						changeinfo.setChangereason(changereason[i]);
						changeinfo.setCid(changemedium.getId());
						changeinfo.setBcclassification(bcclassification);
						changeinfo.setAcclassification(acclassification);
						changemediumInfoManager.saveObject(changeinfo);
					}
				}
			}
			this.getRequest().setAttribute("title", "存储介质变更审批");
			this.getRequest().setAttribute("url", "/changemedium/changemediumList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除存储介质变更审批
	 * @author GGM
	 * @date May 24, 2016 10:45:04 AM
	 */
	public String delChangemedium()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							changemedium = (SChangemediumTab) changemediumManager.getObjectById(Integer.parseInt(pid));
							cminfoList = changemediumInfoManager.getCminfoList(changemedium.getId());
							if(cminfoList != null && cminfoList.size()>0){
								for(int i=0;i<cminfoList.size();i++){
									SChangemediumInfoTab cminfo = cminfoList.get(i);
									changemediumInfoManager.removeObjectById(cminfo.getId());
								}
							}
							changemediumManager.removeObjectById(changemedium.getId());
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

	public ChangemediumPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ChangemediumPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SChangemediumTab getChangemedium() {
		return changemedium;
	}

	public void setChangemedium(SChangemediumTab changemedium) {
		this.changemedium = changemedium;
	}

	public List<SChangemediumTab> getCmList() {
		return cmList;
	}

	public void setCmList(List<SChangemediumTab> cmList) {
		this.cmList = cmList;
	}

	public List<SChangemediumInfoTab> getCminfoList() {
		return cminfoList;
	}

	public void setCminfoList(List<SChangemediumInfoTab> cminfoList) {
		this.cminfoList = cminfoList;
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
