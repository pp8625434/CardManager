package com.manage.vregist.model.original;

import java.util.Date;

/**
 * AbstractSVregistInfoTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSVregistInfoTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private Integer vid;
	private Date vdate;
	private String visitorunit;
	private String vname;
	private String vpurpose;
	private String acofficials;
	private Date vstartdate;
	private Date venddate;
	private String note;

	// Constructors

	/** default constructor */
	public AbstractSVregistInfoTab() {
	}

	/** minimal constructor */
	public AbstractSVregistInfoTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSVregistInfoTab(Integer id, Integer version, Integer vid,
			Date vdate, String visitorunit, String vname, String vpurpose,
			String acofficials, Date vstartdate, Date venddate, String note) {
		this.id = id;
		this.version = version;
		this.vid = vid;
		this.vdate = vdate;
		this.visitorunit = visitorunit;
		this.vname = vname;
		this.vpurpose = vpurpose;
		this.acofficials = acofficials;
		this.vstartdate = vstartdate;
		this.venddate = venddate;
		this.note = note;
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

	public Integer getVid() {
		return this.vid;
	}

	public void setVid(Integer vid) {
		this.vid = vid;
	}

	public Date getVdate() {
		return this.vdate;
	}

	public void setVdate(Date vdate) {
		this.vdate = vdate;
	}

	public String getVisitorunit() {
		return this.visitorunit;
	}

	public void setVisitorunit(String visitorunit) {
		this.visitorunit = visitorunit;
	}

	public String getVname() {
		return this.vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public String getVpurpose() {
		return this.vpurpose;
	}

	public void setVpurpose(String vpurpose) {
		this.vpurpose = vpurpose;
	}

	public String getAcofficials() {
		return this.acofficials;
	}

	public void setAcofficials(String acofficials) {
		this.acofficials = acofficials;
	}

	public Date getVstartdate() {
		return this.vstartdate;
	}

	public void setVstartdate(Date vstartdate) {
		this.vstartdate = vstartdate;
	}

	public Date getVenddate() {
		return this.venddate;
	}

	public void setVenddate(Date venddate) {
		this.venddate = venddate;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}