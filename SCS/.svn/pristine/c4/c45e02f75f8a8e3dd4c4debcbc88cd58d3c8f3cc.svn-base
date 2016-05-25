package com.manage.notsecretpcout.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.notsecretpcout.action.info.NotSecretPcOutPageInfo;
import com.manage.notsecretpcout.model.NotSecretPcOut;
import com.manage.notsecretpcout.service.NotSecretPcOutManager;
import com.manage.user.model.User;



/**
 * @see 非涉密便携式计算机携带外出审批表
 * @date May 9, 2016
 * @author dl
 */
public class NotSecretPcOutAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(NotSecretPcOutAction.class);	
	private NotSecretPcOut notSecretPcOut;
	private NotSecretPcOutPageInfo pageInfo;
	private List<NotSecretPcOut> notSecretPcOutList;
	private String params;

	private String ids;
	
	private NotSecretPcOutManager notSecretPcOutManager=(NotSecretPcOutManager) SpringContextHolder.getBean(NotSecretPcOut.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String notSecretPcOutList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new NotSecretPcOutPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			notSecretPcOutList = notSecretPcOutManager.getList(sarchPageInfo);
				
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
	public String notSecretPcOutAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (notSecretPcOut != null && notSecretPcOut.getId() != null) {
				notSecretPcOut = (NotSecretPcOut) notSecretPcOutManager.getObjectById(notSecretPcOut.getId());
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
	public String notSecretPcOutDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] notSecretPcOutIds = ids.split(",");
				//判断非空
				if(notSecretPcOutIds != null && notSecretPcOutIds.length > 0){
					//遍历id
					for(String notSecretPcOutId:notSecretPcOutIds){
						if(notSecretPcOutId != null && !"".equals(notSecretPcOutId)){
							//根据id获得对象
							notSecretPcOut = (NotSecretPcOut)notSecretPcOutManager.getObjectById(Integer.parseInt(notSecretPcOutId));		
							//改变表中删除标识
							notSecretPcOutManager.removeObject(notSecretPcOut);
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
	public String notSecretPcOutSave()throws Exception{
		try {
			if (notSecretPcOut != null && notSecretPcOut.getVersion() == null ) {
				notSecretPcOut.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (notSecretPcOut != null) {
				notSecretPcOut.setFirstperson(user.getName());
			}
			if (notSecretPcOut != null) {
				notSecretPcOut.setFirstpid(user.getId());
			}
			if (notSecretPcOut != null) {
				notSecretPcOut.setFirstsubdate(new Date());
			}
			notSecretPcOutManager.saveObject(notSecretPcOut);
			
			this.getRequest().setAttribute("title", "非涉密便携式计算机携带外出审批");
			this.getRequest().setAttribute("url", "/notsecretpcout/notSecretPcOutList.action");
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
	public String notSecretPcOutInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(notSecretPcOut != null && notSecretPcOut.getId() != null){
				notSecretPcOut =  (NotSecretPcOut)notSecretPcOutManager.getObjectById(notSecretPcOut.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public NotSecretPcOut getNotSecretPcOut() {
		return notSecretPcOut;
	}


	public void setNotSecretPcOut(NotSecretPcOut notSecretPcOut) {
		this.notSecretPcOut = notSecretPcOut;
	}


	public List<NotSecretPcOut> getNotSecretPcOutList() {
		return notSecretPcOutList;
	}


	public void setNotSecretPcOutList(List<NotSecretPcOut> notSecretPcOutList) {
		this.notSecretPcOutList = notSecretPcOutList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public NotSecretPcOutPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(NotSecretPcOutPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

