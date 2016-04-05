package com.manage.doubledate.model.original;

import java.io.Serializable;
import java.util.Date;
import com.base.framework.model.BaseObject;


public class DoubledateAbstract extends BaseObject implements Serializable{
	
	protected Integer id;
	protected Integer version;
	protected String doublename;
	protected Date adate;
	protected Integer times;
	protected Integer isuse;
	protected Date addtime;
	protected Integer creator;
	protected Integer isdeleted;
	protected String orgid;
	
	public String getOrgid() {
		return orgid;
	}
	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getVersion() {
		return version;
	}
	public void setVersion(Integer version) {
		this.version = version;
	}
	public String getDoublename() {
		return doublename;
	}
	public void setDoublename(String doublename) {
		this.doublename = doublename;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
	}
	public Integer getTimes() {
		return times;
	}
	public void setTimes(Integer times) {
		this.times = times;
	}
	public Integer getIsuse() {
		return isuse;
	}
	public void setIsuse(Integer isuse) {
		this.isuse = isuse;
	}

	public Integer getCreator() {
		return creator;
	}
	public void setCreator(Integer creator) {
		this.creator = creator;
	}

	@Override
	public boolean equals(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
	public Integer getIsdeleted() {
		return isdeleted;
	}
	public void setIsdeleted(Integer isdeleted) {
		this.isdeleted = isdeleted;
	}
	@Override
	public Serializable getPrimarykey() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return null;
	}
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	
	

}
