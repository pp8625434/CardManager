package com.base.framework.security.model.original;

import java.io.Serializable;

import com.base.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.security.model.Role;

public abstract class RoleAbstract extends BaseObject implements Serializable{

 	protected  Integer id;
	protected  Integer version;
 	protected  String name;
 	protected  String displayRef;
 	protected  String description;
 	protected  Integer createor;
 	protected  Integer isglob;

    public Integer getIsglob() {
		return isglob;
	}

	public void setIsglob(Integer isglob) {
		this.isglob = isglob;
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
    


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof Role) ) return false;
		 Role castOther = ( Role ) other; 
		 
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
		.append("name", this.name)
		.append("displayRef", this.displayRef)
		.append("description", this.description);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public Integer getCreateor() {
		return createor;
	}

	public void setCreateor(Integer createor) {
		this.createor = createor;
	}

}