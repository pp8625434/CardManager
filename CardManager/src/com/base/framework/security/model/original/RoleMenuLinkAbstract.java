package com.base.framework.security.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.base.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.security.model.Role;
import com.base.framework.security.model.RoleMenuLink;
import com.manage.menu.model.MenuLink;

public abstract class RoleMenuLinkAbstract extends BaseObject implements Serializable{

 	protected  Integer id;
	protected  Integer version;
// 	protected  Role role;
// 	protected  MenuLink menuLink;
	protected Integer role;
	protected Integer menuLink;

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
    /*
    public Role getRole() {
        return this.role;
    }
    
    public void setRole(Role role) {
        this.role = role;
    }
    public MenuLink getMenuLink() {
	return menuLink;
}

public void setMenuLink(MenuLink menuLink) {
	this.menuLink = menuLink;
}
    */
   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof RoleMenuLink) ) return false;
		 RoleMenuLink castOther = ( RoleMenuLink ) other; 
		 
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



	public void setRole(Integer role) {
		this.role = role;
	}
	
	public void setMenuLink(Integer menuLink) {
		this.menuLink = menuLink;
	}

	public Integer getRole() {
		return role;
	}

	public Integer getMenuLink() {
		return menuLink;
	}



}