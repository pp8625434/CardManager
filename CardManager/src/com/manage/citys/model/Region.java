package com.manage.citys.model;

import java.io.Serializable;
import java.util.Date;


public class Region implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5940466641218391260L;

	protected Integer rid;
	protected String rtagid;
	protected String rname;
	protected Integer parentid;
	protected Integer rorder;
	protected Date addtime;
	protected Integer isdelete;
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getRtagid() {
		return rtagid;
	}
	public void setRtagid(String rtagid) {
		this.rtagid = rtagid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	public Integer getRorder() {
		return rorder;
	}
	public void setRorder(Integer rorder) {
		this.rorder = rorder;
	}
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public Integer getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}
	
}
