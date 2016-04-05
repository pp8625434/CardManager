package com.manage.workdate.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.FormatDate;
import com.base.util.LogUtil;
import com.base.util.Utils;
import com.manage.workdate.action.info.WorkdatePageInfo;
import com.manage.workdate.model.Workdate;
import com.manage.workdate.service.WorkdateManager;

/**
 * 工作日管理
 * @author GGM
 *
 */
public class WorkdateAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(WorkdateAction.class);
	private Workdate workdate;
	private List<Workdate> wList;
	private WorkdatePageInfo pageInfo;
	private String params;
	private String ids;
	private String dtype;
	private String thedate;
	private String result;
	private Date tDate;
	
	private WorkdateManager workdateManager = (WorkdateManager) SpringContextHolder.getBean(Workdate.class);
	
	/**
	 * @see 工作日列表
	 * @author GGM
	 * @date Feb 22, 2016 2:10:27 PM
	 */
	public String workdateList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new WorkdatePageInfo() : pageInfo;
			
			if (Utils.isNotNullOrEmpty(dtype)) {	
				pageInfo.setF_dtype(Integer.valueOf(dtype));
				pageInfo.setF_dtype_op(Filter.OPERATOR_EQ);
			}
			if(Utils.isNotNullOrEmpty(thedate)){
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date = sdf.parse(thedate);
				pageInfo.setF_thedate(date);
				pageInfo.setF_thedate_op(Filter.OPERATOR_EQ);
			}
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			wList = workdateManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 工作日详情
	 * @author GGM
	 * @date Feb 22, 2016 2:13:35 PM
	 */
	public String workdateInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(workdate != null && workdate.getId() != null){
				workdate = (Workdate) workdateManager.getObjectById(workdate.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑工作日
	 * @author GGM
	 * @date Feb 22, 2016 2:15:00 PM
	 */
	public String editWorkdate()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(workdate != null && workdate.getId() != null){
				workdate = (Workdate) workdateManager.getObjectById(workdate.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/** 
	 * @see 保存工作日
	 * @author GGM
	 * @date Feb 22, 2016 2:17:31 PM
	 */
	public String saveWorkdate()throws Exception{
		
		try{
			// 判断日志操作类型（增、删）
			int typeNum = LogUtil.LOG_ADD_TYPE;
			if (workdate.getId() != null) {
				typeNum = LogUtil.LOG_UPDATE_TYPE;
			}
			Date date = new Date();
			if (workdate.getId() == null) {
				workdate.setVersion(0);
			}
			workdateManager.saveObject(workdate);
			this.getRequest().setAttribute("title", "工作日管理");
			this.getRequest().setAttribute("url", "/workdate/workdateList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除工作日
	 * @author GGM
	 * @date Feb 22, 2016 2:18:13 PM
	 */
	public String delWorkdate()throws Exception{
		
		try{
			if (Utils.isNotNullOrEmpty(ids)) {
				// 获得多个id
				String[] cid = ids.split(",");
				// 判断非空
				if (cid != null && cid.length > 0) {
					// 遍历id
					for (String cardid : cid) {
						if (cardid != null && !"".equals(cardid)) {
							// 根据id获得对象
							workdate = (Workdate) workdateManager.getObjectById(Integer.parseInt(cardid));
							workdateManager.removeObjectById(workdate.getId());
						}
					}
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 验证日期不重复
	 * @author GGM
	 * @date Feb 23, 2016 11:23:11 AM
	 */
	public String checkThedate()throws Exception{
		try{
			if (ids == null || "".equals(ids)) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				workdate = workdateManager.checkThedate(ids,sdf.format(tDate));
				if (workdate != null) {
					result = "succ";
				} else {
					result = "false";
				}
			}else{
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				workdate = workdateManager.checkThedate(ids,sdf.format(tDate));
				if (workdate == null) {
					result = "false";
				}else {
					result = "succ";
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

	public Workdate getWorkdate() {
		return workdate;
	}

	public void setWorkdate(Workdate workdate) {
		this.workdate = workdate;
	}

	public List<Workdate> getWList() {
		return wList;
	}

	public void setWList(List<Workdate> list) {
		wList = list;
	}

	public WorkdatePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(WorkdatePageInfo pageInfo) {
		this.pageInfo = pageInfo;
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

	public String getDtype() {
		return dtype;
	}

	public void setDtype(String dtype) {
		this.dtype = dtype;
	}

	public String getThedate() {
		return thedate;
	}

	public void setThedate(String thedate) {
		this.thedate = thedate;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Date getTDate() {
		return tDate;
	}

	public void setTDate(Date date) {
		tDate = date;
	}
	
	
}
