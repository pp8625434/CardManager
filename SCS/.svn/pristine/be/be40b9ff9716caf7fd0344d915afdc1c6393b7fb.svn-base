package com.manage.applykeypart.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.applykeypart.action.info.ApplykeypartPageInfo;
import com.manage.applykeypart.model.SApplykeypartTab;
import com.manage.applykeypart.model.SMigrantsioTab;
import com.manage.applykeypart.service.ApplykeypartManager;
import com.manage.applykeypart.service.MigrantsioManager;
import com.manage.user.model.User;

/**
 * 外来人员进入保密要害部门、部位申请
 * @author GGM
 *
 */
public class ApplykeypartAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ApplykeypartAction.class);
	private ApplykeypartPageInfo pageInfo;
	private SApplykeypartTab applykeypart;
	private List<SApplykeypartTab> applyList;
	private List<SMigrantsioTab> mlist;
	private String params;
	private String ids;
	
	private ApplykeypartManager applykeypartManager = (ApplykeypartManager) SpringContextHolder.getBean(SApplykeypartTab.class);
	private MigrantsioManager migrantsioManager = (MigrantsioManager)SpringContextHolder.getBean(SMigrantsioTab.class);
	/**
	 * @see 外来人员进入保密要害部门、部位申请列表
	 * @author GGM
	 * @date May 27, 2016 09:39:49 AM
	 */
	public String applykeypartList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ApplykeypartPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			applyList = applykeypartManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看外来人员进入保密要害部门、部位申请
	 * @author GGM
	 * @date May 27, 2016 09:58:02 AM
	 */
	public String applykeypartInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(applykeypart != null && applykeypart.getId() != null){
				applykeypart = (SApplykeypartTab) applykeypartManager.getObjectById(applykeypart.getId());
				
				mlist = migrantsioManager.getMList(applykeypart.getId());
				int rs = 0;
				if(mlist !=null && mlist.size()>0){
					rs = mlist.size();
				}
				applykeypart.setIototal(rs);
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑外来人员进入保密要害部门、部位申请
	 * @author GGM
	 * @date May 27, 2016 10:24:30 AM
	 */
	public String applykeypartEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(applykeypart != null && applykeypart.getId() != null){
				applykeypart = (SApplykeypartTab) applykeypartManager.getObjectById(applykeypart.getId());
				
				mlist = migrantsioManager.getMList(applykeypart.getId());
				int rs = 0;
				if(mlist !=null && mlist.size()>0){
					rs = mlist.size();
				}
				applykeypart.setIototal(rs);
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存外来人员进入保密要害部门、部位申请信息
	 * @author GGM
	 * @date May 27, 2016 10:43:10 AM
	 */
	public String saveApplykeypart()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if (applykeypart.getId() != null) {
				
				mlist = migrantsioManager.getMList(applykeypart.getId());
				if(mlist !=null && mlist.size()>0){
					for(int i=0;i<mlist.size();i++){
						SMigrantsioTab info = mlist.get(i);
						migrantsioManager.removeObjectById(info.getId());
					}
				}
			}
			if(applykeypart.getVersion() == null){
				applykeypart.setVersion(0);
			}
			if(applykeypart.getDepdate()==null){
				applykeypart.setDepdate(date);
			}
			if(applykeypart.getPartheaddate()==null){
				applykeypart.setPartheaddate(date);
			}
			if(applykeypart.getAcofficialsdate()==null){
				applykeypart.setAcofficialsdate(date);
			}
			applykeypart.setUserid(user.getId());
			applykeypart.setUsername(user.getRealname());
			
			applykeypartManager.saveObject(applykeypart);
		
			String[] name = getRequest().getParameterValues("name");
			String[] jobs = getRequest().getParameterValues("jobs");
			String[] workunit = getRequest().getParameterValues("workunit");
			if(name != null && name.length>0){
				SMigrantsioTab sm = null;
				for(int i =0;i<name.length;i++){
					if(name[i] != null && !"".equals(name[i])){
						sm = new SMigrantsioTab();
						sm.setName(name[i]);
						sm.setJobs(jobs[i]);
						sm.setWorkunit(workunit[i]);
						sm.setAid(applykeypart.getId());
						migrantsioManager.saveObject(sm);
					}
				}
			}
			this.getRequest().setAttribute("title", "外来人员进入保密要害部门、部位申请");
			this.getRequest().setAttribute("url", "/applykeypart/applykeypartList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除外来人员进入保密要害部门、部位申请
	 * @author GGM
	 * @date May 27, 2016 11:30:04 AM
	 */
	public String delApplykeypart()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							applykeypart = (SApplykeypartTab) applykeypartManager.getObjectById(Integer.parseInt(pid));
							mlist = migrantsioManager.getMList(applykeypart.getId());
							if(mlist != null && mlist.size()>0){
								for(int i=0;i<mlist.size();i++){
									SMigrantsioTab sm = mlist.get(i);
									migrantsioManager.removeObjectById(sm.getId());
								}
							}
							applykeypartManager.removeObjectById(applykeypart.getId());
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

	public ApplykeypartPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ApplykeypartPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SApplykeypartTab getApplykeypart() {
		return applykeypart;
	}

	public void setApplykeypart(SApplykeypartTab applykeypart) {
		this.applykeypart = applykeypart;
	}

	public List<SApplykeypartTab> getApplyList() {
		return applyList;
	}

	public void setApplyList(List<SApplykeypartTab> applyList) {
		this.applyList = applyList;
	}

	public List<SMigrantsioTab> getMlist() {
		return mlist;
	}

	public void setMlist(List<SMigrantsioTab> list) {
		mlist = list;
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
