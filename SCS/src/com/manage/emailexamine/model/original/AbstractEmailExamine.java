package com.manage.emailexamine.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 外网邮箱开通、撤销申请审批表
 */

public abstract class AbstractEmailExamine extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String deptname;
	private Integer deptid;
	private String applicant;
	private Integer applicantid;
	private String offices;
	private Integer officesid;
	private String linktype;
	private String openreason;
	private String revokereason;
	private String applydeptopinion;
	private String applydeptsign;
	private Integer applydeptsignid;
	private Date applydeptsigndate;
	private String archivesdept;
	private String archivessign;
	private Integer archivesid;
	private Date archivesdate;
	private String operatrecord;
	private String webmaster;
	private Integer webmasterid;
	private Date webmasterdate;
	private Date applicantdate;
	
	private String firstperson;
	private Integer firstpid;
	private Date firstsubdate;
	
	private String applicantsign;
	// Property accessors

	@Override
	public boolean equals(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
	public String getApplicantsign() {
		return applicantsign;
	}
	public void setApplicantsign(String applicantsign) {
		this.applicantsign = applicantsign;
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
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public Integer getDeptid() {
		return deptid;
	}
	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
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
	public String getOffices() {
		return offices;
	}
	public void setOffices(String offices) {
		this.offices = offices;
	}
	public Integer getOfficesid() {
		return officesid;
	}
	public void setOfficesid(Integer officesid) {
		this.officesid = officesid;
	}
	public String getLinktype() {
		return linktype;
	}
	public void setLinktype(String linktype) {
		this.linktype = linktype;
	}
	public String getOpenreason() {
		return openreason;
	}
	public void setOpenreason(String openreason) {
		this.openreason = openreason;
	}
	public String getRevokereason() {
		return revokereason;
	}
	public void setRevokereason(String revokereason) {
		this.revokereason = revokereason;
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
	public String getArchivesdept() {
		return archivesdept;
	}
	public void setArchivesdept(String archivesdept) {
		this.archivesdept = archivesdept;
	}
	public String getArchivessign() {
		return archivessign;
	}
	public void setArchivessign(String archivessign) {
		this.archivessign = archivessign;
	}
	public Integer getArchivesid() {
		return archivesid;
	}
	public void setArchivesid(Integer archivesid) {
		this.archivesid = archivesid;
	}
	public Date getArchivesdate() {
		return archivesdate;
	}
	public void setArchivesdate(Date archivesdate) {
		this.archivesdate = archivesdate;
	}
	public String getOperatrecord() {
		return operatrecord;
	}
	public void setOperatrecord(String operatrecord) {
		this.operatrecord = operatrecord;
	}
	public String getWebmaster() {
		return webmaster;
	}
	public void setWebmaster(String webmaster) {
		this.webmaster = webmaster;
	}
	public Integer getWebmasterid() {
		return webmasterid;
	}
	public void setWebmasterid(Integer webmasterid) {
		this.webmasterid = webmasterid;
	}
	public Date getWebmasterdate() {
		return webmasterdate;
	}
	public void setWebmasterdate(Date webmasterdate) {
		this.webmasterdate = webmasterdate;
	}
	public Date getApplicantdate() {
		return applicantdate;
	}
	public void setApplicantdate(Date applicantdate) {
		this.applicantdate = applicantdate;
	}
	
	
}