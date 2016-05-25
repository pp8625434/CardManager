package com.manage.classifiedprint.model.original;

import java.util.Date;

/**
 * AbstractSClassifiedprintTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSClassifiedprintTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private Date registdate;
	private String filename;
	private Integer classification;
	private Integer pages;
	private Integer copies;
	private String qxyt;
	private String printername;
	private String approver;
	private Date printerdate;
	private String rcode;
	private String gname;
	private Integer gid;
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
	public AbstractSClassifiedprintTab() {
	}

	/** minimal constructor */
	public AbstractSClassifiedprintTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSClassifiedprintTab(Integer id, Integer version,
			Date registdate, String filename, Integer classification,
			Integer pages, Integer copies, String qxyt, String printername,
			String approver, Date printerdate, String rcode, String gname,
			Integer gid) {
		this.id = id;
		this.version = version;
		this.registdate = registdate;
		this.filename = filename;
		this.classification = classification;
		this.pages = pages;
		this.copies = copies;
		this.qxyt = qxyt;
		this.printername = printername;
		this.approver = approver;
		this.printerdate = printerdate;
		this.rcode = rcode;
		this.gname = gname;
		this.gid = gid;
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

	public Date getRegistdate() {
		return this.registdate;
	}

	public void setRegistdate(Date registdate) {
		this.registdate = registdate;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Integer getClassification() {
		return classification;
	}

	public void setClassification(Integer classification) {
		this.classification = classification;
	}

	public Integer getPages() {
		return this.pages;
	}

	public void setPages(Integer pages) {
		this.pages = pages;
	}

	public Integer getCopies() {
		return this.copies;
	}

	public void setCopies(Integer copies) {
		this.copies = copies;
	}

	public String getQxyt() {
		return this.qxyt;
	}

	public void setQxyt(String qxyt) {
		this.qxyt = qxyt;
	}

	public String getPrintername() {
		return this.printername;
	}

	public void setPrintername(String printername) {
		this.printername = printername;
	}

	public String getApprover() {
		return this.approver;
	}

	public void setApprover(String approver) {
		this.approver = approver;
	}

	public Date getPrinterdate() {
		return this.printerdate;
	}

	public void setPrinterdate(Date printerdate) {
		this.printerdate = printerdate;
	}

	public String getRcode() {
		return this.rcode;
	}

	public void setRcode(String rcode) {
		this.rcode = rcode;
	}

	public String getGname() {
		return this.gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

}