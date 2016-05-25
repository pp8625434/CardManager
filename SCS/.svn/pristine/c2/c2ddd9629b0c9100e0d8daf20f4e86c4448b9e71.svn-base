package com.manage.videomeeting.action;

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
import com.manage.user.model.User;
import com.manage.videomeeting.action.info.VideoMeetingPageInfo;
import com.manage.videomeeting.model.VideoMeeting;
import com.manage.videomeeting.service.VideoMeetingManager;



/**
 * @see 视频会议系统使用申请表
 * @date May 9, 2016
 * @author dl
 */
public class VideoMeetingAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(VideoMeetingAction.class);	
	private VideoMeeting videoMeeting;
	private VideoMeetingPageInfo pageInfo;
	private List<VideoMeeting> videoMeetingList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private VideoMeetingManager videoMeetingManager=(VideoMeetingManager) SpringContextHolder.getBean(VideoMeeting.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String videoMeetingList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new VideoMeetingPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetingtime >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and meetingtime <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and meetingtime >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetingtime <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			videoMeetingList = videoMeetingManager.getList(sarchPageInfo);
				
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
	public String videoMeetingAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (videoMeeting != null && videoMeeting.getId() != null) {
				videoMeeting = (VideoMeeting) videoMeetingManager.getObjectById(videoMeeting.getId());
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
	public String videoMeetingDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] videoMeetingIds = ids.split(",");
				//判断非空
				if(videoMeetingIds != null && videoMeetingIds.length > 0){
					//遍历id
					for(String videoMeetingId:videoMeetingIds){
						if(videoMeetingId != null && !"".equals(videoMeetingId)){
							//根据id获得对象
							videoMeeting = (VideoMeeting)videoMeetingManager.getObjectById(Integer.parseInt(videoMeetingId));		
							//改变表中删除标识
							videoMeetingManager.removeObject(videoMeeting);
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
	public String videoMeetingSave()throws Exception{
		try {
			if (videoMeeting != null && videoMeeting.getVersion() == null ) {
				videoMeeting.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (videoMeeting != null) {
				videoMeeting.setFirstperson(user.getName());
			}
			if (videoMeeting != null) {
				videoMeeting.setFirstpid(user.getId());
			}
			if (videoMeeting != null) {
				videoMeeting.setFirstsubdate(new Date());
			}
			videoMeetingManager.saveObject(videoMeeting);
			
			this.getRequest().setAttribute("title", "视频会议系统使用申请");
			this.getRequest().setAttribute("url", "/videomeeting/videoMeetingList.action");
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
	public String videoMeetingInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(videoMeeting != null && videoMeeting.getId() != null){
				videoMeeting =  (VideoMeeting)videoMeetingManager.getObjectById(videoMeeting.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public VideoMeeting getVideoMeeting() {
		return videoMeeting;
	}


	public void setVideoMeeting(VideoMeeting videoMeeting) {
		this.videoMeeting = videoMeeting;
	}


	public List<VideoMeeting> getVideoMeetingList() {
		return videoMeetingList;
	}


	public void setVideoMeetingList(List<VideoMeeting> videoMeetingList) {
		this.videoMeetingList = videoMeetingList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public VideoMeetingPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(VideoMeetingPageInfo pageInfo) {
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

