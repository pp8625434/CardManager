package com.manage.divulgesecret.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.divulgesecret.action.info.DivulgeSecretPageInfo;
import com.manage.divulgesecret.model.DivulgeSecret;
import com.manage.divulgesecret.service.DivulgeSecretManager;
import com.manage.user.model.User;



/**
 * @see 泄密事件报告登记表
 * @date May 9, 2016
 * @author dl
 */
public class DivulgeSecretAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(DivulgeSecretAction.class);	
	private DivulgeSecret divulgeSecret;
	private DivulgeSecretPageInfo pageInfo;
	private List<DivulgeSecret> divulgeSecretList;
	private String params;

	private String ids;
	
	private DivulgeSecretManager divulgeSecretManager=(DivulgeSecretManager) SpringContextHolder.getBean(DivulgeSecret.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String divulgeSecretList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new DivulgeSecretPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			divulgeSecretList = divulgeSecretManager.getList(sarchPageInfo);
				
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
	public String divulgeSecretAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (divulgeSecret != null && divulgeSecret.getId() != null) {
				divulgeSecret = (DivulgeSecret) divulgeSecretManager.getObjectById(divulgeSecret.getId());
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
	public String divulgeSecretDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] divulgeSecretIds = ids.split(",");
				//判断非空
				if(divulgeSecretIds != null && divulgeSecretIds.length > 0){
					//遍历id
					for(String divulgeSecretId:divulgeSecretIds){
						if(divulgeSecretId != null && !"".equals(divulgeSecretId)){
							//根据id获得对象
							divulgeSecret = (DivulgeSecret)divulgeSecretManager.getObjectById(Integer.parseInt(divulgeSecretId));		
							//改变表中删除标识
							divulgeSecretManager.removeObject(divulgeSecret);
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
	public String divulgeSecretSave()throws Exception{
		try {
			if (divulgeSecret != null && divulgeSecret.getVersion() == null ) {
				divulgeSecret.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (divulgeSecret != null) {
				divulgeSecret.setUsername(user.getName());
			}
			if (divulgeSecret != null) {
				divulgeSecret.setUserid(user.getId());
			}
			divulgeSecretManager.saveObject(divulgeSecret);
			
			this.getRequest().setAttribute("title", "泄密事件报告登记");
			this.getRequest().setAttribute("url", "/divulgesecret/divulgeSecretList.action");
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
	public String divulgeSecretInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(divulgeSecret != null && divulgeSecret.getId() != null){
				divulgeSecret =  (DivulgeSecret)divulgeSecretManager.getObjectById(divulgeSecret.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public DivulgeSecret getDivulgeSecret() {
		return divulgeSecret;
	}


	public void setDivulgeSecret(DivulgeSecret divulgeSecret) {
		this.divulgeSecret = divulgeSecret;
	}


	public List<DivulgeSecret> getDivulgeSecretList() {
		return divulgeSecretList;
	}


	public void setDivulgeSecretList(List<DivulgeSecret> divulgeSecretList) {
		this.divulgeSecretList = divulgeSecretList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public DivulgeSecretPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(DivulgeSecretPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

