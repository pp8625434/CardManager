package com.manage.login.model.original;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.model.BaseObject;
import com.manage.login.model.LoginLog;

public abstract class LoginLogAbstract extends BaseObject implements Serializable{

	protected String id;
	protected Integer userid;
	protected String username;
	protected String userip; //用户IP
	protected Date logindate; //登录时间
	protected Integer isfront; //1:为前台登录；2：为后台登录
	
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

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

	public String getUserip() {
		return userip;
	}

	public void setUserip(String userip) {
		this.userip = userip;
	}

	public Date getLogindate() {
		return logindate;
	}

	public void setLogindate(Date logindate) {
		this.logindate = logindate;
	}

	public Integer getIsfront() {
		return isfront;
	}

	public void setIsfront(Integer isfront) {
		this.isfront = isfront;
	}

	public boolean equals(Object other) {
        if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof LoginLog) ) return false;
		 LoginLog castOther = ( LoginLog ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
  }
  
  public int hashCode() {
       HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
       hcb.append(getId());

       return hcb.toHashCode();
   }

  public String toString() {
      ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
      sb.append("id", this.id)
		.append("userid", this.userid)
		.append("username", this.username)
		.append("userip",this.userip)
		.append("logindate",this.logindate)
		.append("isfront", this.isfront);
       return sb.toString();
  }

  public Serializable getPrimarykey(){
  		return id;
  }
  
}
