package com.manage.menu.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.base.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.manage.menu.model.Menu;
import com.manage.menu.model.MenuLink;
import com.manage.user.model.User;

public abstract class MenuLinkAbstract extends BaseObject implements Serializable{

 	protected  Integer id;
 	protected  String name;
	protected  Integer version;
 	protected  String linkUrl;
 	protected  String displayRef;
 	protected  String description;
 	protected  Integer authority;
 	protected  Integer orderNum;
 	protected  Integer menuLinkType = new Integer(0);
 	protected  Menu menu;
 	protected  Integer creator;

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
    
    public String getLinkUrl() {
        return this.linkUrl;
    }
    
    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
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
    
    public Integer getOrderNum() {
        return this.orderNum;
    }
    
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }
    
    public Menu getMenu() {
        return this.menu;
    }
    
    public void setMenu(Menu menu) {
        this.menu = menu;
    }
    
   public BaseObject getParentEntity(){
	   return this.menu;
   }
   
   public void setParentEntity(BaseObject parent){
	   this.menu = (Menu)parent;
   }
   
    public Integer getCreator() {
        return this.creator;
    }
    
    public void setCreator(Integer creator) {
        this.creator = creator;
    }

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public Integer getAuthority() {
		return authority;
	}
	
	public void setAuthority(Integer authority) {
		this.authority = authority;
	}
	
	public Integer getMenuLinkType() {
		return menuLinkType;
	}
	
	public void setMenuLinkType(Integer menuLinkType) {
		this.menuLinkType = menuLinkType;
	}

	   public boolean equals(Object other) {
	         if ( (this == other ) ) return true;
			 if ( (other == null ) ) return false;
			 if ( !(other instanceof MenuLink) ) return false;
			 MenuLink castOther = ( MenuLink ) other; 
			 
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
			.append("linkUrl", this.linkUrl)
			.append("displayRef", this.displayRef)
			.append("description", this.description)
			.append("orderNum", this.orderNum);
	      
	        return sb.toString();
	   }

	   public Serializable getPrimarykey(){
	   		return id;
	   }

}