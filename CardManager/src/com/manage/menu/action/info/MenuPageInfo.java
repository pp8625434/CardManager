package com.manage.menu.action.info;

import java.sql.Timestamp;
import java.util.Date;

import com.base.framework.web.PageInfoView;
import com.manage.user.action.info.UserPageInfo;

public class MenuPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_name;
 	protected  String  f_name_op;
	protected  String  f_displayRef;
 	protected  String  f_displayRef_op;
	protected  String  f_description;
 	protected  String  f_description_op;
	protected  Integer  f_orderNum;
 	protected  String  f_orderNum_op;

 	protected  MenuPageInfo parentMenu;
 	protected  UserPageInfo creator;

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
   
    public String getF_name() {
        return this.f_name;
    }
    
    public void setF_name(String f_name) {
        this.f_name = f_name;
    }
    
    public String getF_name_op() {
        return this.f_name_op;
    }
    
    public void setF_name_op(String f_name_op) {
        this.f_name_op = f_name_op;
    }
   
    public String getF_displayRef() {
        return this.f_displayRef;
    }
    
    public void setF_displayRef(String f_displayRef) {
        this.f_displayRef = f_displayRef;
    }
    
    public String getF_displayRef_op() {
        return this.f_displayRef_op;
    }
    
    public void setF_displayRef_op(String f_displayRef_op) {
        this.f_displayRef_op = f_displayRef_op;
    }
   
    public String getF_description() {
        return this.f_description;
    }
    
    public void setF_description(String f_description) {
        this.f_description = f_description;
    }
    
    public String getF_description_op() {
        return this.f_description_op;
    }
    
    public void setF_description_op(String f_description_op) {
        this.f_description_op = f_description_op;
    }
   
    public Integer getF_orderNum() {
        return this.f_orderNum;
    }
    
    public void setF_orderNum(Integer orderNum) {
        this.f_orderNum = f_orderNum;
    }
    
    public String getF_orderNum_op() {
        return this.f_orderNum_op;
    }
    
    public void setF_orderNum_op(String f_orderNum_op) {
        this.f_orderNum_op = f_orderNum_op;
    }
   
	public MenuPageInfo getParentMenu() {
		return parentMenu;
	}

	public void setParentMenu(MenuPageInfo parentMenu) {
		this.parentMenu = parentMenu;
	}
	public UserPageInfo getCreator() {
		return creator;
	}

	public void setCreator(UserPageInfo creator) {
		this.creator = creator;
	}

}
