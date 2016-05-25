package com.manage.login.action.info;

import java.util.Date;

import com.base.framework.web.PageInfoView;

public class LoginLogPageInfo extends PageInfoView{
	
	private  String f_id;
	private  String f_id_op;
	private Integer f_userid;
	private Integer f_userid_op;
	private String f_username;
	private String f_username_op;
	private String f_userip; //用户IP
	private String f_userip_op; //用户IP
	private Date f_logindate; //登录时间
	private Date f_logindate_op; //登录时间
	private Integer f_isfront;
	private Integer f_isfront_op;
	
	public String getF_id() {
		return f_id;
	}
	public void setF_id(String fId) {
		f_id = fId;
	}
	public String getF_id_op() {
		return f_id_op;
	}
	public void setF_id_op(String fIdOp) {
		f_id_op = fIdOp;
	}
	public Integer getF_userid() {
		return f_userid;
	}
	public void setF_userid(Integer fUserid) {
		f_userid = fUserid;
	}
	public Integer getF_userid_op() {
		return f_userid_op;
	}
	public void setF_userid_op(Integer fUseridOp) {
		f_userid_op = fUseridOp;
	}
	public String getF_username() {
		return f_username;
	}
	public void setF_username(String fUsername) {
		f_username = fUsername;
	}
	public String getF_username_op() {
		return f_username_op;
	}
	public void setF_username_op(String fUsernameOp) {
		f_username_op = fUsernameOp;
	}
	public String getF_userip() {
		return f_userip;
	}
	public void setF_userip(String fUserip) {
		f_userip = fUserip;
	}
	public String getF_userip_op() {
		return f_userip_op;
	}
	public void setF_userip_op(String fUseripOp) {
		f_userip_op = fUseripOp;
	}
	public Date getF_logindate() {
		return f_logindate;
	}
	public void setF_logindate(Date fLogindate) {
		f_logindate = fLogindate;
	}
	public Date getF_logindate_op() {
		return f_logindate_op;
	}
	public void setF_logindate_op(Date fLogindateOp) {
		f_logindate_op = fLogindateOp;
	}
	public Integer getF_isfront() {
		return f_isfront;
	}
	public void setF_isfront(Integer fIsfront) {
		f_isfront = fIsfront;
	}
	public Integer getF_isfront_op() {
		return f_isfront_op;
	}
	public void setF_isfront_op(Integer fIsfrontOp) {
		f_isfront_op = fIsfrontOp;
	}
	
	

}
