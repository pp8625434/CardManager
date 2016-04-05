package com.base.framework.model;

import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

import org.apache.commons.beanutils.PropertyUtils;
import com.base.util.BeanUtil;



public abstract class BaseObject implements Serializable {  
	
	private boolean dirty = false;
	
    public abstract String toString();
    
    public abstract boolean equals(Object o);
    
    public abstract int hashCode();
    
    public abstract Serializable getPrimarykey();
    
    public abstract void setVersion(Integer version);
    
    public abstract Integer getVersion();
    
    public BaseObject getParentEntity(){
		return null;
	}
    
    public void setParentEntity(BaseObject parent){}

	/**
	 * ���ö�������ݿ��е���Ӧ��¼,ֻҪ��һ����ͬ�򷵻�true,���򷵻�false
	 * @return
	 */
	public boolean isDirty() {
		return dirty;
	}

	public void setDirty(boolean dirty) {
		this.dirty = dirty;
	}
    
	/**
	 * ����������ʵ���������,������κ�һ��Ϊdirty�򷵻�true
	 * @return
	 */
	public boolean isCascadeDirty(){
		if(this.dirty)
			return true;
		PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(this);
		for (PropertyDescriptor descriptor : properties) {
			Class clzz = descriptor.getPropertyType();
			
			//����Ǽ������;����
			if(!Collection.class.isAssignableFrom(clzz))
				 continue;
			
			String propertyName = descriptor.getName();
			Object collObj = BeanUtil.getPropertyValue(this, propertyName);
			
			//����Ǽ������͵���Ϊ�������
			if(collObj == null)
				continue;
			
			//�������м���(��ʵ��),������κ�һ������true�򷵻�true
			Collection coll = (Collection)collObj;
			for (Iterator i = coll.iterator(); i.hasNext();) {
				BaseObject element = (BaseObject) i.next();
				if(element.dirty)
					return true;
			}
		}
		
		return false;
	}
	
}
