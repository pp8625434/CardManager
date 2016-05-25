package com.manage.borrowmedium.action.info;

import java.util.Date;

import com.base.framework.web.PageInfoView;

public class BorrowmediumPageInfo extends PageInfoView{
	
	protected  Integer  f_id;
 	protected  String  f_id_op;
 	protected  Integer  f_mediumtype;
 	protected  String  f_mediumtype_op;
 	protected  String  f_scode;
 	protected  String  f_scode_op;
 	protected  Date  f_borrowdate;
 	protected  String  f_borrowdate_op;
	public Integer getF_id() {
		return f_id;
	}
	public void setF_id(Integer f_id) {
		this.f_id = f_id;
	}
	public String getF_id_op() {
		return f_id_op;
	}
	public void setF_id_op(String f_id_op) {
		this.f_id_op = f_id_op;
	}
	public Integer getF_mediumtype() {
		return f_mediumtype;
	}
	public void setF_mediumtype(Integer f_mediumtype) {
		this.f_mediumtype = f_mediumtype;
	}
	public String getF_mediumtype_op() {
		return f_mediumtype_op;
	}
	public void setF_mediumtype_op(String f_mediumtype_op) {
		this.f_mediumtype_op = f_mediumtype_op;
	}
	public String getF_scode() {
		return f_scode;
	}
	public void setF_scode(String f_scode) {
		this.f_scode = f_scode;
	}
	public String getF_scode_op() {
		return f_scode_op;
	}
	public void setF_scode_op(String f_scode_op) {
		this.f_scode_op = f_scode_op;
	}
	public Date getF_borrowdate() {
		return f_borrowdate;
	}
	public void setF_borrowdate(Date f_borrowdate) {
		this.f_borrowdate = f_borrowdate;
	}
	public String getF_borrowdate_op() {
		return f_borrowdate_op;
	}
	public void setF_borrowdate_op(String f_borrowdate_op) {
		this.f_borrowdate_op = f_borrowdate_op;
	}
 	
}
