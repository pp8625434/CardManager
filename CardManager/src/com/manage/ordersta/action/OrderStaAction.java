package com.manage.ordersta.action;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.google.gson.Gson;
import com.manage.ordersta.dao.OrderStaDao;
import com.manage.ordersta.model.OrderJson;
import com.manage.user.model.User;

/**
 * 消费统计
 * @author GGM
 *
 */
public class OrderStaAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(OrderStaAction.class);
	private OrderJson orderJson;
	private Integer mid;
	private String orgid;
	private String date;
	private String data;
	
	private OrderStaDao orderStaDao = (OrderStaDao) SpringContextHolder.getBean(OrderStaDao.class);
	
	/**
	 * @see 跳转到消费统计页面
	 * @author GGM
	 * @date Jan 11, 2016 2:35:37 PM
	 */
	public String toOrderSta()throws Exception{
		return SUCCESS;
	} 
	
	/**
	 * @see 消费统计
	 * @author GGM
	 * @date Jan 11, 2016 2:36:17 PM
	 */
	public String orderSta()throws Exception{
		
		try {
			List<OrderJson> list = null;
			OrderJson orderJson = null;
			Gson gson=new Gson();
				//按天统计
				User user = (User)getSession().getAttribute("user");
				if(user != null){
					list = new ArrayList<OrderJson>();
					HashMap<String, String> map = new HashMap<String, String>();
						map.put("bdate", date+" "+"00:00:00");
						map.put("edate", date+" "+"23:59:59");
						if(Utils.isNotNullOrEmpty(mid)){
							map.put("mid", mid.toString());
						}
						if(Utils.isNotNullOrEmpty(orgid)){
							map.put("orgid", orgid);
						}
						orderJson = orderStaDao.getOrderStaJson(map);
						if(orderJson !=null){
							orderJson.setDate(date);
							list.add(orderJson);
						}else{
							orderJson = new OrderJson();
							orderJson.setDate(date);
							orderJson.setAllprice(0.0);
							orderJson.setCash(0.0);
							orderJson.setPaycreditmoney(0.0);
							list.add(orderJson);
							
						}
						data = gson.toJson(list);
					}
					
					
		} catch (Exception e) {
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

	public OrderJson getOrderJson() {
		return orderJson;
	}

	public void setOrderJson(OrderJson orderJson) {
		this.orderJson = orderJson;
	}

	public String getOrgid() {
		return orgid;
	}

	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}
	
	
}
