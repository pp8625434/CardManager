package com.manage.ferrycentre.action;

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
import com.manage.ferrycentre.action.info.FerryCentrePageInfo;
import com.manage.ferrycentre.model.FerryCentre;
import com.manage.ferrycentre.service.FerryCentreManager;
import com.manage.user.model.User;



/**
 * @see 建立摆渡中心申请表
 * @date May 9, 2016
 * @author dl
 */
public class FerryCentreAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(FerryCentreAction.class);	
	private FerryCentre ferryCentre;
	private FerryCentrePageInfo pageInfo;
	private List<FerryCentre> ferryCentreList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private FerryCentreManager ferryCentreManager=(FerryCentreManager) SpringContextHolder.getBean(FerryCentre.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String ferryCentreList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new FerryCentrePageInfo() : pageInfo;
			
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
			ferryCentreList = ferryCentreManager.getList(sarchPageInfo);
				
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
	public String ferryCentreAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (ferryCentre != null && ferryCentre.getId() != null) {
				ferryCentre = (FerryCentre) ferryCentreManager.getObjectById(ferryCentre.getId());
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
	public String ferryCentreDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] ferryCentreIds = ids.split(",");
				//判断非空
				if(ferryCentreIds != null && ferryCentreIds.length > 0){
					//遍历id
					for(String ferryCentreId:ferryCentreIds){
						if(ferryCentreId != null && !"".equals(ferryCentreId)){
							//根据id获得对象
							ferryCentre = (FerryCentre)ferryCentreManager.getObjectById(Integer.parseInt(ferryCentreId));		
							//改变表中删除标识
							ferryCentreManager.removeObject(ferryCentre);
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
	public String ferryCentreSave()throws Exception{
		try {
			if (ferryCentre != null && ferryCentre.getVersion() == null ) {
				ferryCentre.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (ferryCentre != null) {
				ferryCentre.setFirstperson(user.getName());
			}
			if (ferryCentre != null) {
				ferryCentre.setFirstpid(user.getId());
			}
			if (ferryCentre != null) {
				ferryCentre.setFirstsubdate(new Date());
			}
			ferryCentreManager.saveObject(ferryCentre);
			
			this.getRequest().setAttribute("title", "建立摆渡中心申请");
			this.getRequest().setAttribute("url", "/ferrycentre/ferryCentreList.action");
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
	public String ferryCentreInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(ferryCentre != null && ferryCentre.getId() != null){
				ferryCentre =  (FerryCentre)ferryCentreManager.getObjectById(ferryCentre.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public FerryCentre getFerryCentre() {
		return ferryCentre;
	}


	public void setFerryCentre(FerryCentre ferryCentre) {
		this.ferryCentre = ferryCentre;
	}


	public List<FerryCentre> getFerryCentreList() {
		return ferryCentreList;
	}


	public void setFerryCentreList(List<FerryCentre> ferryCentreList) {
		this.ferryCentreList = ferryCentreList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public FerryCentrePageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(FerryCentrePageInfo pageInfo) {
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

