package com.manage.org.action.info;

import com.base.framework.web.PageInfoView;

public class OrgPageInfo extends PageInfoView{

	protected  Integer  f_orgid;
 	protected  String  f_orgid_op;
 	protected  String  f_name;
 	protected  String  f_name_op;
 	protected  Integer  f_parent;
 	protected  Integer  f_parent_op;
 	protected  Integer  f_orgType;
 	protected  String  f_orgType_op;
 	protected  String f_deleted;
 	protected String f_deleted_op;
 	
 	
	public Integer getF_orgid() {
		return f_orgid;
	}
	public void setF_orgid(Integer f_orgid) {
		this.f_orgid = f_orgid;
	}
	public String getF_orgid_op() {
		return f_orgid_op;
	}
	public void setF_orgid_op(String f_orgid_op) {
		this.f_orgid_op = f_orgid_op;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_name_op() {
		return f_name_op;
	}
	public void setF_name_op(String f_name_op) {
		this.f_name_op = f_name_op;
	}
	public Integer getF_parent() {
		return f_parent;
	}
	public void setF_parent(Integer f_parent) {
		this.f_parent = f_parent;
	}
	public Integer getF_parent_op() {
		return f_parent_op;
	}
	public void setF_parent_op(Integer f_parent_op) {
		this.f_parent_op = f_parent_op;
	}
	public Integer getF_orgType() {
		return f_orgType;
	}
	public void setF_orgType(Integer type) {
		f_orgType = type;
	}
	public String getF_orgType_op() {
		return f_orgType_op;
	}
	public void setF_orgType_op(String type_op) {
		f_orgType_op = type_op;
	}
	 
	public String getF_deleted_op() {
		return f_deleted_op;
	}
	public void setF_deleted_op(String f_deleted_op) {
		this.f_deleted_op = f_deleted_op;
	}
	public String getF_deleted() {
		return f_deleted;
	}
	public void setF_deleted(String f_deleted) {
		this.f_deleted = f_deleted;
	}
}
