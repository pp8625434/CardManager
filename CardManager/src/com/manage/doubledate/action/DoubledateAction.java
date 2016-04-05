package com.manage.doubledate.action;

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
import com.base.util.Utils;

import com.manage.doubledate.action.info.DoubledatePageInfo;
import com.manage.doubledate.model.Doubledate;
import com.manage.doubledate.service.DoubledateManager;
import com.manage.user.model.User;




public class DoubledateAction extends BaseAction {

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(DoubledateAction.class);	
	private Doubledate doubledate;
	private DoubledatePageInfo pageInfo;
	private List<Doubledate> doubledateList;
	private String params;
	private String isuse;
	private String ids;
	private Date adate;
	private String data;
	private String orgid;

	private DoubledateManager doubledateManager=(DoubledateManager) SpringContextHolder.getBean(Doubledate.class);
	/**
	 * @author DL
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 活动日列表
	 */
	public String doubledateList() throws Exception{
		
		try{
			// 判断分页参数是否为空，为空则创建
			pageInfo = pageInfo == null ? new DoubledatePageInfo() : pageInfo;
			if (Utils.isNotNullOrEmpty(isuse)) {	
				pageInfo.setF_isuse(Integer.valueOf(isuse));
				pageInfo.setF_isuse_op(Filter.OPERATOR_EQ);
			} 
			
			// 设置是否删除属性值
			pageInfo.setF_isdeleted(0);
			pageInfo.setF_isdeleted_op(Filter.OPERATOR_EQ);
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			//获得活动日列表
			doubledateList = doubledateManager.getList(sarchPageInfo);
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
	 * @see 编辑活动日
	 */
	public String toEditDoubledate()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (doubledate != null && doubledate.getId() != null) {
				doubledate = (Doubledate) doubledateManager.getObjectById(doubledate.getId());
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
	public String delDoubledate() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] doubledateIds = ids.split(",");
				//判断非空
				if(doubledateIds != null && doubledateIds.length > 0){
					//遍历id
					for(String doubledateId:doubledateIds){
						if(doubledateId != null && !"".equals(doubledateId)){
							//根据id获得对象
							doubledate = (Doubledate)doubledateManager.getObjectById(Integer.parseInt(doubledateId));		
							//改变表中删除标识
							doubledate.setIsdeleted(1);

							doubledateManager.saveObject(doubledate);
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
	 * @see 保存活动日
	 */
	public String saveDoubledate()throws Exception{
		try {
			
			User user = (User) getSession().getAttribute("user");
			// 保存对象
			if (doubledate.getVersion() == null) {
				doubledate.setVersion(1);
			}
			if (doubledate.getAddtime() == null) {
				doubledate.setAddtime(new Date());
			}
			if (doubledate.getCreator() == null) {
				doubledate.setCreator(user.getId());
			}
			
			if (doubledate.getIsdeleted() == null) {
				doubledate.setIsdeleted(0);
			}
			doubledateManager.saveObject(doubledate);
			
			this.getRequest().setAttribute("title", "活动日管理");
			this.getRequest().setAttribute("url", "/doubledate/doubledateList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date Nov 30, 2015
	 * @param 
	 * @return
	 * @see 验证时间
	 */
	public String toCheckdate() throws Exception{
		try{
			if (ids == null || "".equals(ids)) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				doubledate = doubledateManager.getDoubledateByAdate(ids,orgid,sdf.format(adate));
				if (doubledate != null) {
					data = "succ";
				} else {
					data = "false";
				}
			}else{
				//int id = doubledate.getId();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				doubledate = doubledateManager.getDoubledateByAdate(ids,orgid,sdf.format(adate));
				if (doubledate == null) {
					data = "false";
				}else {
					data = "succ";
				}
			}
			
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	public String doubledateInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(doubledate != null && doubledate.getId() != null){
				doubledate =  (Doubledate)doubledateManager.getObjectById(doubledate.getId());
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


	public Doubledate getAdvertisement() {
		return doubledate;
	}


	public void setAdvertisement(Doubledate advertisement) {
		this.doubledate = advertisement;
	}


	public List<Doubledate> getAdvertisementList() {
		return doubledateList;
	}


	public void setAdvertisementList(List<Doubledate> advertisementList) {
		this.doubledateList = advertisementList;
	}


	public String getIsuse() {
		return isuse;
	}


	public void setIsuse(String isuse) {
		this.isuse = isuse;
	}


	public Doubledate getDoubledate() {
		return doubledate;
	}


	public void setDoubledate(Doubledate doubledate) {
		this.doubledate = doubledate;
	}


	public DoubledatePageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(DoubledatePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public List<Doubledate> getDoubledateList() {
		return doubledateList;
	}


	public void setDoubledateList(List<Doubledate> doubledateList) {
		this.doubledateList = doubledateList;
	}


	public Date getAdate() {
		return adate;
	}


	public void setAdate(Date adate) {
		this.adate = adate;
	}


	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}


	public String getOrgid() {
		return orgid;
	}


	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}

}
