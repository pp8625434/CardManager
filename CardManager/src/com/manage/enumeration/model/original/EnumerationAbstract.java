package com.manage.enumeration.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.base.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.manage.enumeration.model.Enumeration;
import com.manage.user.model.User;

public  class EnumerationAbstract extends BaseObject implements Serializable{

 	protected  Integer id;
	protected  Integer version;
 	protected  String enName;
 	protected  String displayRef;
 	protected  String description;
 	protected  Integer enumerationType = 0;
 	protected  Integer creator;
	protected  List enumerationValues;
	protected  Integer isIndexShow;
	protected  Integer pxorder;

   

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

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	public String getDisplayRef() {
		return displayRef;
	}

	public void setDisplayRef(String displayRef) {
		this.displayRef = displayRef;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getEnumerationType() {
		return enumerationType;
	}

	public void setEnumerationType(Integer enumerationType) {
		this.enumerationType = enumerationType;
	}

	public Integer getCreator() {
		return creator;
	}

	public void setCreator(Integer creator) {
		this.creator = creator;
	}

	public List getEnumerationValues() {
		return enumerationValues;
	}

	public void setEnumerationValues(List enumerationValues) {
		this.enumerationValues = enumerationValues;
	}

	public Integer getIsIndexShow() {
		return isIndexShow;
	}

	public void setIsIndexShow(Integer isIndexShow) {
		this.isIndexShow = isIndexShow;
	}

	public Integer getPxorder() {
		return pxorder;
	}

	public void setPxorder(Integer pxorder) {
		this.pxorder = pxorder;
	}

public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof Enumeration) ) return false;
		 Enumeration castOther = ( Enumeration ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());

        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("enName", this.enName)
		.append("displayRef", this.displayRef)
		.append("description", this.description)
		.append("enumerationType", this.enumerationType);
      
        return sb.toString();
   }

@Override
public Serializable getPrimarykey() {
	return id;
}

   
 

}