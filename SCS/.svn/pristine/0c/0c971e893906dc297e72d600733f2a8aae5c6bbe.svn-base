package com.manage.informationpublish.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.informationpublish.action.info.InformationPublishPageInfo;
import com.manage.informationpublish.model.InformationPublish;
import com.manage.informationpublish.service.InformationPublishManager;
import com.manage.user.model.User;



/**
 * @see 互联网信息发布审批表
 * @date May 9, 2016
 * @author dl
 */
public class InformationPublishAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(InformationPublishAction.class);	
	private InformationPublish informationPublish;
	private InformationPublishPageInfo pageInfo;
	private List<InformationPublish> informationPublishList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private InformationPublishManager informationPublishManager=(InformationPublishManager) SpringContextHolder.getBean(InformationPublish.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String informationPublishList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new InformationPublishPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and applydate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and applydate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and applydate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and applydate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			informationPublishList = informationPublishManager.getList(sarchPageInfo);
				
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 编辑新增
	 */
	public String informationPublishAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (informationPublish != null && informationPublish.getId() != null) {
				informationPublish = (InformationPublish) informationPublishManager.getObjectById(informationPublish.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date 
	 * @param 
	 * @return
	 * @see 删除
	 */
	public String informationPublishDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] informationPublishIds = ids.split(",");
				//判断非空
				if(informationPublishIds != null && informationPublishIds.length > 0){
					//遍历id
					for(String informationPublishId:informationPublishIds){
						if(informationPublishId != null && !"".equals(informationPublishId)){
							//根据id获得对象
							informationPublish = (InformationPublish)informationPublishManager.getObjectById(Integer.parseInt(informationPublishId));		
							//改变表中删除标识
							informationPublishManager.removeObject(informationPublish);
						}	
						
					}
				}
			}		
		} catch (Exception e) {
			logger.error("发生错误：", e);
		}
		
		return SUCCESS;
	}

	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 保存
	 */
	public String informationPublishSave()throws Exception{
		try {
			if (informationPublish != null && informationPublish.getVersion() == null ) {
				informationPublish.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (informationPublish != null) {
				informationPublish.setFirstperson(user.getName());
			}
			if (informationPublish != null) {
				informationPublish.setFirstpid(user.getId());
			}
			if (informationPublish != null) {
				informationPublish.setFirstsubdate(new Date());
			}
			informationPublishManager.saveObject(informationPublish);
			
			this.getRequest().setAttribute("title", "互联网信息发布审批");
			this.getRequest().setAttribute("url", "/informationpublish/informationPublishList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 详情
	 */
	public String informationPublishInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(informationPublish != null && informationPublish.getId() != null){
				informationPublish =  (InformationPublish)informationPublishManager.getObjectById(informationPublish.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public InformationPublish getInformationPublish() {
		return informationPublish;
	}


	public void setInformationPublish(InformationPublish informationPublish) {
		this.informationPublish = informationPublish;
	}


	public List<InformationPublish> getInformationPublishList() {
		return informationPublishList;
	}


	public void setInformationPublishList(List<InformationPublish> informationPublishList) {
		this.informationPublishList = informationPublishList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public InformationPublishPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(InformationPublishPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	
}

