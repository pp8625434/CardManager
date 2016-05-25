package com.manage.meetsecrecy.action;

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
import com.manage.meetsecrecy.action.info.MeetSecrecyPageInfo;
import com.manage.meetsecrecy.model.MeetSecrecy;
import com.manage.meetsecrecy.service.MeetSecrecyManager;
import com.manage.user.model.User;



/**
 * @see 本部涉密会议保密管理审批表
 * @date May 9, 2016
 * @author dl
 */
public class MeetSecrecyAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(MeetSecrecyAction.class);	
	private MeetSecrecy meetSecrecy;
	private MeetSecrecyPageInfo pageInfo;
	private List<MeetSecrecy> meetSecrecyList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private MeetSecrecyManager meetSecrecyManager=(MeetSecrecyManager) SpringContextHolder.getBean(MeetSecrecy.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String meetSecrecyList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new MeetSecrecyPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetdate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and meetdate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and meetdate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetdate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			meetSecrecyList = meetSecrecyManager.getList(sarchPageInfo);
				
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
	public String meetSecrecyAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (meetSecrecy != null && meetSecrecy.getId() != null) {
				meetSecrecy = (MeetSecrecy) meetSecrecyManager.getObjectById(meetSecrecy.getId());
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
	public String meetSecrecyDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] meetSecrecyIds = ids.split(",");
				//判断非空
				if(meetSecrecyIds != null && meetSecrecyIds.length > 0){
					//遍历id
					for(String meetSecrecyId:meetSecrecyIds){
						if(meetSecrecyId != null && !"".equals(meetSecrecyId)){
							//根据id获得对象
							meetSecrecy = (MeetSecrecy)meetSecrecyManager.getObjectById(Integer.parseInt(meetSecrecyId));		
							//改变表中删除标识
							meetSecrecyManager.removeObject(meetSecrecy);
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
	public String meetSecrecySave()throws Exception{
		try {
			if (meetSecrecy != null && meetSecrecy.getVersion() == null ) {
				meetSecrecy.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (meetSecrecy != null) {
				meetSecrecy.setUsername(user.getName());
			}
			if (meetSecrecy != null) {
				meetSecrecy.setUserid(user.getId());
			}
			meetSecrecyManager.saveObject(meetSecrecy);
			
			this.getRequest().setAttribute("title", "本部涉密会议保密管理审批");
			this.getRequest().setAttribute("url", "/meetsecrecy/meetSecrecyList.action");
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
	public String meetSecrecyInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(meetSecrecy != null && meetSecrecy.getId() != null){
				meetSecrecy =  (MeetSecrecy)meetSecrecyManager.getObjectById(meetSecrecy.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public MeetSecrecy getMeetSecrecy() {
		return meetSecrecy;
	}


	public void setMeetSecrecy(MeetSecrecy meetSecrecy) {
		this.meetSecrecy = meetSecrecy;
	}


	public List<MeetSecrecy> getMeetSecrecyList() {
		return meetSecrecyList;
	}


	public void setMeetSecrecyList(List<MeetSecrecy> meetSecrecyList) {
		this.meetSecrecyList = meetSecrecyList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public MeetSecrecyPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(MeetSecrecyPageInfo pageInfo) {
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

