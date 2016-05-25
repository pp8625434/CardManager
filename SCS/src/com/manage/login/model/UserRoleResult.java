package com.manage.login.model;

import java.util.List;

public class UserRoleResult {
	
	private Integer code;
	
	private String msg;
	
	private Integer userid;
	
	private String username;
	
	private List<PlatUserRole> purList;

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<PlatUserRole> getPurList() {
		return purList;
	}

	public void setPurList(List<PlatUserRole> purList) {
		this.purList = purList;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
}
