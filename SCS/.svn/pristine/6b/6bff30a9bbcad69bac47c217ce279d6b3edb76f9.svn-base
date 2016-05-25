package com.manage.secretpcout.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.secretpcout.action.info.SecretPcOutPageInfo;
import com.manage.secretpcout.model.SecretPcOut;
import com.manage.secretpcout.service.SecretPcOutManager;
import com.manage.user.model.User;



/**
 * @see 借用专供外出携带涉密便携式计算机审批表
 * @date 
 * @author dl
 */
public class SecretPcOutAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SecretPcOutAction.class);	
	private SecretPcOut secretPcOut;
	private SecretPcOutPageInfo pageInfo;
	private List<SecretPcOut> secretPcOutList;
	private String params;

	private String ids;
	
	private SecretPcOutManager secretPcOutManager=(SecretPcOutManager) SpringContextHolder.getBean(SecretPcOut.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String secretPcOutList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SecretPcOutPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			secretPcOutList = secretPcOutManager.getList(sarchPageInfo);
				
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
	public String secretPcOutAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (secretPcOut != null && secretPcOut.getId() != null) {
				secretPcOut = (SecretPcOut) secretPcOutManager.getObjectById(secretPcOut.getId());
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
	public String secretPcOutDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] secretPcOutIds = ids.split(",");
				//判断非空
				if(secretPcOutIds != null && secretPcOutIds.length > 0){
					//遍历id
					for(String secretPcOutId:secretPcOutIds){
						if(secretPcOutId != null && !"".equals(secretPcOutId)){
							//根据id获得对象
							secretPcOut = (SecretPcOut)secretPcOutManager.getObjectById(Integer.parseInt(secretPcOutId));		
							//改变表中删除标识
							secretPcOutManager.removeObject(secretPcOut);
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
	public String secretPcOutSave()throws Exception{
		try {
			if (secretPcOut != null && secretPcOut.getVersion() == null ) {
				secretPcOut.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (secretPcOut != null) {
				secretPcOut.setFirstperson(user.getName());
			}
			if (secretPcOut != null) {
				secretPcOut.setFirstpid(user.getId());
			}
			if (secretPcOut != null) {
				secretPcOut.setFirstsubdate(new Date());
			}
			
			secretPcOutManager.saveObject(secretPcOut);
			
			this.getRequest().setAttribute("title", "借用专供外出携带涉密便携式计算机审批");
			this.getRequest().setAttribute("url", "/secretpcout/secretPcOutList.action");
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
	public String secretPcOutInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(secretPcOut != null && secretPcOut.getId() != null){
				secretPcOut =  (SecretPcOut)secretPcOutManager.getObjectById(secretPcOut.getId());
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

	public SecretPcOut getSecretPcOut() {
		return secretPcOut;
	}

	public void setSecretPcOut(SecretPcOut secretPcOut) {
		this.secretPcOut = secretPcOut;
	}

	public SecretPcOutPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SecretPcOutPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<SecretPcOut> getSecretPcOutList() {
		return secretPcOutList;
	}

	public void setSecretPcOutList(List<SecretPcOut> secretPcOutList) {
		this.secretPcOutList = secretPcOutList;
	}


	
}

