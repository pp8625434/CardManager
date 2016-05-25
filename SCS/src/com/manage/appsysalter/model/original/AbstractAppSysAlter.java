package com.manage.appsysalter.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 应用系统业务模块增加、删除、配置变更审批表
 */

public abstract class AbstractAppSysAlter extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String sysname;
	private String applydept;
	private Integer applydeptid;
	private String applicant;
	private Integer applicantid;
	private Date appliydate;
	private String sysalterreason;
	private String altercontent;
	private String applydeptopinion;
	private String applydeptsign;
	private Integer applydeptsignid;
	private Date applydeptsigndate;
	private String infordeptopinion;
	private String infordeptsign;
	private Integer infordeptsignid;
	private Date infordeptsigndate;
	private String operateresult;
	private String sysmanager;
	private Integer sysmanagerid;
	private Date managersigndate;
	
	private String firstperson;
	private Integer firstpid;
	private Date firstsubdate;
	// Property accessors
	
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

	public String getSysname() {
		return sysname;
	}

	public void setSysname(String sysname) {
		this.sysname = sysname;
	}

	public String getApplydept() {
		return applydept;
	}

	public void setApplydept(String applydept) {
		this.applydept = applydept;
	}

	public Integer getApplydeptid() {
		return applydeptid;
	}

	public void setApplydeptid(Integer applydeptid) {
		this.applydeptid = applydeptid;
	}

	public String getApplicant() {
		return applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}

	public Integer getApplicantid() {
		return applicantid;
	}

	public void setApplicantid(Integer applicantid) {
		this.applicantid = applicantid;
	}

	public Date getAppliydate() {
		return appliydate;
	}

	public void setAppliydate(Date appliydate) {
		this.appliydate = appliydate;
	}

	public String getSysalterreason() {
		return sysalterreason;
	}

	public void setSysalterreason(String sysalterreason) {
		this.sysalterreason = sysalterreason;
	}

	public String getAltercontent() {
		return altercontent;
	}

	public void setAltercontent(String altercontent) {
		this.altercontent = altercontent;
	}

	public String getApplydeptopinion() {
		return applydeptopinion;
	}

	public void setApplydeptopinion(String applydeptopinion) {
		this.applydeptopinion = applydeptopinion;
	}

	public String getApplydeptsign() {
		return applydeptsign;
	}

	public void setApplydeptsign(String applydeptsign) {
		this.applydeptsign = applydeptsign;
	}

	public Integer getApplydeptsignid() {
		return applydeptsignid;
	}

	public void setApplydeptsignid(Integer applydeptsignid) {
		this.applydeptsignid = applydeptsignid;
	}

	public Date getApplydeptsigndate() {
		return applydeptsigndate;
	}

	public void setApplydeptsigndate(Date applydeptsigndate) {
		this.applydeptsigndate = applydeptsigndate;
	}

	public String getInfordeptopinion() {
		return infordeptopinion;
	}

	public void setInfordeptopinion(String infordeptopinion) {
		this.infordeptopinion = infordeptopinion;
	}

	public String getInfordeptsign() {
		return infordeptsign;
	}

	public void setInfordeptsign(String infordeptsign) {
		this.infordeptsign = infordeptsign;
	}

	public Integer getInfordeptsignid() {
		return infordeptsignid;
	}

	public void setInfordeptsignid(Integer infordeptsignid) {
		this.infordeptsignid = infordeptsignid;
	}

	public Date getInfordeptsigndate() {
		return infordeptsigndate;
	}

	public void setInfordeptsigndate(Date infordeptsigndate) {
		this.infordeptsigndate = infordeptsigndate;
	}

	public String getOperateresult() {
		return operateresult;
	}

	public void setOperateresult(String operateresult) {
		this.operateresult = operateresult;
	}

	public String getSysmanager() {
		return sysmanager;
	}

	public void setSysmanager(String sysmanager) {
		this.sysmanager = sysmanager;
	}

	public Integer getSysmanagerid() {
		return sysmanagerid;
	}

	public void setSysmanagerid(Integer sysmanagerid) {
		this.sysmanagerid = sysmanagerid;
	}

	public Date getManagersigndate() {
		return managersigndate;
	}

	public void setManagersigndate(Date managersigndate) {
		this.managersigndate = managersigndate;
	}
}