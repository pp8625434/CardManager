package com.manage.statesecrets.model.original;

import java.util.Date;

public class AbstractSStatesecretsTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String orgname;
	private String orgid;
	private Date filltime;
	private String pname;
	private String cellphone;
	private String mname;
	private Integer adjustpurpose;
	private String oclassification;
	private String newclassification;
	private String orperiod;
	private String newperiod;
	private String orcontrolrange;
	private String newcontrolrange;
	private String chdecryption;
	private String reviewercomments;
	private String dsign;
	private Integer did;
	private Date auditdate;
	private String examopinion;
	private String examsign;
	private Date examdate;
	private Integer eaxmid;
	private String username;
	private Integer userid;

	// Constructors

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	/** default constructor */
	public AbstractSStatesecretsTab() {
	}

	/** minimal constructor */
	public AbstractSStatesecretsTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSStatesecretsTab(Integer id, Integer version,
			String orgname, String orgid, Date filltime, String pname,
			String cellphone, String mname, Integer adjustpurpose,
			String oclassification, String newclassification, String orperiod,
			String newperiod, String orcontrolrange, String newcontrolrange,
			String chdecryption, String reviewercomments, String dsign,
			Integer did, Date auditdate, String examopinion, String examsign,
			Date examdate, Integer eaxmid,String username,Integer userid) {
		this.id = id;
		this.version = version;
		this.orgname = orgname;
		this.orgid = orgid;
		this.filltime = filltime;
		this.pname = pname;
		this.cellphone = cellphone;
		this.mname = mname;
		this.adjustpurpose = adjustpurpose;
		this.oclassification = oclassification;
		this.newclassification = newclassification;
		this.orperiod = orperiod;
		this.newperiod = newperiod;
		this.orcontrolrange = orcontrolrange;
		this.newcontrolrange = newcontrolrange;
		this.chdecryption = chdecryption;
		this.reviewercomments = reviewercomments;
		this.dsign = dsign;
		this.did = did;
		this.auditdate = auditdate;
		this.examopinion = examopinion;
		this.examsign = examsign;
		this.examdate = examdate;
		this.eaxmid = eaxmid;
		this.username = username;
		this.userid = userid;
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

	public String getOrgname() {
		return this.orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public String getOrgid() {
		return this.orgid;
	}

	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}

	public Date getFilltime() {
		return this.filltime;
	}

	public void setFilltime(Date filltime) {
		this.filltime = filltime;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getCellphone() {
		return this.cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getMname() {
		return this.mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public Integer getAdjustpurpose() {
		return this.adjustpurpose;
	}

	public void setAdjustpurpose(Integer adjustpurpose) {
		this.adjustpurpose = adjustpurpose;
	}

	public String getOclassification() {
		return this.oclassification;
	}

	public void setOclassification(String oclassification) {
		this.oclassification = oclassification;
	}

	public String getNewclassification() {
		return this.newclassification;
	}

	public void setNewclassification(String newclassification) {
		this.newclassification = newclassification;
	}

	public String getOrperiod() {
		return this.orperiod;
	}

	public void setOrperiod(String orperiod) {
		this.orperiod = orperiod;
	}

	public String getNewperiod() {
		return this.newperiod;
	}

	public void setNewperiod(String newperiod) {
		this.newperiod = newperiod;
	}

	public String getOrcontrolrange() {
		return this.orcontrolrange;
	}

	public void setOrcontrolrange(String orcontrolrange) {
		this.orcontrolrange = orcontrolrange;
	}

	public String getNewcontrolrange() {
		return this.newcontrolrange;
	}

	public void setNewcontrolrange(String newcontrolrange) {
		this.newcontrolrange = newcontrolrange;
	}

	public String getChdecryption() {
		return this.chdecryption;
	}

	public void setChdecryption(String chdecryption) {
		this.chdecryption = chdecryption;
	}

	public String getReviewercomments() {
		return this.reviewercomments;
	}

	public void setReviewercomments(String reviewercomments) {
		this.reviewercomments = reviewercomments;
	}

	public String getDsign() {
		return this.dsign;
	}

	public void setDsign(String dsign) {
		this.dsign = dsign;
	}

	public Integer getDid() {
		return this.did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Date getAuditdate() {
		return this.auditdate;
	}

	public void setAuditdate(Date auditdate) {
		this.auditdate = auditdate;
	}

	public String getExamopinion() {
		return this.examopinion;
	}

	public void setExamopinion(String examopinion) {
		this.examopinion = examopinion;
	}

	public String getExamsign() {
		return this.examsign;
	}

	public void setExamsign(String examsign) {
		this.examsign = examsign;
	}

	public Date getExamdate() {
		return this.examdate;
	}

	public void setExamdate(Date examdate) {
		this.examdate = examdate;
	}

	public Integer getEaxmid() {
		return this.eaxmid;
	}

	public void setEaxmid(Integer eaxmid) {
		this.eaxmid = eaxmid;
	}

}
