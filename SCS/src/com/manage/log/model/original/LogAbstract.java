package com.manage.log.model.original;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.model.BaseObject;
import com.manage.log.model.Log;

public abstract class LogAbstract extends BaseObject implements Serializable{

	protected  String  id;
 	
	protected  Integer version;
			
 	protected  Integer type;  // 鎿嶄綔绫诲瀷锛堝-630銆佸垹-631銆佹敼-632锛�
			
 	protected  Integer function;  // 妯″潡ID
 	
 	protected  Integer functionId; // 鏁版嵁ID
 	
 	protected  String  functionName; // 鏁版嵁鍚嶇О	
 	
 	protected  Integer creator;   // 鎿嶄綔浜篒D
 	
 	protected  String  creatorName; // 鎿嶄綔浜哄悕绉�
 	
 	protected  Date    createDate;  // 鎿嶄綔鏃堕棿
 	
 	protected  String  message;
 	
 	protected String ipAddress;
 	
 	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public Serializable getPrimarykey(){
    		return id;
    }
 	
 	public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
//		 if ( !(other instanceof Discuss) ) return false;
		 Log castOther = ( Log ) other; 
		 
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
		.append("version", this.version)
		.append("type", this.type)
		.append("function", this.function)
		.append("functionId", this.functionId)
		.append("functionName",this.functionName)
		.append("creator", this.creator)
        .append("creatorName", this.creatorName)
        .append("createDate", this.createDate)
        .append("message", this.message)
        .append("ipAddress",this.ipAddress);
      
        return sb.toString();
 	}

 	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}	

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getFunction() {
		return function;
	}

	public void setFunction(Integer function) {
		this.function = function;
	}

	public Integer getFunctionId() {
		return functionId;
	}

	public void setFunctionId(Integer functionId) {
		this.functionId = functionId;
	}

	public String getFunctionName() {
		return functionName;
	}

	public void setFunctionName(String functionName) {
		this.functionName = functionName;
	}

	public Integer getCreator() {
		return creator;
	}

	public void setCreator(Integer creator) {
		this.creator = creator;
	}

	public String getCreatorName() {
		return creatorName;
	}	

	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
