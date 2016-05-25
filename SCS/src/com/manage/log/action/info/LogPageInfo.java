package com.manage.log.action.info;

import java.sql.Timestamp;
import java.util.Date;

import com.base.framework.web.PageInfoView;

public class LogPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
 	
	protected  Integer  f_type;
 	protected  String  f_type_op;
	
 	protected  Integer  f_function;
 	protected  String  f_function_op;
 	
 	protected  Integer  f_functionId;
 	protected  String  f_functionId_op;
 	
 	protected  String  f_functionName;
 	protected  String  f_functionName_op;
 	
 	protected  String  f_creatorName;
 	protected  String  f_creatorName_op;
 	
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
	public Integer getF_type() {
		return f_type;
	}
	public void setF_type(Integer f_type) {
		this.f_type = f_type;
	}
	public String getF_type_op() {
		return f_type_op;
	}
	public void setF_type_op(String f_type_op) {
		this.f_type_op = f_type_op;
	}
	public Integer getF_function() {
		return f_function;
	}
	public void setF_function(Integer f_function) {
		this.f_function = f_function;
	}
	public String getF_function_op() {
		return f_function_op;
	}
	public void setF_function_op(String f_function_op) {
		this.f_function_op = f_function_op;
	}
	public Integer getF_functionId() {
		return f_functionId;
	}
	public void setF_functionId(Integer id) {
		f_functionId = id;
	}
	public String getF_functionId_op() {
		return f_functionId_op;
	}
	public void setF_functionId_op(String id_op) {
		f_functionId_op = id_op;
	}
	public String getF_functionName() {
		return f_functionName;
	}
	public void setF_functionName(String name) {
		f_functionName = name;
	}
	public String getF_functionName_op() {
		return f_functionName_op;
	}
	public void setF_functionName_op(String name_op) {
		f_functionName_op = name_op;
	}
	public String getF_creatorName() {
		return f_creatorName;
	}
	public void setF_creatorName(String name) {
		f_creatorName = name;
	}
	public String getF_creatorName_op() {
		return f_creatorName_op;
	}
	public void setF_creatorName_op(String name_op) {
		f_creatorName_op = name_op;
	}
 	
 	
}
