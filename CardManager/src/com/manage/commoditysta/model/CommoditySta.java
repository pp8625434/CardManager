package com.manage.commoditysta.model;

import java.io.Serializable;

import com.base.framework.model.BaseObject;

public class CommoditySta extends BaseObject{
	private Integer cid;
	private String cname;
	private Double sumcount;
	private String unit;
	private Double allprice;
	private String date;
	
	

	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}


	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Double getSumcount() {
		return sumcount;
	}
	public void setSumcount(Double sumcount) {
		this.sumcount = sumcount;
	}

	public Double getAllprice() {
		return allprice;
	}
	public void setAllprice(Double allprice) {
		this.allprice = allprice;
	}
	@Override
	public boolean equals(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public Serializable getPrimarykey() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Integer getVersion() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void setVersion(Integer version) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
