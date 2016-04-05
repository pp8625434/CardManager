package com.manage.workdate.action.info;

import java.util.Date;

import com.base.framework.web.PageInfoView;

public class WorkdatePageInfo extends PageInfoView{
	
	protected Integer f_id;
	protected String f_id_op;
	protected Integer f_dtype;
	protected String f_dtype_op;
	protected Date f_thedate;
	protected String f_thedate_op;
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
	public Integer getF_dtype() {
		return f_dtype;
	}
	public void setF_dtype(Integer f_dtype) {
		this.f_dtype = f_dtype;
	}
	public String getF_dtype_op() {
		return f_dtype_op;
	}
	public void setF_dtype_op(String f_dtype_op) {
		this.f_dtype_op = f_dtype_op;
	}
	public Date getF_thedate() {
		return f_thedate;
	}
	public void setF_thedate(Date f_thedate) {
		this.f_thedate = f_thedate;
	}
	public String getF_thedate_op() {
		return f_thedate_op;
	}
	public void setF_thedate_op(String f_thedate_op) {
		this.f_thedate_op = f_thedate_op;
	}
	
	
}
