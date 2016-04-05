package com.manage.merchant.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.LogUtil;
import com.base.util.Utils;
import com.manage.cache.CommodityCache;
import com.manage.cache.MerchantCache;
import com.manage.commodity.model.Commodity;
import com.manage.commodity.service.CommodityManager;
import com.manage.merchant.action.info.MerchantPageInfo;
import com.manage.merchant.model.Merchant;
import com.manage.merchant.service.MerchantManager;

public class MerchantAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(MerchantAction.class);	
	private Merchant merchant;
	private MerchantPageInfo pageInfo;
	private List<Merchant> merchantList;
	private String params;
	private String ids;
	private String result;
	
	private MerchantManager merchantManager = (MerchantManager) SpringContextHolder.getBean(Merchant.class);
	
	/**
	 * @see 查询商铺列表
	 * @author GGM
	 * @date Nov 24, 2015 3:04:03 PM
	 */
	public String merchantList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new MerchantPageInfo() : pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			merchantList = merchantManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看商铺详情
	 * @author GGM
	 * @date Nov 24, 2015 3:58:36 PM
	 */
	public String merchantInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(merchant != null && merchant.getId() != null){
				merchant = (Merchant) merchantManager.getObjectById(merchant.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 添加/编辑商铺信息
	 * @author GGM
	 * @date Nov 24, 2015 4:01:46 PM
	 */
	public String merchantEdit()throws Exception{

		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(merchant != null && merchant.getId() != null){
				merchant = (Merchant) merchantManager.getObjectById(merchant.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存新增/编辑信息
	 * @author GGM
	 * @date Nov 24, 2015 4:06:15 PM
	 */
	public String saveMerchant()throws Exception{
		
		try{
			// 判断日志操作类型（增、删）
			int typeNum = LogUtil.LOG_ADD_TYPE;
			if (merchant.getId() != null) {
				typeNum = LogUtil.LOG_UPDATE_TYPE;
			}
			if (merchant.getId() == null) {
				merchant.setIsdeleted(0);
			}else {					
				merchantManager.updateCommodity(merchant.getId(), merchant.getMname());	//更新商品表商铺名
			}
			merchantManager.saveObject(merchant);
			//更新缓存
			MerchantCache.setMerchantMap();
			this.getRequest().setAttribute("title", "商铺管理");
			this.getRequest().setAttribute("url", "/merchant/merchantList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除商铺信息
	 * @author GGM
	 * @date Nov 24, 2015 4:07:16 PM
	 */
	public String merchantDelete()throws Exception{
		
		try{
			if (Utils.isNotNullOrEmpty(ids)) {
				// 获得多个id
				String[] mid = ids.split(",");
				// 判断非空
				if (mid != null && mid.length > 0) {
					// 遍历id
					for (String merid : mid) {
						if (merid != null && !"".equals(merid)) {
							// 根据id获得对象
							merchant = (Merchant) merchantManager.getObjectById(Integer.parseInt(merid));
							merchant.setIsdeleted(1);
							merchantManager.saveObject(merchant);
						}
					}
					//更新缓存
					MerchantCache.setMerchantMap();
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 验证商铺名称重复
	 * @author GGM
	 * @date Nov 24, 2015 4:52:54 PM
	 */
	public String checkMname()throws Exception{
		
		try{
			String mname = getRequest().getParameter("mname");
			if (Utils.isNotNullOrEmpty(mname)) {
				merchant = merchantManager.getMerchantByMname(mname);
				if (merchant != null) {
					result = "succ";
				} else {
					result = "false";
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public MerchantPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(MerchantPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<Merchant> getMerchantList() {
		return merchantList;
	}

	public void setMerchantList(List<Merchant> merchantList) {
		this.merchantList = merchantList;
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
