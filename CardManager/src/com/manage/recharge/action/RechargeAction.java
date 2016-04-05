package com.manage.recharge.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.advertisement.model.Advertisement;
import com.manage.card.model.Card;
import com.manage.card.service.CardManager;
import com.manage.recharge.action.info.RechargePageInfo;
import com.manage.recharge.model.Recharge;
import com.manage.recharge.service.RechargeManager;
import com.manage.user.model.User;

public class RechargeAction extends BaseAction {

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(RechargeAction.class);	
	private Recharge recharge;
	private RechargePageInfo pageInfo;
	private List<Recharge> rechargeList;
	private String params;
	private String isuse;
	private String ids;
	
//	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	private RechargeManager rechargeManager=(RechargeManager) SpringContextHolder.getBean(Recharge.class);
	private CardManager cardManager = (CardManager) SpringContextHolder.getBean(Card.class);
	/**
	 * @author DL
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 获得列表
	 */
	public String rechargeList() throws Exception{
		
		try{
			// 判断分页参数是否为空，为空则创建
			pageInfo = pageInfo == null ? new RechargePageInfo() : pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			//获得列表
			rechargeList = rechargeManager.getList(sarchPageInfo);
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
	 * @see 新增
	 */
	public String toEditRecharge()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (recharge != null && recharge.getId() != null) {
				recharge = (Recharge) rechargeManager.getObjectById(recharge.getId());
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
	 * @see 保存
	 */
	public String saveRecharge()throws Exception{
		try {
			//update card表的余额
			Integer object = null;
			if(recharge.getCardnum() != null && !"".equals(recharge.getCardnum())){
				object = rechargeManager.updateCardMoney(recharge.getCardnum(),recharge.getMoney());	//更新card的money
			}
			
			if(object != null && object == 1 ){
				User user = (User) getSession().getAttribute("user");
				recharge.setVersion(1);
				recharge.setCreatedate(new Date());
				recharge.setCreator(user.getId());
				recharge.setCreatorname(user.getName());
				recharge.setRechargetype(1);			//默认后台 1
				rechargeManager.saveObject(recharge);
			}
			this.getRequest().setAttribute("title", "充值管理");
			this.getRequest().setAttribute("url", "/recharge/rechargeList.action");
			this.getRequest().setAttribute("params", this.params);
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


	public Recharge getAdvertisement() {
		return recharge;
	}


	public void setAdvertisement(Recharge advertisement) {
		this.recharge = advertisement;
	}




	public List<Recharge> getAdvertisementList() {
		return rechargeList;
	}


	public void setAdvertisementList(List<Recharge> advertisementList) {
		this.rechargeList = advertisementList;
	}


	public String getIsuse() {
		return isuse;
	}


	public void setIsuse(String isuse) {
		this.isuse = isuse;
	}

	public Recharge getRecharge() {
		return recharge;
	}

	public void setRecharge(Recharge recharge) {
		this.recharge = recharge;
	}

	public RechargePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(RechargePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<Recharge> getRechargeList() {
		return rechargeList;
	}

	public void setRechargeList(List<Recharge> rechargeList) {
		this.rechargeList = rechargeList;
	}
}
