package com.manage.changeinternet.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.changeinternet.action.info.ChangeinternetPageInfo;
import com.manage.changeinternet.model.SChangeinternetInfoTab;
import com.manage.changeinternet.model.SChangeinternetTab;
import com.manage.changeinternet.service.ChangeinternetInfoManager;
import com.manage.changeinternet.service.ChangeinternetManager;
import com.manage.user.model.User;

/**
 * 国际互联网计算机变更审批
 * @author GGM
 *
 */
public class ChangeinternetAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ChangeinternetAction.class);
	private ChangeinternetPageInfo pageInfo;
	private SChangeinternetTab changeinternet;
	private List<SChangeinternetTab> ciList;
	private List<SChangeinternetInfoTab> cinfoList;
	private String params;
	private String ids;
	
	private ChangeinternetManager changeinternetManager = (ChangeinternetManager) SpringContextHolder.getBean(SChangeinternetTab.class);
	private ChangeinternetInfoManager changeinternetInfoManager = (ChangeinternetInfoManager) SpringContextHolder.getBean(SChangeinternetInfoTab.class);
	/**
	 * @see 国际互联网计算机变更审批列表
	 * @author GGM
	 * @date May 23, 2016 09:39:49 AM
	 */
	public String changeinternetList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ChangeinternetPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			ciList = changeinternetManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看国际互联网计算机变更审批
	 * @author GGM
	 * @date May 23, 2016 09:58:02 AM
	 */
	public String changeinternetInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(changeinternet != null && changeinternet.getId() != null){
				changeinternet = (SChangeinternetTab) changeinternetManager.getObjectById(changeinternet.getId());
				
				cinfoList = changeinternetInfoManager.getCinfoList(changeinternet.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑国际互联网计算机变更审批
	 * @author GGM
	 * @date May 23, 2016 10:24:30 AM
	 */
	public String changeinternetEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(changeinternet != null && changeinternet.getId() != null){
				changeinternet = (SChangeinternetTab) changeinternetManager.getObjectById(changeinternet.getId());
				
				cinfoList = changeinternetInfoManager.getCinfoList(changeinternet.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存国际互联网计算机变更审批信息
	 * @author GGM
	 * @date May 23, 2016 10:43:10 AM
	 */
	public String saveChangeinternet()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if (changeinternet.getId() != null) {
				
				cinfoList = changeinternetInfoManager.getCinfoList(changeinternet.getId());
				if(cinfoList !=null && cinfoList.size()>0){
					for(int i=0;i<cinfoList.size();i++){
						SChangeinternetInfoTab cinfo = cinfoList.get(i);
						changeinternetInfoManager.removeObjectById(cinfo.getId());
					}
				}
			}
			if(changeinternet.getVersion() == null){
				changeinternet.setVersion(0);
			}
			if(changeinternet.getDepdate()==null){
				changeinternet.setDepdate(date);
			}
			if(changeinternet.getMdepdate()==null){
				changeinternet.setMdepdate(date);
			}
			
			changeinternet.setUserid(user.getId());
			changeinternet.setUsername(user.getRealname());
			
			changeinternetManager.saveObject(changeinternet);
		
			String[] licensenum = getRequest().getParameterValues("licensenum");
			String[] bcorgname = getRequest().getParameterValues("bcorgname");
			String[] bcsresponsible = getRequest().getParameterValues("bcsresponsible");
			String[] bcserialnum = getRequest().getParameterValues("bcserialnum");
			String[] haddress = getRequest().getParameterValues("haddress");
			String[] acorgname = getRequest().getParameterValues("acorgname");
			String[] acsresponsible = getRequest().getParameterValues("acsresponsible");
			String[] acserialnum = getRequest().getParameterValues("acserialnum");
			String[] achaddress = getRequest().getParameterValues("achaddress");
			String[] changereason = getRequest().getParameterValues("changereason");
			if(licensenum != null && licensenum.length>0){
				SChangeinternetInfoTab changeinfo = null;
				for(int i =0;i<licensenum.length;i++){
					if(licensenum[i] != null && !"".equals(licensenum[i])){
						changeinfo = new SChangeinternetInfoTab();
						changeinfo.setLicensenum(licensenum[i]);
						changeinfo.setBcorgname(bcorgname[i]);
						changeinfo.setBcsresponsible(bcsresponsible[i]);
						changeinfo.setBcserialnum(bcserialnum[i]);
						changeinfo.setHaddress(haddress[i]);
						changeinfo.setAcorgname(acorgname[i]);
						changeinfo.setAcsresponsible(acsresponsible[i]);
						changeinfo.setAcserialnum(acserialnum[i]);
						changeinfo.setAchaddress(achaddress[i]);
						changeinfo.setChangereason(changereason[i]);
						changeinfo.setCid(changeinternet.getId());
						changeinternetInfoManager.saveObject(changeinfo);
					}
				}
			}
			this.getRequest().setAttribute("title", "国际互联网计算机变更审批");
			this.getRequest().setAttribute("url", "/changeinternet/changeinternetList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除国际互联网计算机变更审批
	 * @author GGM
	 * @date May 23, 2016 11:30:04 AM
	 */
	public String delChangeinternet()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							changeinternet = (SChangeinternetTab) changeinternetManager.getObjectById(Integer.parseInt(pid));
							cinfoList = changeinternetInfoManager.getCinfoList(changeinternet.getId());
							if(cinfoList != null && cinfoList.size()>0){
								for(int i=0;i<cinfoList.size();i++){
									SChangeinternetInfoTab cinfo = cinfoList.get(i);
									changeinternetInfoManager.removeObjectById(cinfo.getId());
								}
							}
							changeinternetManager.removeObjectById(changeinternet.getId());
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

	public ChangeinternetPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ChangeinternetPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SChangeinternetTab getChangeinternet() {
		return changeinternet;
	}

	public void setChangeinternet(SChangeinternetTab changeinternet) {
		this.changeinternet = changeinternet;
	}

	public List<SChangeinternetTab> getCiList() {
		return ciList;
	}

	public void setCiList(List<SChangeinternetTab> ciList) {
		this.ciList = ciList;
	}

	public List<SChangeinternetInfoTab> getCinfoList() {
		return cinfoList;
	}

	public void setCinfoList(List<SChangeinternetInfoTab> cinfoList) {
		this.cinfoList = cinfoList;
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
