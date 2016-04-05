package com.manage.menu.model.original;

import java.io.Serializable;

import com.base.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;


public abstract class UrlAbstract extends BaseObject implements Serializable{

 	protected  Integer id;
	protected  Integer version;
 	protected  Integer mlid;
 	protected  String mlurl;


   public boolean equals(Object other) {
		 
		 return  ( (this == other ) || (other == null ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());

        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("mlid", this.mlid)
		.append("mlurl", this.mlurl);
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }

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

	public Integer getMlid() {
		return mlid;
	}

	public void setMlid(Integer mlid) {
		this.mlid = mlid;
	}

	public String getMlurl() {
		return mlurl;
	}

	public void setMlurl(String mlurl) {
		this.mlurl = mlurl;
	}


}