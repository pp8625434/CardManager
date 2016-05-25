package com.manage.appsysnetin.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.base.framework.BaseConfigHolder;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.appsysnetin.action.info.AppSysNetInPageInfo;
import com.manage.appsysnetin.model.AppSysNetIn;
import com.manage.appsysnetin.service.AppSysNetInManager;
import com.manage.user.model.User;



/**
 * @see 应用系统入网审批表
 * @date May 9, 2016
 * @author dl
 */
public class AppSysNetInAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(AppSysNetInAction.class);	
	private AppSysNetIn appSysNetIn;
	private AppSysNetInPageInfo pageInfo;
	private List<AppSysNetIn> appSysNetInList;
	private String params;

	private String ids;
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	private String displayPath;
	
	
	private AppSysNetInManager appSysNetInManager=(AppSysNetInManager) SpringContextHolder.getBean(AppSysNetIn.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String appSysNetInList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new AppSysNetInPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			appSysNetInList = appSysNetInManager.getList(sarchPageInfo);
				
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
	public String appSysNetInAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (appSysNetIn != null && appSysNetIn.getId() != null) {
				appSysNetIn = (AppSysNetIn) appSysNetInManager.getObjectById(appSysNetIn.getId());
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
	public String appSysNetInDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] appSysNetInIds = ids.split(",");
				//判断非空
				if(appSysNetInIds != null && appSysNetInIds.length > 0){
					//遍历id
					for(String appSysNetInId:appSysNetInIds){
						if(appSysNetInId != null && !"".equals(appSysNetInId)){
							//根据id获得对象
							appSysNetIn = (AppSysNetIn)appSysNetInManager.getObjectById(Integer.parseInt(appSysNetInId));		
							//改变表中删除标识
							appSysNetInManager.removeObject(appSysNetIn);
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
	public String appSysNetInSave()throws Exception{
		try {
			if (appSysNetIn != null && appSysNetIn.getVersion() == null ) {
				appSysNetIn.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (appSysNetIn != null) {
				appSysNetIn.setFirstperson(user.getName());
			}
			if (appSysNetIn != null) {
				appSysNetIn.setFirstpid(user.getId());
			}
			if (appSysNetIn != null) {
				appSysNetIn.setFirstsubdate(new Date());
			}
			//上传文件
			if(Utils.isNotNullOrEmpty(uploadFileName)){
				FileInputStream fileInput = null;
				FileOutputStream out = null;
				try {
					Date date = new Date();
					String path = "uploadfile";
					String fileName = date.getTime() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
					String headPicPath = path +  "/" + fileName;
					appSysNetIn.setFilePath(BaseConfigHolder.getUploadfileservice()+fileName);
//					appSysNetIn.setFilePath("http://192.168.1.114/SCS/uploadfile/"+fileName);
					fileInput = new FileInputStream(upload);
					
					headPicPath = ServletActionContext.getServletContext().getRealPath(path) + "/" + fileName;
					out = new FileOutputStream(headPicPath);
					//将数据拷贝到上传目录，这里没有必要使用缓冲流，因为IOUtils工具类已经使用了缓存
					IOUtils.copy(fileInput, out);
				} catch (Exception e) {
					e.printStackTrace();
				}finally{
					if (fileInput != null) {
						fileInput.close();
					}
					if (out != null) {
						out.close();
					}
				}
			}
			
			appSysNetInManager.saveObject(appSysNetIn);
			
			this.getRequest().setAttribute("title", "应用系统入网审批");
			this.getRequest().setAttribute("url", "/appsysnetin/appSysNetInList.action");
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
	public String appSysNetInInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(appSysNetIn != null && appSysNetIn.getId() != null){
				appSysNetIn =  (AppSysNetIn)appSysNetInManager.getObjectById(appSysNetIn.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public AppSysNetIn getAppSysNetIn() {
		return appSysNetIn;
	}

	public void setAppSysNetIn(AppSysNetIn appSysNetIn) {
		this.appSysNetIn = appSysNetIn;
	}

	public AppSysNetInPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(AppSysNetInPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<AppSysNetIn> getAppSysNetInList() {
		return appSysNetInList;
	}

	public void setAppSysNetInList(List<AppSysNetIn> appSysNetInList) {
		this.appSysNetInList = appSysNetInList;
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

