package com.base.framework.security.model.original;

import java.io.Serializable;

import com.base.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.security.model.Role;
import com.base.framework.security.model.UserRole;
import com.manage.user.model.User;

public abstract class UserRoleAbstract extends BaseObject implements Serializable{

 	protected  Integer id;
	protected  Integer version;
 	protected  Integer securityUser;
 	protected  Integer role;
 	protected  Integer isglob;

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
    
    public Integer getRole() {
        return this.role;
    }
    
    public void setRole(Integer role) {
        this.role = role;
    }
    


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof UserRole) ) return false;
		 UserRole castOther = ( UserRole ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());

        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }

	
	public Integer getSecurityUser() {
		return securityUser;
	}
	
	public void setSecurityUser(Integer securityUser) {
		this.securityUser = securityUser;
	}

	public Integer getIsglob() {
		return isglob;
	}

	public void setIsglob(Integer isglob) {
		this.isglob = isglob;
	}

}