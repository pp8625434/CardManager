package com.manage.order.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.card.model.Card;
import com.manage.commodity.model.Commodity;
import com.manage.commodity.service.CommodityManager;
import com.manage.order.action.info.OrderPageInfo;
import com.manage.order.model.Order;
import com.manage.order.model.OrderBill;
import com.manage.order.service.OrderBillManager;
import com.manage.order.service.OrderManager;

/**
 * 订单管理
 * @author GGM
 *
 */
public class OrderAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(OrderAction.class);
	private OrderPageInfo pageInfo;
	private Order order;
	private OrderBill orderBill;
	private List<Order> oList;
	private List<OrderBill> obList;
	private String params;
	private String mname;
	private Integer mid;
	private String orgid;
	private String orgname;
	private String startDate;
	private String endDate;
	
	private OrderManager orderManager = (OrderManager) SpringContextHolder.getBean(Order.class);
	private OrderBillManager orderBillManager = (OrderBillManager) SpringContextHolder.getBean(OrderBill.class);
	
	/**
	 * @see 查询订单列表
	 * @author GGM
	 * @date Jan 25, 2016 3:45:51 PM
	 */
	public String orderList()throws Exception{
		
		try {
			pageInfo = pageInfo == null ? new OrderPageInfo() : pageInfo;
			// 设置查询条件
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sqlBuffer = new StringBuffer();
			sqlBuffer.append(" 1=1 ");
			
			if(mid != null && !"".equals(mid)){
				sqlBuffer.append(" and mid='").append(mid).append("'");
			}
			if(orgid != null && !"".equals(orgid)){
				sqlBuffer.append(" and orgid='").append(orgid).append("'");
			}
			String sql = sqlBuffer.toString();
			// 添加时间区间查询条件
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 拼接sql
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sql += " and addtime >=' " + startDate + " 00:00:00' ";
					sql += " and addtime <=' " + endDate + " 23:59:59' ";					
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sql += " and addtime >=' " + startDate + " 00:00:00' ";
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sql += " and addtime <='" + endDate + "23:59:59' ";
				}
			}
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sql);
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			//获得订单列表
			oList = orderManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 订单详情
	 * @author GGM
	 * @date Jan 25, 2016 5:33:26 PM
	 */
	public String orderInfo()throws Exception{
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(order != null && order.getId() != null){
				order = (Order) orderManager.getObjectById(order.getId());
				obList = orderBillManager.getOrderBillById(order.getId());
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

	public OrderPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(OrderPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOList() {
		return oList;
	}

	public void setOList(List<Order> list) {
		oList = list;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getOrgid() {
		return orgid;
	}

	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getOrgname() {
		return orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public List<OrderBill> getObList() {
		return obList;
	}

	public void setObList(List<OrderBill> obList) {
		this.obList = obList;
	}

	public OrderBill getOrderBill() {
		return orderBill;
	}

	public void setOrderBill(OrderBill orderBill) {
		this.orderBill = orderBill;
	}

}
