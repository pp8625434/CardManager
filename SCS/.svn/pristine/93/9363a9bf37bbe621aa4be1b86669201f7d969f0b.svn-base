package com.manage.authorityalter.action;


import java.io.File;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.authorityalter.action.info.AuthorityAlterPageInfo;
import com.manage.authorityalter.model.AuthorityAlter;
import com.manage.authorityalter.service.AuthorityAlterManager;
import com.manage.user.model.User;



/**
 * @see 用户权限变更审批表
 * @date May 9, 2016
 * @author dl
 */
public class AuthorityAlterAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(AuthorityAlterAction.class);	
	private AuthorityAlter authorityAlter;
	private AuthorityAlterPageInfo pageInfo;
	private List<AuthorityAlter> authorityAlterList;
	private String params;

	private String ids;
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	private String displayPath;
	
	
	private AuthorityAlterManager authorityAlterManager=(AuthorityAlterManager) SpringContextHolder.getBean(AuthorityAlter.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String authorityAlterList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new AuthorityAlterPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			authorityAlterList = authorityAlterManager.getList(sarchPageInfo);
				
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
	public String authorityAlterAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (authorityAlter != null && authorityAlter.getId() != null) {
				authorityAlter = (AuthorityAlter) authorityAlterManager.getObjectById(authorityAlter.getId());
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
	public String authorityAlterDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] authorityAlterIds = ids.split(",");
				//判断非空
				if(authorityAlterIds != null && authorityAlterIds.length > 0){
					//遍历id
					for(String authorityAlterId:authorityAlterIds){
						if(authorityAlterId != null && !"".equals(authorityAlterId)){
							//根据id获得对象
							authorityAlter = (AuthorityAlter)authorityAlterManager.getObjectById(Integer.parseInt(authorityAlterId));		
							//改变表中删除标识
							authorityAlterManager.removeObject(authorityAlter);
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
	public String authorityAlterSave()throws Exception{
		try {
			if (authorityAlter != null && authorityAlter.getVersion() == null ) {
				authorityAlter.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (authorityAlter != null) {
				authorityAlter.setFirstperson(user.getName());
			}
			if (authorityAlter != null) {
				authorityAlter.setFirstpid(user.getId());
			}
			if (authorityAlter != null) {
				authorityAlter.setFirstsubdate(new Date());
			}
			
			authorityAlterManager.saveObject(authorityAlter);
			
			this.getRequest().setAttribute("title", "用户权限变更审批");
			this.getRequest().setAttribute("url", "/authorityalter/authorityAlterList.action");
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
	public String authorityAlterInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(authorityAlter != null && authorityAlter.getId() != null){
				authorityAlter =  (AuthorityAlter)authorityAlterManager.getObjectById(authorityAlter.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public AuthorityAlter getAuthorityAlter() {
		return authorityAlter;
	}

	public void setAuthorityAlter(AuthorityAlter authorityAlter) {
		this.authorityAlter = authorityAlter;
	}

	public AuthorityAlterPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(AuthorityAlterPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<AuthorityAlter> getAuthorityAlterList() {
		return authorityAlterList;
	}

	public void setAuthorityAlterList(List<AuthorityAlter> authorityAlterList) {
		this.authorityAlterList = authorityAlterList;
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

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getDisplayPath() {
		return displayPath;
	}

	public void setDisplayPath(String displayPath) {
		this.displayPath = displayPath;
	}

	
}

