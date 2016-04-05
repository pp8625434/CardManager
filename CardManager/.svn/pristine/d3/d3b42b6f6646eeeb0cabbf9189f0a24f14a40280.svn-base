package com.manage.advertisement.action;

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
import com.base.framework.dao.Filter;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.advertisement.action.info.AdvertisementPageInfo;
import com.manage.advertisement.model.Advertisement;
import com.manage.advertisement.service.AdvertisementManager;
import com.manage.user.model.User;




public class AdvertisementAction extends BaseAction {

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(AdvertisementAction.class);	
	private Advertisement advertisement;
	private AdvertisementPageInfo pageInfo;
	private List<Advertisement> advertisementList;
	private String params;
	private String isuse;
	private String ids;
	
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	private String displayPath;

	
//	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	private AdvertisementManager advertisementManager=(AdvertisementManager) SpringContextHolder.getBean(Advertisement.class);
	/**
	 * @author DL
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 广告列表
	 */
	public String advertisementList() throws Exception{
		
		try{
			// 判断分页参数是否为空，为空则创建
			pageInfo = pageInfo == null ? new AdvertisementPageInfo() : pageInfo;
			if (Utils.isNotNullOrEmpty(isuse)) {	
				pageInfo.setF_isuse(Integer.valueOf(isuse));
				pageInfo.setF_isuse_op(Filter.OPERATOR_EQ);
			} 
//			
//			// 设置是否删除属性值
//			pageInfo.setF_isdeleted(0);
//			pageInfo.setF_isdeleted_op(Filter.OPERATOR_EQ);
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			//获得商品列表
			advertisementList = advertisementManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	
	/**
	 * @author DL
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 编辑广告
	 */
	public String toEditAdvertisement()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (advertisement != null && advertisement.getId() != null) {
				advertisement = (Advertisement) advertisementManager.getObjectById(advertisement.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date Nov 25, 2015
	 * @param 
	 * @return
	 * @see 删除
	 */
	public String delAdvertisement() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] advertisementIds = ids.split(",");
				//判断非空
				if(advertisementIds != null && advertisementIds.length > 0){
					//遍历id
					for(String advertisementId:advertisementIds){
						if(advertisementId != null && !"".equals(advertisementId)){
							//根据id获得对象
							advertisement = (Advertisement)advertisementManager.getObjectById(Integer.parseInt(advertisementId));		
							//改变表中删除标识
//							advertisementManager.saveObject(advertisement);
							advertisementManager.removeObject(advertisement);
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
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 保存广告
	 */
	public String saveAdvertisement()throws Exception{
		try {
			User user = (User) getSession().getAttribute("user");
			// 保存对象
			if (advertisement.getVersion() == null) {
				advertisement.setVersion(1);
			}
			if (advertisement.getAddtime() == null) {
				advertisement.setAddtime(new Date());
			}
			if (advertisement.getCreator() == null) {
				advertisement.setCreator(user.getId());
			}
			
//			上传图片
			if(Utils.isNotNullOrEmpty(uploadFileName)){
				try {
					Date date = new Date();
					String path = "images";
					String fileName = date.getTime() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
					String headPicPath = path +  "/" + fileName;
					advertisement.setImgurl(BaseConfigHolder.getAdPath()+fileName);
					user.setHeadpicpath(headPicPath);
					FileInputStream fileInput = new FileInputStream(upload);
					
					headPicPath = ServletActionContext.getServletContext().getRealPath(path) + "/" + fileName;
					FileOutputStream out = new FileOutputStream(headPicPath);
					//将数据拷贝到上传目录，这里没有必要使用缓冲流，因为IOUtils工具类已经使用了缓存
					IOUtils.copy(fileInput, out);
					
					fileInput.close();
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			
			advertisementManager.saveObject(advertisement);
			
			this.getRequest().setAttribute("title", "广告管理");
			this.getRequest().setAttribute("url", "/advertisement/advertisementList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	public String advertisementInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(advertisement != null && advertisement.getId() != null){
				advertisement =  (Advertisement)advertisementManager.getObjectById(advertisement.getId());
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


	public Advertisement getAdvertisement() {
		return advertisement;
	}


	public void setAdvertisement(Advertisement advertisement) {
		this.advertisement = advertisement;
	}


	public AdvertisementPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(AdvertisementPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public List<Advertisement> getAdvertisementList() {
		return advertisementList;
	}


	public void setAdvertisementList(List<Advertisement> advertisementList) {
		this.advertisementList = advertisementList;
	}


	public String getIsuse() {
		return isuse;
	}


	public void setIsuse(String isuse) {
		this.isuse = isuse;
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
