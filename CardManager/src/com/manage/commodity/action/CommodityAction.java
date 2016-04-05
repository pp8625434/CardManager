package com.manage.commodity.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.base.framework.BaseConfigHolder;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.paging.PageInfo;
import com.base.framework.security.model.Role;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.cache.CommodityCache;
import com.manage.commodity.action.info.CommodityPageInfo;
import com.manage.commodity.model.Commodity;
import com.manage.commodity.service.CommodityManager;
import com.manage.user.model.User;
import com.manage.user.service.UserManager;



public class CommodityAction extends BaseAction {

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(CommodityAction.class);	
	private Commodity commodity;
	private CommodityPageInfo pageInfo;
	private List<Commodity> commodityList;
	private String params;
	private String data;

	private String isused;
	private String ids;
	
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	private String displayPath;
	
	private CommodityManager commodityManager=(CommodityManager) SpringContextHolder.getBean(Commodity.class);
	/**
	 * @author DL
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 商品列表
	 */
	public String commodityList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new CommodityPageInfo() : pageInfo;
			boolean flag = false;
			UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
			User u = (User) getSession().getAttribute("user");
			User tempu = (User) userMgr.getObjectById(u.getId()); //查询出用户详细信息
			List<Role> roleList = (List<Role>) getSession().getAttribute("roleList");
			for (Role role : roleList) { //全局权限
				if(role.getIsglob()==1){
					flag = true;
				}
			}
			
			if(!flag){ //没有全局权限 则查看用户的是否是店主
				if(tempu!=null && tempu.getIsgroup()!=null && tempu.getIsbathcard()!=null){//如果是店主，则过滤，列表值显示自己店铺
					if(tempu.getIsgroup() ==1){
						flag = true;
						pageInfo.setF_mid(tempu.getIsbathcard());
						pageInfo.setF_mid_op(Filter.OPERATOR_EQ);
					}
				}
			}
			
			if(flag){
				// 判断分页参数是否为空，为空则创建
				if (Utils.isNotNullOrEmpty(isused)) {	
					pageInfo.setF_isused(Integer.valueOf(isused));
					pageInfo.setF_isused_op(Filter.OPERATOR_EQ);
				}
				// 设置是否删除属性值
				pageInfo.setF_isdeleted(0);
				pageInfo.setF_isdeleted_op(Filter.OPERATOR_EQ);
				PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
				//获得商品列表
				commodityList = commodityManager.getList(sarchPageInfo);
			}		
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
	 * @see 编辑商品
	 */
	public String toEditCommodity()throws Exception{
		try{
			boolean flag = false;
			UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
			User u = (User) getSession().getAttribute("user");
			User tempu = (User) userMgr.getObjectById(u.getId()); //查询出用户详细信息
			List<Role> roleList = (List<Role>) getSession().getAttribute("roleList");
			for (Role role : roleList) { //全局权限
				if(role.getIsglob()==1){
					flag = true;
				}
			}
			
			if(!flag){ //没有全局权限 则查看用户的是否是店主
				if(tempu!=null && tempu.getIsgroup()!=null && tempu.getIsbathcard()!=null){//如果是店主，则过滤，
					if(tempu.getIsgroup() ==1){
						this.getRequest().setAttribute("shopid", tempu.getIsbathcard());
						this.getRequest().setAttribute("shopname", tempu.getBathcardnum());
						
					}
				}
			}
			
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			// 判断商品对象不为空
			if (commodity != null && commodity.getId() != null) {
				// 根据id获得商品对象
				commodity = (Commodity) commodityManager.getObjectById(commodity.getId());
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
	public String delCommodity() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] commodityIds = ids.split(",");
				//判断非空
				if(commodityIds != null && commodityIds.length > 0){
					//遍历id
					for(String commodityId:commodityIds){
						if(commodityId != null && !"".equals(commodityId)){
							//根据id获得对象
							commodity = (Commodity)commodityManager.getObjectById(Integer.parseInt(commodityId));		
							//改变表中删除标识
							commodity.setIsdeleted(1);
							commodityManager.saveObject(commodity);
						}	
						
					}
					//更新缓存
					CommodityCache.setCommodityMap();
				}
			}		
		} catch (Exception e) {
			logger.error("发生错误：", e);
		}
		
		return SUCCESS;
	}

	/**
	 * @author DL
	 * @date Jan 13, 2016
	 * @param 
	 * @return
	 * @see 商品上架
	 */
	public String commodityIsusedY() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids) ){
				//获得多个id
				String[] commodityIds = ids.split(",");
				//判断非空
				if(commodityIds != null && commodityIds.length > 0){
					//遍历id
					for(String commodityId:commodityIds){
						if(commodityId != null && !"".equals(commodityId)){
							//根据id获得对象
							commodity = (Commodity)commodityManager.getObjectById(Integer.parseInt(commodityId));		
							//改变表中删除标识
							commodity.setIsused(1)	;
							commodityManager.saveObject(commodity);
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
	 * @date Jan 13, 2016
	 * @param 
	 * @return
	 * @see 商品下架
	 */
	public String commodityIsusedN() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids) ){
				//获得多个id
				String[] commodityIds = ids.split(",");
				//判断非空
				if(commodityIds != null && commodityIds.length > 0){
					//遍历id
					for(String commodityId:commodityIds){
						if(commodityId != null && !"".equals(commodityId)){
							//根据id获得对象
							commodity = (Commodity)commodityManager.getObjectById(Integer.parseInt(commodityId));		
							//改变表中删除标识
							commodity.setIsused(0)	;
							commodityManager.saveObject(commodity);
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
	 * @see 保存商品
	 */
	public String saveCommodity()throws Exception{
		try {
			User user = (User) getSession().getAttribute("user");
			// 保存对象
			if (commodity.getVersion() == null) {
				commodity.setVersion(1);
			}
			if (commodity.getCreatedate() == null) {
				commodity.setCreatedate(new Date());
			}
			if (commodity.getIsdeleted() == null) {
				commodity.setIsdeleted(0);
			}
			if (commodity.getCreator() == null) {
				commodity.setCreator(user.getId());
			}
			
//			上传图片
			if(Utils.isNotNullOrEmpty(uploadFileName)){
				try {
					Date date = new Date();
					String path = "images";
					String fileName = date.getTime() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
					String headPicPath = path +  "/" + fileName;
//					commodity.setImgpath(BaseConfigHolder.getAdPath()+fileName);
					commodity.setImgpath("http://card.easyxiao.com/CardManager/images/"+fileName);
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
			
			commodityManager.saveObject(commodity);
			
			//更新缓存
			CommodityCache.setCommodityMap();
			
			this.getRequest().setAttribute("title", "商品管理");
			this.getRequest().setAttribute("url", "/admin/commodityList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	public String commodityInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(commodity != null && commodity.getId() != null){
				commodity =  (Commodity)commodityManager.getObjectById(commodity.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}

	public CommodityPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(CommodityPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<Commodity> getCommodityList() {
		return commodityList;
	}

	public void setCommodityList(List<Commodity> commodityList) {
		this.commodityList = commodityList;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}


	public String getIsused() {
		return isused;
	}


	public void setIsused(String isused) {
		this.isused = isused;
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
