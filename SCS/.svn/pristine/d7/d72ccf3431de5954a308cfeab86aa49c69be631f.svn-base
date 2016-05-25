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
import com.manage.enumeration.model.EnumerationValue;
import com.manage.user.model.User;

public abstract class EnumerationValueAbstract extends BaseObject implements Serializable{

 	protected  Integer id;
	protected  Integer version;
 	protected  String valueName;
 	protected  String displayRef;
 	protected  String description;
 	protected  Enumeration enumeration;
 	protected  Integer creator;
 	protected  Integer pxorder;

    public Integer getPxorder() {
		return pxorder;
	}

	public void setPxorder(Integer pxorder) {
		this.pxorder = pxorder;
	}

	public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
     public Integer getVersion() {
        return this.version;
    }
    
    public void setVersion(Integer version) {
        this.version = version;
    }
    
    public String getValueName() {
        return this.valueName;
    }
    
    public void setValueName(String valueName) {
        this.valueName = valueName;
    }
    
    public String getDisplayRef() {
        return this.displayRef;
    }
    
    public void setDisplayRef(String displayRef) {
        this.displayRef = displayRef;
    }
    
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public Enumeration getEnumeration() {
        return this.enumeration;
    }
    
    public void setEnumeration(Enumeration enumeration) {
        this.enumeration = enumeration;
    }
    
   public BaseObject getParentEntity(){
	   return this.enumeration;
   }
   
   public void setParentEntity(BaseObject parent){
	   this.enumeration = (Enumeration)parent;
   }
   
    public Integer getCreator() {
        return this.creator;
    }
    
    public void setCreator(Integer creator) {
        this.creator = creator;
    }
    


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnumerationValue) ) return false;
		 EnumerationValue castOther = ( EnumerationValue ) other; 
		 
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
		.append("valueName", this.valueName)
		.append("displayRef", this.displayRef)
		.append("description", this.description)
        .append("pxorder",this.pxorder);
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }

}