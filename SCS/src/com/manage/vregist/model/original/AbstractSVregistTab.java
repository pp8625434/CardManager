package com.manage.vregist.model.original;

import java.util.Date;

/**
 * AbstractSVregistTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSVregistTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String partname;
	private String roomcode;
	private Date recordstartdate;
	private Date recordenddate;
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
	public AbstractSVregistTab() {
	}

	/** minimal constructor */
	public AbstractSVregistTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSVregistTab(Integer id, Integer version, String partname,
			String roomcode, Date recordstartdate, Date recordenddate,String username,Integer userid) {
		this.id = id;
		this.version = version;
		this.partname = partname;
		this.roomcode = roomcode;
		this.recordstartdate = recordstartdate;
		this.recordenddate = recordenddate;
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

	public String getPartname() {
		return this.partname;
	}

	public void setPartname(String partname) {
		this.partname = partname;
	}

	public String getRoomcode() {
		return this.roomcode;
	}

	public void setRoomcode(String roomcode) {
		this.roomcode = roomcode;
	}

	public Date getRecordstartdate() {
		return this.recordstartdate;
	}

	public void setRecordstartdate(Date recordstartdate) {
		this.recordstartdate = recordstartdate;
	}

	public Date getRecordenddate() {
		return this.recordenddate;
	}

	public void setRecordenddate(Date recordenddate) {
		this.recordenddate = recordenddate;
	}


}