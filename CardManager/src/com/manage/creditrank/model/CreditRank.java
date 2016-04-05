package com.manage.creditrank.model;

import java.io.Serializable;

import com.base.framework.model.BaseObject;

public class CreditRank extends BaseObject{
	
	private String cellphone;
	private String realname;
	private Double sumcredit;
	
	

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	
	public Double getSumcredit() {
		return sumcredit;
	}

	public void setSumcredit(Double sumcredit) {
		this.sumcredit = sumcredit;
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

}
