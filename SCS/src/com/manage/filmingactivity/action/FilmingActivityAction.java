package com.manage.filmingactivity.action;

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
import com.manage.filmingactivity.action.info.FilmingActivityPageInfo;
import com.manage.filmingactivity.model.FilmingActivity;
import com.manage.filmingactivity.service.FilmingActivityManager;
import com.manage.user.model.User;



/**
 * @see 本部拍摄活动审批表
 * @date May 9, 2016
 * @author dl
 */
public class FilmingActivityAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(FilmingActivityAction.class);	
	private FilmingActivity filmingActivity;
	private FilmingActivityPageInfo pageInfo;
	private List<FilmingActivity> filmingActivityList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private FilmingActivityManager filmingActivityManager=(FilmingActivityManager) SpringContextHolder.getBean(FilmingActivity.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String filmingActivityList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new FilmingActivityPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and shootdate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and shootdate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and shootdate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and shootdate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			filmingActivityList = filmingActivityManager.getList(sarchPageInfo);
				
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
	public String filmingActivityAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (filmingActivity != null && filmingActivity.getId() != null) {
				filmingActivity = (FilmingActivity) filmingActivityManager.getObjectById(filmingActivity.getId());
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
	public String filmingActivityDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] filmingActivityIds = ids.split(",");
				//判断非空
				if(filmingActivityIds != null && filmingActivityIds.length > 0){
					//遍历id
					for(String filmingActivityId:filmingActivityIds){
						if(filmingActivityId != null && !"".equals(filmingActivityId)){
							//根据id获得对象
							filmingActivity = (FilmingActivity)filmingActivityManager.getObjectById(Integer.parseInt(filmingActivityId));		
							//改变表中删除标识
							filmingActivityManager.removeObject(filmingActivity);
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
	public String filmingActivitySave()throws Exception{
		try {
			if (filmingActivity != null && filmingActivity.getVersion() == null ) {
				filmingActivity.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (filmingActivity != null) {
				filmingActivity.setUsername(user.getName());
			}
			if (filmingActivity != null) {
				filmingActivity.setUserid(user.getId());
			}
			filmingActivityManager.saveObject(filmingActivity);
			
			this.getRequest().setAttribute("title", "本部拍摄活动审批");
			this.getRequest().setAttribute("url", "/filmingactivity/filmingActivityList.action");
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
	public String filmingActivityInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(filmingActivity != null && filmingActivity.getId() != null){
				filmingActivity =  (FilmingActivity)filmingActivityManager.getObjectById(filmingActivity.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public FilmingActivity getFilmingActivity() {
		return filmingActivity;
	}


	public void setFilmingActivity(FilmingActivity filmingActivity) {
		this.filmingActivity = filmingActivity;
	}


	public List<FilmingActivity> getFilmingActivityList() {
		return filmingActivityList;
	}


	public void setFilmingActivityList(List<FilmingActivity> filmingActivityList) {
		this.filmingActivityList = filmingActivityList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public FilmingActivityPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(FilmingActivityPageInfo pageInfo) {
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

