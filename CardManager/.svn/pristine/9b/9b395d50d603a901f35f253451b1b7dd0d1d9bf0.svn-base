package com.manage.workdate.model.original;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.model.BaseObject;
import com.manage.workdate.model.Workdate;

public class WorkdateAbstract extends BaseObject implements Serializable{
	
	protected Integer id;
	protected Integer version;
	protected Date thedate;
	protected Integer dtype;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Date getThedate() {
		return thedate;
	}

	public void setThedate(Date thedate) {
		this.thedate = thedate;
	}

	public Integer getDtype() {
		return dtype;
	}

	public void setDtype(Integer dtype) {
		this.dtype = dtype;
	}

	@Override
	public boolean equals(Object other) {
		if ( (this == other ) ) return true;
		if ( (other == null ) ) return false;
		if ( !(other instanceof Workdate) ) return false;
		Workdate castOther = ( Workdate ) other; 
		return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
	}

	@Override
	public Serializable getPrimarykey() {
		return id;
	}

	@Override
	public int hashCode() {
		HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());

        return hcb.toHashCode();
	}

	@Override
	public String toString() {
		ToStringBuilder tsb = new ToStringBuilder(ToStringStyle.DEFAULT_STYLE);
		tsb.append("id", id);
		return tsb.toString();
	}

}
