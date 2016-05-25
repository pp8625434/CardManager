package com.manage.interview.action;

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
import com.manage.interview.action.info.InterviewPageInfo;
import com.manage.interview.model.Interview;
import com.manage.interview.service.InterviewManager;
import com.manage.user.model.User;



/**
 * @see 本部接受采访审批表
 * @date May 9, 2016
 * @author dl
 */
public class InterviewAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(InterviewAction.class);	
	private Interview interview;
	private InterviewPageInfo pageInfo;
	private List<Interview> interviewList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private InterviewManager interviewManager=(InterviewManager) SpringContextHolder.getBean(Interview.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String interviewList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new InterviewPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and interviewdate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and interviewdate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and interviewdate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and interviewdate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			interviewList = interviewManager.getList(sarchPageInfo);
				
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
	public String interviewAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (interview != null && interview.getId() != null) {
				interview = (Interview) interviewManager.getObjectById(interview.getId());
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
	public String interviewDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] interviewIds = ids.split(",");
				//判断非空
				if(interviewIds != null && interviewIds.length > 0){
					//遍历id
					for(String interviewId:interviewIds){
						if(interviewId != null && !"".equals(interviewId)){
							//根据id获得对象
							interview = (Interview)interviewManager.getObjectById(Integer.parseInt(interviewId));		
							//改变表中删除标识
							interviewManager.removeObject(interview);
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
	public String interviewSave()throws Exception{
		try {
			if (interview != null && interview.getVersion() == null ) {
				interview.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (interview != null) {
				interview.setUsername(user.getName());
			}
			if (interview != null) {
				interview.setUserid(user.getId());
			}
			interviewManager.saveObject(interview);
			
			this.getRequest().setAttribute("title", "本部接受采访审批");
			this.getRequest().setAttribute("url", "/interview/interviewList.action");
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
	public String interviewInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(interview != null && interview.getId() != null){
				interview =  (Interview)interviewManager.getObjectById(interview.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public Interview getInterview() {
		return interview;
	}


	public void setInterview(Interview interview) {
		this.interview = interview;
	}


	public List<Interview> getInterviewList() {
		return interviewList;
	}


	public void setInterviewList(List<Interview> interviewList) {
		this.interviewList = interviewList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public InterviewPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(InterviewPageInfo pageInfo) {
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

