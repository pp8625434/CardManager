package com.base.framework.security.action.info;

import java.sql.Timestamp;
import java.util.Date;

import com.base.framework.web.PageInfoView;
import com.manage.user.action.info.UserPageInfo;
import com.base.framework.security.action.info.RolePageInfo;

public class UserRolePageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;

 	protected  UserPageInfo securityUser;
 	protected  RolePageInfo role;

    public Integer getF_id() {
        return this.f_id;
    }
    
    public void setF_id(Integer f_id) {
        this.f_id = f_id;
    }
    
    public String getF_id_op() {
        return this.f_id_op;
    }
    
    public void setF_id_op(String f_id_op) {
        this.f_id_op = f_id_op;
    }
   
	public RolePageInfo getRole() {
		return role;
	}

	public void setRole(RolePageInfo role) {
		this.role = role;
	}

	public UserPageInfo getSecurityUser() {
		return securityUser;
	}

	public void setSecurityUser(UserPageInfo securityUser) {
		this.securityUser = securityUser;
	}

}
