package com.manage.temp.model.original;

/**
 * AbstractASyspermissioninfoTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractASyspermissioninfoTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private Integer aid;
	private String appsysname;
	private String nowuserright;
	private String afteruserright;

	// Constructors

	/** default constructor */
	public AbstractASyspermissioninfoTab() {
	}

	/** minimal constructor */
	public AbstractASyspermissioninfoTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractASyspermissioninfoTab(Integer id, Integer version,
			Integer aid, String appsysname, String nowuserright,
			String afteruserright) {
		this.id = id;
		this.version = version;
		this.aid = aid;
		this.appsysname = appsysname;
		this.nowuserright = nowuserright;
		this.afteruserright = afteruserright;
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

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getAppsysname() {
		return this.appsysname;
	}

	public void setAppsysname(String appsysname) {
		this.appsysname = appsysname;
	}

	public String getNowuserright() {
		return this.nowuserright;
	}

	public void setNowuserright(String nowuserright) {
		this.nowuserright = nowuserright;
	}

	public String getAfteruserright() {
		return this.afteruserright;
	}

	public void setAfteruserright(String afteruserright) {
		this.afteruserright = afteruserright;
	}

}