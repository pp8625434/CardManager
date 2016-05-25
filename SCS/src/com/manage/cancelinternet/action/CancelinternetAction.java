package com.manage.cancelinternet.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.cancelinternet.action.info.CancelinternetPageInfo;
import com.manage.cancelinternet.model.SCancelinternetTab;
import com.manage.cancelinternet.service.CancelinternetManager;
import com.manage.user.model.User;

/**
 * 国际互联网计算机注销审批
 * @author GGM
 *
 */
public class CancelinternetAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(CancelinternetAction.class);
	private CancelinternetPageInfo pageInfo;
	private SCancelinternetTab cancelinternet;
	private List<SCancelinternetTab> cList;
	private String params;
	private String ids;
	
	private CancelinternetManager cancelinternetManager = (CancelinternetManager) SpringContextHolder.getBean(SCancelinternetTab.class);
	
	/**
	 * @see 国际互联网计算机注销审批列表
	 * @author GGM
	 * @date May 19, 2016 01:20:10 PM
	 */
	public String cancelinternetList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new CancelinternetPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			cList = cancelinternetManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看国际互联网计算机注销审批
	 * @author GGM
	 * @date May 19, 2016 02:12:12 PM
	 */
	public String cancelinternetInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(cancelinternet != null && cancelinternet.getId() != null){
				cancelinternet = (SCancelinternetTab) cancelinternetManager.getObjectById(cancelinternet.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑国际互联网计算机注销审批
	 * @author GGM
	 * @date May 19, 2016 02:34:22 PM
	 */
	public String cancelinternetEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(cancelinternet != null && cancelinternet.getId() != null){
				cancelinternet = (SCancelinternetTab) cancelinternetManager.getObjectById(cancelinternet.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存国际互联网计算机注销审批
	 * @author GGM
	 * @date May 19, 2016 03:11:10 PM
	 */
	public String saveCancelinternet()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(cancelinternet.getVersion() == null){
				cancelinternet.setVersion(0);
			}
			if(cancelinternet.getDepartmentdate() == null){
				cancelinternet.setDepartmentdate(date);
			}
			if(cancelinternet.getComdepartdate()==null){
				cancelinternet.setComdepartdate(date);
			}
			cancelinternet.setUserid(user.getId());
			cancelinternet.setUsername(user.getRealname());
			
			cancelinternetManager.saveObject(cancelinternet);
			
			this.getRequest().setAttribute("title", "国际互联网计算机注销审批");
			this.getRequest().setAttribute("url", "/cancelinternet/cancelinternetList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除国际互联网计算机注销审批
	 * @author GGM
	 * @date May 19, 2016 03:45:10 PM
	 */
	public String delCancelinternet()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							cancelinternet = (SCancelinternetTab) cancelinternetManager.getObjectById(Integer.parseInt(pid));
							cancelinternetManager.removeObjectById(cancelinternet.getId());
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

	public CancelinternetPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(CancelinternetPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SCancelinternetTab getCancelinternet() {
		return cancelinternet;
	}

	public void setCancelinternet(SCancelinternetTab cancelinternet) {
		this.cancelinternet = cancelinternet;
	}

	public List<SCancelinternetTab> getCList() {
		return cList;
	}

	public void setCList(List<SCancelinternetTab> list) {
		cList = list;
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
