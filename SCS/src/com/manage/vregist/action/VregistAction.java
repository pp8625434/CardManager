package com.manage.vregist.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;

import com.manage.user.model.User;
import com.manage.vregist.action.info.VregistPageInfo;
import com.manage.vregist.model.SVregistInfoTab;
import com.manage.vregist.model.SVregistTab;
import com.manage.vregist.service.VregistInfoManager;
import com.manage.vregist.service.VregistManager;

/**
 * 来访人员登记簿（样本）
 * @author GGM
 *
 */
public class VregistAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(VregistAction.class);
	private VregistPageInfo pageInfo;
	private SVregistTab vregist;
	private List<SVregistTab> vrList;
	private List<SVregistInfoTab> infoList;
	private String params;
	private String ids;
	
	private VregistManager vregistManager = (VregistManager) SpringContextHolder.getBean(SVregistTab.class);
	private VregistInfoManager vregistInfoManager = (VregistInfoManager) SpringContextHolder.getBean(SVregistInfoTab.class);
	/**
	 * @see 来访人员登记簿（样本）列表
	 * @author GGM
	 * @date May 24, 2016 02:12:49 PM
	 */
	public String vregistList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new VregistPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			vrList = vregistManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看来访人员登记簿（样本）
	 * @author GGM
	 * @date May 24, 2016 02:23:29 PM
	 */
	public String vregistInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(vregist != null && vregist.getId() != null){
				vregist = (SVregistTab) vregistManager.getObjectById(vregist.getId());
				
				infoList = vregistInfoManager.getInfoList(vregist.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑来访人员登记簿（样本）
	 * @author GGM
	 * @date May 24, 2016 02:46:22 PM
	 */
	public String vregistEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(vregist != null && vregist.getId() != null){
				vregist = (SVregistTab) vregistManager.getObjectById(vregist.getId());
				
				infoList = vregistInfoManager.getInfoList(vregist.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存来访人员登记簿（样本）信息
	 * @author GGM
	 * @date May 24, 2016 03:01:21 PM
	 */
	public String saveVregist()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			if (vregist.getId() != null) {
				
				infoList = vregistInfoManager.getInfoList(vregist.getId());
				if(infoList !=null && infoList.size()>0){
					for(int i=0;i<infoList.size();i++){
						SVregistInfoTab info = infoList.get(i);
						vregistInfoManager.removeObjectById(info.getId());
					}
				}
			}
			if(vregist.getVersion() == null){
				vregist.setVersion(0);
			}
			vregist.setUserid(user.getId());
			vregist.setUsername(user.getRealname());
			
			vregistManager.saveObject(vregist);
		
			String[] vname = getRequest().getParameterValues("vname");
			String[] vdate = getRequest().getParameterValues("vdate");
			String[] visitorunit = getRequest().getParameterValues("visitorunit");
			String[] vpurpose = getRequest().getParameterValues("vpurpose");
			String[] acofficials = getRequest().getParameterValues("acofficials");
			String[] vstartdate = getRequest().getParameterValues("vstartdate");
			String[] venddate = getRequest().getParameterValues("venddate");
			String[] note = getRequest().getParameterValues("note");
			
			SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat formatDate1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			if(vname != null && vname.length>0){
				SVregistInfoTab vinfo = null;
				for(int i =0;i<vname.length;i++){
					if(vname[i] != null && !"".equals(vname[i])){
						vinfo = new SVregistInfoTab();
						vinfo.setVname(vname[i]);
						vinfo.setVdate(formatDate.parse(vdate[i]));
						vinfo.setVisitorunit(visitorunit[i]);
						vinfo.setVpurpose(vpurpose[i]);
						vinfo.setAcofficials(acofficials[i]);
						vinfo.setVstartdate(formatDate1.parse(vstartdate[i]));
						vinfo.setVenddate(formatDate1.parse(venddate[i]));
						vinfo.setNote(note[i]);
						vinfo.setVid(vregist.getId());
						vregistInfoManager.saveObject(vinfo);
					}
				}
			}
			this.getRequest().setAttribute("title", "来访人员登记簿（样本）");
			this.getRequest().setAttribute("url", "/vregist/vregistList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	
	/**
	 * @see 删除来访人员登记簿（样本）
	 * @author GGM
	 * @date May 24, 2016 03:42:04 PM
	 */
	public String delVregist()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							vregist = (SVregistTab) vregistManager.getObjectById(Integer.parseInt(pid));
							infoList = vregistInfoManager.getInfoList(vregist.getId());
							if(infoList != null && infoList.size()>0){
								for(int i=0;i<infoList.size();i++){
									SVregistInfoTab vinfo = infoList.get(i);
									vregistInfoManager.removeObjectById(vinfo.getId());
								}
							}
							vregistManager.removeObjectById(vregist.getId());
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

	public VregistPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(VregistPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SVregistTab getVregist() {
		return vregist;
	}

	public void setVregist(SVregistTab vregist) {
		this.vregist = vregist;
	}

	public List<SVregistTab> getVrList() {
		return vrList;
	}

	public void setVrList(List<SVregistTab> vrList) {
		this.vrList = vrList;
	}

	public List<SVregistInfoTab> getInfoList() {
		return infoList;
	}

	public void setInfoList(List<SVregistInfoTab> infoList) {
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
