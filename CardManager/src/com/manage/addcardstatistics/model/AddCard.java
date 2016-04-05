package com.manage.addcardstatistics.model;

import java.io.Serializable;
import java.math.BigInteger;

import com.base.framework.model.BaseObject;

public class AddCard extends BaseObject{
	private BigInteger count;
	private String date;
	private Integer vtid;
	private String orgid;
	
	
	public String getOrgid() {
		return orgid;
	}
	public void setOrgid(String orgid) {
		this.orgid = orgid;
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

	public BigInteger getCount() {
		return count;
	}
	public void setCount(BigInteger count) {
		this.count = count;
	}
	public Integer getVtid() {
		return vtid;
	}
	public void setVtid(Integer vtid) {
		this.vtid = vtid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
