package com.manage.internetaccount.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.internetaccount.action.info.InternetAccountPageInfo;
import com.manage.internetaccount.model.InternetAccount;
import com.manage.internetaccount.service.InternetAccountManager;
import com.manage.user.model.User;



/**
 * @see 开通/撤销互联网账号审批表
 * @date May 9, 2016
 * @author dl
 */
public class InternetAccountAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(InternetAccountAction.class);	
	private InternetAccount internetAccount;
	private InternetAccountPageInfo pageInfo;
	private List<InternetAccount> internetAccountList;
	private String params;

	private String ids;
	
	private InternetAccountManager internetAccountManager=(InternetAccountManager) SpringContextHolder.getBean(InternetAccount.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String internetAccountList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new InternetAccountPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			internetAccountList = internetAccountManager.getList(sarchPageInfo);
				
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
	public String internetAccountAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (internetAccount != null && internetAccount.getId() != null) {
				internetAccount = (InternetAccount) internetAccountManager.getObjectById(internetAccount.getId());
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
	public String internetAccountDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] internetAccountIds = ids.split(",");
				//判断非空
				if(internetAccountIds != null && internetAccountIds.length > 0){
					//遍历id
					for(String internetAccountId:internetAccountIds){
						if(internetAccountId != null && !"".equals(internetAccountId)){
							//根据id获得对象
							internetAccount = (InternetAccount)internetAccountManager.getObjectById(Integer.parseInt(internetAccountId));		
							//改变表中删除标识
							internetAccountManager.removeObject(internetAccount);
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
	public String internetAccountSave()throws Exception{
		try {
			if (internetAccount != null && internetAccount.getVersion() == null ) {
				internetAccount.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (internetAccount != null) {
				internetAccount.setFirstperson(user.getName());
			}
			if (internetAccount != null) {
				internetAccount.setFirstpid(user.getId());
			}
			if (internetAccount != null) {
				internetAccount.setFirstsubdate(new Date());
			}
			internetAccountManager.saveObject(internetAccount);
			
			this.getRequest().setAttribute("title", "开通/撤销互联网账号审批");
			this.getRequest().setAttribute("url", "/internetaccount/internetAccountList.action");
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
	public String internetAccountInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(internetAccount != null && internetAccount.getId() != null){
				internetAccount =  (InternetAccount)internetAccountManager.getObjectById(internetAccount.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public InternetAccount getInternetAccount() {
		return internetAccount;
	}


	public void setInternetAccount(InternetAccount internetAccount) {
		this.internetAccount = internetAccount;
	}


	public List<InternetAccount> getInternetAccountList() {
		return internetAccountList;
	}


	public void setInternetAccountList(List<InternetAccount> internetAccountList) {
		this.internetAccountList = internetAccountList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public InternetAccountPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(InternetAccountPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}


}

