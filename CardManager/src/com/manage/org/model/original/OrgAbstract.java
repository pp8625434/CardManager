package com.manage.org.model.original;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.model.BaseObject;
import com.manage.enumeration.model.Enumeration;
import com.manage.org.model.Org;

public abstract class OrgAbstract extends BaseObject implements Serializable {

	protected Integer id;
	protected String name;
	protected String description;
	protected Integer parent;
	protected String parentName;
	protected Integer deleted;
	protected String orgType;
	protected Integer clickNum;
	protected Integer creator;
	protected String address;
	protected Integer version;
	protected Date createDate;
	protected String  creatorName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getParent() {
		return parent;
	}

	public void setParent(Integer parent) {
		this.parent = parent;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public Integer getDeleted() {
		return deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

	public String getOrgType() {
		return orgType;
	}

	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}

	public Integer getClickNum() {
		return clickNum;
	}

	public void setClickNum(Integer clickNum) {
		this.clickNum = clickNum;
	}

	public Integer getCreator() {
		return creator;
	}

	public void setCreator(Integer creator) {
		this.creator = creator;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public boolean equals(Object other) {
		if ( (this == other ) ) return true;
		if ( (other == null ) ) return false;
		if ( !(other instanceof Enumeration) ) return false;
		Org castOther = (Org) other;

		return ((this.getId() == castOther.getId()) || (this.getId() != null && castOther.getId() != null && this.getId().equals(castOther.getId())));
	}

	public Serializable getPrimarykey() {
		return id;
	}

	public int hashCode() {
		HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
		hcb.append(getId());
		return hcb.toHashCode();
	}

	public String toString() {
		ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
        sb.append("id", this.id)
		  .append("name", this.name)
		  .append("description", this.description)
		  //.append("parentOrg", this.parentOrg.name)
		  .append("deleted", this.deleted)
		  .append("orgType", this.orgType)
		  .append("clickNum", this.clickNum)
		  .append("address", this.address)
		  .append("version", this.version)
		  .append("createDate", this.createDate);
      
        return sb.toString();
	}

	public String getCreatorName() {
		return creatorName;
	}

	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}
}
