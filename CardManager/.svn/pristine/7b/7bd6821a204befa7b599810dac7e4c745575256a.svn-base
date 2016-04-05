package com.manage.merchant.model.original;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import com.base.framework.model.BaseObject;
import com.manage.merchant.model.Merchant;

public class MerchantAbstract extends BaseObject implements Serializable{
	
	protected Integer id;
	protected Integer version;
	protected String mname;
	protected String mdesc;
	protected String leader;
	protected String phone;
	protected String address;
	protected Integer isdeleted;
	
	
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

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMdesc() {
		return mdesc;
	}

	public void setMdesc(String mdesc) {
		this.mdesc = mdesc;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getIsdeleted() {
		return isdeleted;
	}

	public void setIsdeleted(Integer isdeleted) {
		this.isdeleted = isdeleted;
	}

	@Override
	public boolean equals(Object other) {
		if ( (this == other ) ) return true;
		if ( (other == null ) ) return false;
		if ( !(other instanceof Merchant) ) return false;
		Merchant castOther = ( Merchant ) other; 
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
		tsb.append("name",mname);
		return tsb.toString();
	}

}
