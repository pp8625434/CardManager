package com.manage.quartersubsidies.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.quartersubsidies.action.info.QuartersubsidiesPageInfo;
import com.manage.quartersubsidies.model.SQuartersubsidiesInfoTab;
import com.manage.quartersubsidies.model.SQuartersubsidiesTab;
import com.manage.quartersubsidies.service.QuartersubsidiesInfoManager;
import com.manage.quartersubsidies.service.QuartersubsidiesManager;
import com.manage.user.model.User;

/**
 * 季度保密补贴考核发放
 * @author GGM
 *
 */
public class QuartersubsidiesAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(QuartersubsidiesAction.class);
	private QuartersubsidiesPageInfo pageInfo;
	private SQuartersubsidiesTab quartersubsidies;
	private List<SQuartersubsidiesTab> quarterList;
	private List<SQuartersubsidiesInfoTab> infoList;
	private String params;
	private String ids;
	private Double totalSf;
	
	private QuartersubsidiesManager quartersubsidiesManager = (QuartersubsidiesManager) SpringContextHolder.getBean(SQuartersubsidiesTab.class);
	private QuartersubsidiesInfoManager quartersubsidiesInfoManager = (QuartersubsidiesInfoManager)SpringContextHolder.getBean(SQuartersubsidiesInfoTab.class);
	/**
	 * @see 季度保密补贴考核发放列表
	 * @author GGM
	 * @date May 26, 2016 09:39:49 AM
	 */
	public String quartersubsidiesList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new QuartersubsidiesPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			quarterList = quartersubsidiesManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看季度保密补贴考核发放
	 * @author GGM
	 * @date May 26, 2016 09:58:02 AM
	 */
	public String quartersubsidiesInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(quartersubsidies != null && quartersubsidies.getId() != null){
				quartersubsidies = (SQuartersubsidiesTab) quartersubsidiesManager.getObjectById(quartersubsidies.getId());
				
				infoList = quartersubsidiesInfoManager.getInfoList(quartersubsidies.getId());
				totalSf = 0.0;
				if(infoList != null && infoList.size()>0){
					for(int i =0;i<infoList.size();i++){
						totalSf += infoList.get(i).getSfmoney();
					}
					
					quartersubsidies.setSftotalamount(totalSf);
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑季度保密补贴考核发放
	 * @author GGM
	 * @date May 26, 2016 10:24:30 AM
	 */
	public String quartersubsidiesEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(quartersubsidies != null && quartersubsidies.getId() != null){
				quartersubsidies = (SQuartersubsidiesTab) quartersubsidiesManager.getObjectById(quartersubsidies.getId());
				
				infoList = quartersubsidiesInfoManager.getInfoList(quartersubsidies.getId());
				totalSf = 0.0;
				if(infoList != null && infoList.size()>0){
					for(int i =0;i<infoList.size();i++){
						totalSf += infoList.get(i).getSfmoney();
					}
					
					quartersubsidies.setSftotalamount(totalSf);
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存季度保密补贴考核发放信息
	 * @author GGM
	 * @date May 26, 2016 10:43:10 AM
	 */
	public String saveQuartersubsidies()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if (quartersubsidies.getId() != null) {
				
				infoList = quartersubsidiesInfoManager.getInfoList(quartersubsidies.getId());
				if(infoList !=null && infoList.size()>0){
					for(int i=0;i<infoList.size();i++){
						SQuartersubsidiesInfoTab info = infoList.get(i);
						quartersubsidiesInfoManager.removeObjectById(info.getId());
					}
				}
			}
			if(quartersubsidies.getVersion() == null){
				quartersubsidies.setVersion(0);
			}
			if(quartersubsidies.getDepartmentdate()==null){
				quartersubsidies.setDepartmentdate(date);
			}
			if(quartersubsidies.getSofficedate()==null){
				quartersubsidies.setSofficedate(date);
			}
			quartersubsidies.setUserid(user.getId());
			quartersubsidies.setUsername(user.getRealname());
			
			quartersubsidiesManager.saveObject(quartersubsidies);
		
			String[] name = getRequest().getParameterValues("name");
			String[] classification = getRequest().getParameterValues("classification");
			String[] yfmoney = getRequest().getParameterValues("yfmoney");
			String[] brmoney = getRequest().getParameterValues("brmoney");
			String[] sfmoney = getRequest().getParameterValues("sfmoney");
			String[] moneybdreason = getRequest().getParameterValues("moneybdreason");
			String[] remark = getRequest().getParameterValues("remark");
			if(name != null && name.length>0){
				
				SQuartersubsidiesInfoTab info = null;
				for(int i =0;i<name.length;i++){
					if(name[i] != null && !"".equals(name[i])){
						info = new SQuartersubsidiesInfoTab();
						String isperform = getParameter("isperform"+(i+1));
						info.setName(name[i]);
						info.setClassification(classification[i]);
						info.setYfmoney(Double.valueOf(yfmoney[i]));
						info.setBrmoney(Double.valueOf(brmoney[i]));
						info.setSfmoney(Double.valueOf(sfmoney[i]));
						info.setMoneybdreason(moneybdreason[i]);
						info.setIsperform(Integer.parseInt(isperform));
						info.setRemark(remark[i]);
						info.setQid(quartersubsidies.getId());
						quartersubsidiesInfoManager.saveObject(info);
					}
				}
			}
			this.getRequest().setAttribute("title", "季度保密补贴考核发放");
			this.getRequest().setAttribute("url", "/quartersubsidies/quartersubsidiesList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除季度保密补贴考核发放
	 * @author GGM
	 * @date May 26, 2016 11:30:04 AM
	 */
	public String delQuartersubsidies()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							quartersubsidies = (SQuartersubsidiesTab) quartersubsidiesManager.getObjectById(Integer.parseInt(pid));
							infoList = quartersubsidiesInfoManager.getInfoList(quartersubsidies.getId());
							if(infoList != null && infoList.size()>0){
								for(int i=0;i<infoList.size();i++){
									SQuartersubsidiesInfoTab info = infoList.get(i);
									quartersubsidiesInfoManager.removeObjectById(info.getId());
								}
							}
							quartersubsidiesManager.removeObjectById(quartersubsidies.getId());
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

	public QuartersubsidiesPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(QuartersubsidiesPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SQuartersubsidiesTab getQuartersubsidies() {
		return quartersubsidies;
	}

	public void setQuartersubsidies(SQuartersubsidiesTab quartersubsidies) {
		this.quartersubsidies = quartersubsidies;
	}

	public List<SQuartersubsidiesTab> getQuarterList() {
		return quarterList;
	}

	public void setQuarterList(List<SQuartersubsidiesTab> quarterList) {
		this.quarterList = quarterList;
	}

	public List<SQuartersubsidiesInfoTab> getInfoList() {
		return infoList;
	}

	public void setInfoList(List<SQuartersubsidiesInfoTab> infoList) {
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

	public Double getTotalSf() {
		return totalSf;
	}

	public void setTotalSf(Double totalSf) {
		this.totalSf = totalSf;
	}

	
}
