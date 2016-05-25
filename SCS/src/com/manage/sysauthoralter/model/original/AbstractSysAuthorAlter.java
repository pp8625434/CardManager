package com.manage.sysauthoralter.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 应用系统权限变更内容表
 */

public abstract class AbstractSysAuthorAlter extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String sysname;
	private String nowauthor;
	private String afterauthor;
	private Integer did;
	
	private String firstperson;
	private Integer firstpid;
	private Date firstsubdate;
	
	
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
	public int hashCode() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getFirstperson() {
		return firstperson;
	}

	public void setFirstperson(String firstperson) {
		this.firstperson = firstperson;
	}

	public Integer getFirstpid() {
		return firstpid;
	}

	public void setFirstpid(Integer firstpid) {
		this.firstpid = firstpid;
	}

	public Date getFirstsubdate() {
		return firstsubdate;
	}

	public void setFirstsubdate(Date firstsubdate) {
		this.firstsubdate = firstsubdate;
	}
	public String getSysname() {
		return sysname;
	}
	public void setSysname(String sysname) {
		this.sysname = sysname;
	}
	public String getNowauthor() {
		return nowauthor;
	}
	public void setNowauthor(String nowauthor) {
		this.nowauthor = nowauthor;
	}
	public String getAfterauthor() {
		return afterauthor;
	}
	public void setAfterauthor(String afterauthor) {
		this.afterauthor = afterauthor;
	}
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}

}