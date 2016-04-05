package com.base.framework.security.action.info;

import java.sql.Timestamp;
import java.util.Date;

import com.base.framework.web.PageInfoView;
import com.base.framework.security.action.info.RolePageInfo;
import com.manage.menu.action.info.MenuLinkPageInfo;


public class RoleMenuLinkPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;

 	protected  MenuLinkPageInfo menuLink;
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

	public MenuLinkPageInfo getMenuLink() {
		return menuLink;
	}

	public void setMenuLink(MenuLinkPageInfo menuLink) {
		this.menuLink = menuLink;
	}

}
