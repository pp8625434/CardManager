package com.manage.flowchart.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.alibaba.fastjson.annotation.JSONField;



public class Flowchart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8013591936633413321L;
	
	
	private Integer id;
	
	private Integer version;
	
	private String fcname;
	
	private Integer flowId;
	

	
	
	
	
	private Date createDate;
	
	
	


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

	public String getFcname() {
		return fcname;
	}

	public void setFcname(String fcname) {
		this.fcname = fcname;
	}

	public Integer getFlowId() {
		return flowId;
	}

	public void setFlowId(Integer flowId) {
		this.flowId = flowId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	

}