package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractAAppsysalterTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractAAppsysalterTab implements java.io.Serializable {

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

	// Constructors

	/** default constructor */
	public AbstractAAppsysalterTab() {
	}

	/** minimal constructor */
	public AbstractAAppsysalterTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractAAppsysalterTab(Integer id, Integer version, String sysname,
			String applydept, Integer applydeptid, String applicant,
			Integer applicantid, Date appliydate, String sysalterreason,
			String altercontent, String applydeptopinion, String applydeptsign,
			Integer applydeptsignid, Date applydeptsigndate,
			String infordeptopinion, String infordeptsign,
			Integer infordeptsignid, Date infordeptsigndate,
			String operateresult, String sysmanager, Integer sysmanagerid,
			Date managersigndate) {
		this.id = id;
		this.version = version;
		this.sysname = sysname;
		this.applydept = applydept;
		this.applydeptid = applydeptid;
		this.applicant = applicant;
		this.applicantid = applicantid;
		this.appliydate = appliydate;
		this.sysalterreason = sysalterreason;
		this.altercontent = altercontent;
		this.applydeptopinion = applydeptopinion;
		this.applydeptsign = applydeptsign;
		this.applydeptsignid = applydeptsignid;
		this.applydeptsigndate = applydeptsigndate;
		this.infordeptopinion = infordeptopinion;
		this.infordeptsign = infordeptsign;
		this.infordeptsignid = infordeptsignid;
		this.infordeptsigndate = infordeptsigndate;
		this.operateresult = operateresult;
		this.sysmanager = sysmanager;
		this.sysmanagerid = sysmanagerid;
		this.managersigndate = managersigndate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getSysname() {
		return this.sysname;
	}

	public void setSysname(String sysname) {
		this.sysname = sysname;
	}

	public String getApplydept() {
		return this.applydept;
	}

	public void setApplydept(String applydept) {
		this.applydept = applydept;
	}

	public Integer getApplydeptid() {
		return this.applydeptid;
	}

	public void setApplydeptid(Integer applydeptid) {
		this.applydeptid = applydeptid;
	}

	public String getApplicant() {
		return this.applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}

	public Integer getApplicantid() {
		return this.applicantid;
	}

	public void setApplicantid(Integer applicantid) {
		this.applicantid = applicantid;
	}

	public Date getAppliydate() {
		return this.appliydate;
	}

	public void setAppliydate(Date appliydate) {
		this.appliydate = appliydate;
	}

	public String getSysalterreason() {
		return this.sysalterreason;
	}

	public void setSysalterreason(String sysalterreason) {
		this.sysalterreason = sysalterreason;
	}

	public String getAltercontent() {
		return this.altercontent;
	}

	public void setAltercontent(String altercontent) {
		this.altercontent = altercontent;
	}

	public String getApplydeptopinion() {
		return this.applydeptopinion;
	}

	public void setApplydeptopinion(String applydeptopinion) {
		this.applydeptopinion = applydeptopinion;
	}

	public String getApplydeptsign() {
		return this.applydeptsign;
	}

	public void setApplydeptsign(String applydeptsign) {
		this.applydeptsign = applydeptsign;
	}

	public Integer getApplydeptsignid() {
		return this.applydeptsignid;
	}

	public void setApplydeptsignid(Integer applydeptsignid) {
		this.applydeptsignid = applydeptsignid;
	}

	public Date getApplydeptsigndate() {
		return this.applydeptsigndate;
	}

	public void setApplydeptsigndate(Date applydeptsigndate) {
		this.applydeptsigndate = applydeptsigndate;
	}

	public String getInfordeptopinion() {
		return this.infordeptopinion;
	}

	public void setInfordeptopinion(String infordeptopinion) {
		this.infordeptopinion = infordeptopinion;
	}

	public String getInfordeptsign() {
		return this.infordeptsign;
	}

	public void setInfordeptsign(String infordeptsign) {
		this.infordeptsign = infordeptsign;
	}

	public Integer getInfordeptsignid() {
		return this.infordeptsignid;
	}

	public void setInfordeptsignid(Integer infordeptsignid) {
		this.infordeptsignid = infordeptsignid;
	}

	public Date getInfordeptsigndate() {
		return this.infordeptsigndate;
	}

	public void setInfordeptsigndate(Date infordeptsigndate) {
		this.infordeptsigndate = infordeptsigndate;
	}

	public String getOperateresult() {
		return this.operateresult;
	}

	public void setOperateresult(String operateresult) {
		this.operateresult = operateresult;
	}

	public String getSysmanager() {
		return this.sysmanager;
	}

	public void setSysmanager(String sysmanager) {
		this.sysmanager = sysmanager;
	}

	public Integer getSysmanagerid() {
		return this.sysmanagerid;
	}

	public void setSysmanagerid(Integer sysmanagerid) {
		this.sysmanagerid = sysmanagerid;
	}

	public Date getManagersigndate() {
		return this.managersigndate;
	}

	public void setManagersigndate(Date managersigndate) {
		this.managersigndate = managersigndate;
	}

}