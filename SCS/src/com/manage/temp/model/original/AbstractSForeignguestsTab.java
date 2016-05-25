package com.manage.temp.model.original;

/**
 * AbstractSForeignguestsTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSForeignguestsTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private Integer tid;
	private String fname;
	private String translate;
	private String position;
	private String nationality;
	private String passportno;
	private String receiver;
	private String duties;

	// Constructors

	/** default constructor */
	public AbstractSForeignguestsTab() {
	}

	/** minimal constructor */
	public AbstractSForeignguestsTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSForeignguestsTab(Integer id, Integer version, Integer tid,
			String fname, String translate, String position,
			String nationality, String passportno, String receiver,
			String duties) {
		this.id = id;
		this.version = version;
		this.tid = tid;
		this.fname = fname;
		this.translate = translate;
		this.position = position;
		this.nationality = nationality;
		this.passportno = passportno;
		this.receiver = receiver;
		this.duties = duties;
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

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getFname() {
		return this.fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getTranslate() {
		return this.translate;
	}

	public void setTranslate(String translate) {
		this.translate = translate;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getPassportno() {
		return this.passportno;
	}

	public void setPassportno(String passportno) {
		this.passportno = passportno;
	}

	public String getReceiver() {
		return this.receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getDuties() {
		return this.duties;
	}

	public void setDuties(String duties) {
		this.duties = duties;
	}

}