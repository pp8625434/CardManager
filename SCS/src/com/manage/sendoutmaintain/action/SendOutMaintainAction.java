package com.manage.sendoutmaintain.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.sendoutmaintain.action.info.SendOutMaintainPageInfo;
import com.manage.sendoutmaintain.model.SendOutMaintain;
import com.manage.sendoutmaintain.service.SendOutMaintainManager;
import com.manage.user.model.User;



/**
 * @see 外来人员维修、送外维修审批表
 * @date 
 * @author dl
 */
public class SendOutMaintainAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SendOutMaintainAction.class);	
	private SendOutMaintain sendOutMaintain;
	private SendOutMaintainPageInfo pageInfo;
	private List<SendOutMaintain> sendOutMaintainList;
	private String params;

	private String ids;
	
	private SendOutMaintainManager sendOutMaintainManager=(SendOutMaintainManager) SpringContextHolder.getBean(SendOutMaintain.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String sendOutMaintainList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SendOutMaintainPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			sendOutMaintainList = sendOutMaintainManager.getList(sarchPageInfo);
				
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
	public String sendOutMaintainAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (sendOutMaintain != null && sendOutMaintain.getId() != null) {
				sendOutMaintain = (SendOutMaintain) sendOutMaintainManager.getObjectById(sendOutMaintain.getId());
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
	public String sendOutMaintainDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] sendOutMaintainIds = ids.split(",");
				//判断非空
				if(sendOutMaintainIds != null && sendOutMaintainIds.length > 0){
					//遍历id
					for(String sendOutMaintainId:sendOutMaintainIds){
						if(sendOutMaintainId != null && !"".equals(sendOutMaintainId)){
							//根据id获得对象
							sendOutMaintain = (SendOutMaintain)sendOutMaintainManager.getObjectById(Integer.parseInt(sendOutMaintainId));		
							//改变表中删除标识
							sendOutMaintainManager.removeObject(sendOutMaintain);
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
	public String sendOutMaintainSave()throws Exception{
		try {
			if (sendOutMaintain != null && sendOutMaintain.getVersion() == null ) {
				sendOutMaintain.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (sendOutMaintain != null) {
				sendOutMaintain.setFirstperson(user.getName());
			}
			if (sendOutMaintain != null) {
				sendOutMaintain.setFirstpid(user.getId());
			}
			if (sendOutMaintain != null) {
				sendOutMaintain.setFirstsubdate(new Date());
			}
			
			sendOutMaintainManager.saveObject(sendOutMaintain);
			
			this.getRequest().setAttribute("title", "借用专供外出携带涉密便携式计算机审批");
			this.getRequest().setAttribute("url", "/sendoutmaintain/sendOutMaintainList.action");
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
	public String sendOutMaintainInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(sendOutMaintain != null && sendOutMaintain.getId() != null){
				sendOutMaintain =  (SendOutMaintain)sendOutMaintainManager.getObjectById(sendOutMaintain.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
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

	public SendOutMaintain getSendOutMaintain() {
		return sendOutMaintain;
	}

	public void setSendOutMaintain(SendOutMaintain sendOutMaintain) {
		this.sendOutMaintain = sendOutMaintain;
	}

	public SendOutMaintainPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SendOutMaintainPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<SendOutMaintain> getSendOutMaintainList() {
		return sendOutMaintainList;
	}

	public void setSendOutMaintainList(List<SendOutMaintain> sendOutMaintainList) {
		this.sendOutMaintainList = sendOutMaintainList;
	}


	
}

