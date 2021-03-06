package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractAAuthorityalterTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractAAuthorityalterTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String name;
	private String position;
	private String dept;
	private Integer security;
	private String workplace;
	private String cellphone;
	private String alterreason;
	private String applicantsign;
	private Integer applicantid;
	private Date applicantsigndate;
	private String deptleaderopinion;
	private String deptleadersign;
	private Integer deptleaderid;
	private Date leadersigndate;
	private String securityopinion;
	private String securitysign;
	private Integer securityid;
	private Date securitysigndate;
	private Integer isfinishoperate;
	private Integer isinformapplicat;
	private String infordeptsign;
	private Integer infordeptsignid;
	private Date infordeptsigndate;

	// Constructors

	/** default constructor */
	public AbstractAAuthorityalterTab() {
	}

	/** minimal constructor */
	public AbstractAAuthorityalterTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractAAuthorityalterTab(Integer id, Integer version, String name,
			String position, String dept, Integer security, String workplace,
			String cellphone, String alterreason, String applicantsign, Integer applicantid, Date applicantsigndate,
			String deptleaderopinion, String deptleadersign,
			Integer deptleaderid, Date leadersigndate, String securityopinion,
			String securitysign, Integer securityid, Date securitysigndate,
			Integer isfinishoperate, Integer isinformapplicat,
			String infordeptsign, Integer infordeptsignid,
			Date infordeptsigndate) {
		this.id = id;
		this.version = version;
		this.name = name;
		this.position = position;
		this.dept = dept;
		this.security = security;
		this.workplace = workplace;
		this.cellphone = cellphone;
		this.alterreason = alterreason;
		this.applicantsign = applicantsign;
		this.applicantid = applicantid;
		this.applicantsigndate = applicantsigndate;
		this.deptleaderopinion = deptleaderopinion;
		this.deptleadersign = deptleadersign;
		this.deptleaderid = deptleaderid;
		this.leadersigndate = leadersigndate;
		this.securityopinion = securityopinion;
		this.securitysign = securitysign;
		this.securityid = securityid;
		this.securitysigndate = securitysigndate;
		this.isfinishoperate = isfinishoperate;
		this.isinformapplicat = isinformapplicat;
		this.infordeptsign = infordeptsign;
		this.infordeptsignid = infordeptsignid;
		this.infordeptsigndate = infordeptsigndate;
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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getDept() {
		return this.dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public Integer getSecurity() {
		return this.security;
	}

	public void setSecurity(Integer security) {
		this.security = security;
	}

	public String getWorkplace() {
		return this.workplace;
	}

	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}

	public String getCellphone() {
		return this.cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getAlterreason() {
		return this.alterreason;
	}

	public void setAlterreason(String alterreason) {
		this.alterreason = alterreason;
	}


	public String getApplicantsign() {
		return this.applicantsign;
	}

	public void setApplicantsign(String applicantsign) {
		this.applicantsign = applicantsign;
	}

	public Integer getApplicantid() {
		return this.applicantid;
	}

	public void setApplicantid(Integer applicantid) {
		this.applicantid = applicantid;
	}

	public Date getApplicantsigndate() {
		return this.applicantsigndate;
	}

	public void setApplicantsigndate(Date applicantsigndate) {
		this.applicantsigndate = applicantsigndate;
	}

	public String getDeptleaderopinion() {
		return this.deptleaderopinion;
	}

	public void setDeptleaderopinion(String deptleaderopinion) {
		this.deptleaderopinion = deptleaderopinion;
	}

	public String getDeptleadersign() {
		return this.deptleadersign;
	}

	public void setDeptleadersign(String deptleadersign) {
		this.deptleadersign = deptleadersign;
	}

	public Integer getDeptleaderid() {
		return this.deptleaderid;
	}

	public void setDeptleaderid(Integer deptleaderid) {
		this.deptleaderid = deptleaderid;
	}

	public Date getLeadersigndate() {
		return this.leadersigndate;
	}

	public void setLeadersigndate(Date leadersigndate) {
		this.leadersigndate = leadersigndate;
	}

	public String getSecurityopinion() {
		return this.securityopinion;
	}

	public void setSecurityopinion(String securityopinion) {
		this.securityopinion = securityopinion;
	}

	public String getSecuritysign() {
		return this.securitysign;
	}

	public void setSecuritysign(String securitysign) {
		this.securitysign = securitysign;
	}

	public Integer getSecurityid() {
		return this.securityid;
	}

	public void setSecurityid(Integer securityid) {
		this.securityid = securityid;
	}

	public Date getSecuritysigndate() {
		return this.securitysigndate;
	}

	public void setSecuritysigndate(Date securitysigndate) {
		this.securitysigndate = securitysigndate;
	}

	public Integer getIsfinishoperate() {
		return this.isfinishoperate;
	}

	public void setIsfinishoperate(Integer isfinishoperate) {
		this.isfinishoperate = isfinishoperate;
	}

	public Integer getIsinformapplicat() {
		return this.isinformapplicat;
	}

	public void setIsinformapplicat(Integer isinformapplicat) {
		this.isinformapplicat = isinformapplicat;
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

}